      SUBROUTINE SETFORM
C
C     Routine for SCHED, called by SETREC, to set the recording
C     formats for the setup groups.
C
C     The nastiest recording parameter choice is deciding on the
C     format to use, which amounts to choosing the fan out.  This
C     cannot be done individually per setup group because of
C     the following global constraints.
C
C     1.  Try to avoid changing the number of heads in use at a station
C         between scans with VLBA and Mark IV systems.  This would
C         be ok with disk systems.  This constraint is driven by
C         the tape usage accounting nightmare that variations in 
C         head use would cause.
C
C     2.  For some correlators (Socorro and JIVE), the track bit rate
C         should be the same for all stations in a scan - which here
C         means for all setup groups in a setup file.  This has the
C         additional impact of insuring a constant speedup factor.
C         Treat all correlators as if they have this constraint.
C
C     3.  Don't use more than one drive or head unless necessary.
C         But if any scan at a station uses more than one, do so
C         for all scans (basically the same as the constant heads
C         constraint).  
C
C     4.  For multiple drive/head observations, allow stations 
C         without full resources to record reduced bandwidth by 
C         reducing the number of channels.  Actually this can
C         be done for any setup where a station has inadequate
C         resources.  Just cut NCHAN for the setup group.  Do this
C         after setting all the formats to reduce confusion.  But
C         during the setting, try hard to stay on one drive or head.
C
C     5.  Eventually there will be systems (eg MARK5B) that don't
C         care about speed up factors and number of tracks.  I think
C         they will be easier.
C
C     Trying to conform to the above constraints is a messy problem.
C     Here is the scheme that will be used:
C
C     1.  Go through forcing any formats where there is no choice.
C         This is done in SETFMT and the routines it calls.
C         A.  Tape or Mark 5A bit rates of 256 Mbps or more.
C         B.  Samplerate of 32 Msamp/sec.
C         C.  Samplerate of 2 Msamp/sec or less.
C         D.  While at it, cut the bandwidth at stations that 
C             can't handle the request (limited heads/drives/bbcs)
C         E.  Stop if all formats are set.
C
C     2.  For each setup file, if any group has fixed bit rate/track,
C         force the others in the group.  Done in FSPREAD.
C
C     3.  Try to force all setups to use the same number of tracks.
C         This assumes all stations have the same number of tracks 
C         available.  This should be ok since the single drive/head
C         stations have not been dealt with yet.  Later they will
C         be forced to use no more than 32 tracks.  Done in FSPREAD.
C
C     4.  For all unfixed setup groups, try to find an appropriate
C         set of track bit rates that will give an average speedup
C         factor near 2.  Adjust to conform to the constant bit rate
C         per track in a setup file and constant number of tracks
C         at a station.  
C
C     This should produce a consistent set of setups that gives
C     a speed up of as close as possible to 2 for current standard
C     correlation.
C
C     Confused yet?  I hope I'm not still!
C
      INCLUDE   'sched.inc'
      INCLUDE   'schset.inc'
C
      INTEGER           KS, ISETF, ISCN, ISTA
      REAL              MAXBPS
      LOGICAL           OK, NEEDFMT(MSET)
      LOGICAL           ANYLEFT, ANYLFT2
C -------------------------------------------------------------------- 
      IF( DEBUG ) CALL WLOG( 0, 'SETFORM: Starting' )
C
C     Initialize the format related variables.  This helps prevent
C     problems on restarts.  Initialize TPMODE to the setup file
C     value.
C
      DO KS = 1, NSET
         SPEEDUP(KS) = 0.0
         FANOUT(KS) = 0.0
         TAPEMODE(KS) = TPMODE(KS)
      END DO
C
C     First, set as much of the format as possible from the 
C     information provided in the setup file and catalogs.
C
C     If the format was not specified at all, set the default
C     general type based on the type of DAR at the station.
C     Actually, this is not always right.  If the recorder
C     is an S2, that needs to be the format.
C
      DO KS = 1, NSET
         IF( FORMAT(KS) .EQ. ' ' ) THEN
            IF( RECORDER(ISETSTA(KS)) .EQ. 'S2' ) THEN
               FORMAT(KS) = 'S2'
            ELSE
               FORMAT(KS) = DAR(ISETSTA(KS))
            END IF
C
C           Don't get goofed up by some of the VLBA varients.
C
            IF( FORMAT(KS) .EQ. 'VLBAG' ) FORMAT(KS) = 'VLBA'
            IF( FORMAT(KS) .EQ. 'VLBA4' ) FORMAT(KS) = 'MKIV'
         END IF
      END DO
C
C     Flag VLBA and MKIV format setup groups.  This is used by
C     various other routines besides this one.  Get the total
C     bit rate nice and early.
C
      DO KS = 1, NSET
         VLBAMKIV(KS) = FORMAT(KS)(1:4) .EQ. 'VLBA' .OR. 
     1                  FORMAT(KS)(1:4) .EQ. 'MKIV'
         RECUSED(KS) = .FALSE.
         TOTBPS(KS)  = NCHAN(KS) * SAMPRATE(KS) * BITS(1,KS)
      END DO
C
C     Go through scans and stations to determine which 
C     format groups were actually used for recording and to get
C     the maximum bit rate used in the experiment in VLBA and
C     MKIV formats.  Those are the ones that need correlated formats.
C     From those determine if two head or fast track (16 Mbps/track)
C     observations are needed for VLBA and MKIV systems.
C
      MAXBPS = 0
      DO ISCN = 1, NSCANS
         DO ISTA = 1, NSTA
            IF( STASCN(ISCN,ISTA) ) THEN
               KS = NSETUP(ISCN,ISTA)
               ISETF = ISETNUM(KS)
               IF( ( VLBAMKIV(KS) .OR. FORMAT(KS) .EQ. 'MARKIII' ) .AND.
     1               .NOT. NOREC(ISCN) ) THEN
                  MAXBPS = MAX( MAXBPS, TOTBPS(KS) )
               END IF
               IF( .NOT. NOREC(ISCN) ) THEN
                  RECUSED(KS) = .TRUE.
               END IF
            END IF
         END DO
      END DO
      TWOHEAD = MAXBPS .GT. 256.0
      FASTTRK = MAXBPS .GT. 512.0
C
C     Warn user about TWOHEAD and set HEADMODE for the wide band
C     modes.
C
      CALL TWOHDSET
C
C     Go through all setup groups setting the format parameters
C     (FORMAT, SPEEDUP, FANOUT, and TAPEMODE) that can be set at
C     this time.  After this, NEEDFMT can be used to tell if 
C     this format still needs to be set.  For any setups where the
C     format details can be set independently of other setups, this
C     will finish the job.
C
      ANYLEFT = .FALSE.
      DO KS = 1, NSET
         CALL SETFMT( KS, 0.0, OK )
         NEEDFMT(KS) = .NOT. OK
         IF( NEEDFMT(KS) ) ANYLEFT = .TRUE.
      END DO
C
C     For some systems (VLBA, MkIV), the track bit rate must be
C     constant across a setup file and the number of channels
C     should be constant in time.  This allows even one forced
C     format to cause the rest to be set.  Set any formats that can
C     be set because of these constraints.  FSPREAD does one pass
C     of spreading the track bit rate across setup files, and then
C     spreading the number of tracks across setup files by station.
C
      IF( ANYLEFT ) THEN
         CALL FSPREAD( NEEDFMT )
         ANYLFT2 = .FALSE.
         DO KS = 1, NSET
            IF( NEEDFMT(KS) ) ANYLFT2 = .TRUE.
         END DO
      END IF
      ANYLEFT = ANYLFT2
C
C     If the above still did not force the outcome for all setups,
C     try to pick an option that gives a speedup factor averaging
C     about 2.  This was painful to program and I hope I got it ok,
C     but keep an eye on it.
C
      IF( ANYLEFT ) THEN
         CALL FMTPICK( NEEDFMT )
      END IF
C
C     That should be the end of picking any recording formats.  Check.
C
      DO KS = 1, NSET
         IF( RECUSED(KS) .AND. NEEDFMT(KS) ) THEN
            CALL WLOG( 1, 'SETFORM:  Setup file below has format not '
     1          // 'fully specified when it should be.' )
            CALL ERRSET( KS )
         END IF
      END DO
C
C     Drop the number of channels in any formats for stations that don't
C     have adequate resources.
C
      DO KS = 1, NSET
         IF( VLBAMKIV(KS) .AND. RECUSED(KS) .AND. .NOT. NEEDFMT(KS) )
     1       THEN
C
C           Look for just too much bandwidth.
C
            IF( ( TBPS(KS) .GT. 8.0 .AND. TOTBPS(KS) .GT. 1024.0 ) .OR.
     1         ( TBPS(KS) .LE. 8.0 .AND. TOTBPS(KS) .GT. 512.0 ) ) THEN
               CALL WLOG( 1, 'SETFORM: Too much bandwidth requested.' )
               CALL ERRSET( KS )
            END IF
C
C           Look for inappropriate bit rates for the format.
C
            IF( TBPS(KS) .GT. 8.0 .AND. 
     1          FORMAT(KS)(1:4) .NE. 'MKIV' ) THEN
               CALL WLOG( 1, 'SETFORM: Attempted to set track bit ' //
     1             'rate higher than 8 Mbps for inappropriate format.' )
               CALL ERRSET( KS )
            END IF
C
C           Look for too much bandwidth for stations of reduced
C           capability.
C
            IF( TOTBPS(KS) / TBPS(KS) .GT. 32 .AND. 
     1          STNDRIV(ISETSTA(KS)) * NHEADS(ISETSTA(KS)) .LE. 1 ) THEN
C
               MSGTXT = ' '
               WRITE( MSGTXT, '( 4A )' )
     1            'SETFORM: Reducing bandwidth for ', SETSTA(1,KS), 
     2            ' in setup file: ', SETFILE(ISETNUM(KS))
               CALL WLOG( 1, MSGTXT )
               CALL WLOG( 1, '        Not enough drives or heads.' )
C
               NCHAN(KS) = NCHAN(KS) / 2
               TOTBPS(KS) = TOTBPS(KS) / 2
               TOTBW(KS) = TOTBW(KS) / 2
            END IF
         END IF
      END DO
C
C     Now set formats for setups only used in non-recording scans.
C     These will basically be dummy values, but set anyway.  Try
C     to match the fan-outs for following scans.
C
      CALL SETNOREC( NEEDFMT )
C
C     This is by no means done.
C
      RETURN
      END

