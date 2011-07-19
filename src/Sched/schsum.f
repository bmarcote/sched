      SUBROUTINE SCHSUM( RESTART )
C
C     This routine generates a summary listing.
C
      INCLUDE 'sched.inc'
      INCLUDE 'schset.inc'
C
      INTEGER     I, ISCN, ISTA, KSTA, JSTA, KS, JS, ICH, LEN1
      INTEGER     YEAR, DAY, DOY, JD, MONTH, NTPS
      INTEGER     NSCHED, MJD
      LOGICAL     RESTART, GOTTPS, GOTSCN
      LOGICAL     PRTHEAD, PRTED(MSET), SAMESET, DUPSET
      DOUBLE PRECISION   STOP
      CHARACTER   DNAME*3, MNAME*3
      CHARACTER   FF*1, PDATE*50
      INTEGER     LENGTH
      REAL        VEXVER, VXVER, PLTVER, JPVER
      CHARACTER   PGVER*8, LINE*128, EXTIME*24
C-----------------------------------------------------------------------
      IF( DEBUG ) CALL WLOG( 0, 'SCHSUM: Starting.' )
      FF = CHAR(12)
      DO KS = 1, MSET
         PRTED(KS) = .FALSE.
      END DO
C
C     Set up a date line.
C
      CALL TIMEJ( STOPJ(1), YEAR, DOY, STOP )
      MONTH = 1
      DAY = DOY
      CALL TDATECW( YEAR, MONTH, DAY, JD, MNAME, DNAME )
      MJD = INT( JD - 2400000.5 )
      WRITE( PDATE, '( A, I3, A, A3, I4, 1X, A3, I5, A, I6 )' )
     1         'Day ', DOY, ' is ',  DNAME, DAY, MNAME, YEAR,
     2    '   MJD ', MJD
C
C     Open the summary file and write some initial stuff.
C
      CALL SUMOPE( RESTART, PDATE, MJD )
C
C     Get the number of scans actually scheduled, taking into
C     account those that might have been skipped.
C
      NSCHED = 0
      DO ISCN = SCAN1, SCANL
         GOTSCN = .FALSE.
         DO ISTA = 1, NSTA
            IF( STASCN(ISCN,ISTA) ) GOTSCN = .TRUE.
         END DO
         IF( GOTSCN) NSCHED = NSCHED + 1
      END DO
C
C     Add some experiment summary information.  This will come
C     out just before of the setup file information.
C
      WRITE( ISUM, '( 1X, /, 1X, /, 1X, /, 1X )' )
      WRITE( ISUM, '( A )' ) 'EXPERIMENT SUMMARY:'
      WRITE( ISUM, '( A, I6 )' )  
     1        '  Number of input scans:     ', NSCANS
      WRITE( ISUM, '( A, I6 )' )  
     1        '  Number of scans scheduled: ', NSCHED
      WRITE( ISUM, '( A, I6 )' )
     1        '  Number of stations:        ', NSTA
      WRITE( ISUM, '( A, I6 )' )
     1        '  Number of sources input:   ', NSRC
      WRITE( ISUM, '( A, I6 )' )
     1        '  Number of setup files used:', NSETF
      WRITE( ISUM, '( 1X )' )
C
C     Write some information about each station.  Much was gathered
C     in SCHTIM.  Note NOTAPE really means no recordings.
C
C     Do disk stations.  (Tape station summary removed.)
C
      IF( .NOT. NOTAPE ) THEN
         WRITE( ISUM, '( 1X, /, A, /, A )' )  
     1       ' Station summaries (disk stations): ',
     2       '  Station  Control   Scans   Scan   Record  Record' //
     3       '   Gbytes     Formatter       Sync '
         WRITE( ISUM, '( T29, A, T64, A )' )
     1       'Hours   Hours   Scans', 'Reconfigures    Hours  '

         DO ISTA = 1, NSTA
            IF( USEDISK(ISTA) ) THEN
               IF( DAR(STANUM(ISTA))(1:4) .EQ. 'VLBA' ) THEN
                  WRITE( ISUM, '( 2X, A8, 2X, A5, 2X, I6, F8.2, F8.2,
     1              I8, 2X, F8.0, I9, A, I3, F12.2 )' )
     2              STANAME(ISTA), CONTROL(STANUM(ISTA)), NSTSC(ISTA), 
     3              SCNHR(ISTA), TPHR(ISTA), TPSCN(ISTA), TGBYTES(ISTA),
     4              NRECONF(1,ISTA),  '/', NRECONF(2,ISTA),
     5              TTSYNC(ISTA) * 24.0
               ELSE
                  WRITE( ISUM, '( 2X, A8, 2X, A5, 2X, I6, F8.2, F8.2,
     1              I8, 2X, F8.0, I13, F12.2 )' )
     2              STANAME(ISTA), CONTROL(STANUM(ISTA)), NSTSC(ISTA), 
     3              SCNHR(ISTA), TPHR(ISTA), TPSCN(ISTA), TGBYTES(ISTA),
     4              NRECONF(1,ISTA), TTSYNC(ISTA) * 24.0
               END IF
            END IF
         END DO

      ELSE
         WRITE( ISUM, '( A, /, A )' )  ' Station summaries: ',
     1       '  Station  Control   Scans '
         DO ISTA = 1, NSTA
            WRITE( ISUM, '( 2X, A8, 2X, A5, 2X, I6 )' ) 
     1          STANAME(ISTA), CONTROL(STANUM(ISTA)), NSTSC(ISTA) 
         END DO
      END IF
C
C     Explain Sync Hours.
C
      WRITE( ISUM, '( 1X )' )
      WRITE( ISUM, '( A )' )
     1      'Notes on the station summaries: '
      WRITE( ISUM, '( 1X )' )
      WRITE( ISUM, '( A, /, A, /, A, /, A, /, A )' )
     1      '    "Record Scans" are periods of recording with no '//
     2      'gap.  The Mark5A disk systems ', 
     3      '    have a limit of 1024 such scans.  There are often '//
     4      'multiple projects on a disk pack.',
     5      '    Try to keep above about 6 GB per record scan by '//
     6      'using MINPAUSE and PRESTART ',
     7      '    to prevent short gaps.  However, also try to '//
     8      'prevent record scans of more than', 
     9      '    an hour to minimize risk to data from playback '//
     A      'problems.'
      WRITE( ISUM, '( 1X )' )
      WRITE( ISUM, '( A, /, A)' )
     1      '    "Sync Hours" is on-source, in-scan time ' //
     2      'lost during correlation to resyncing',
     3      '    recordings.  Resyncs follow tape stoppages '//
     4      'and formatter reconfigures.'
      WRITE( ISUM, '( 1X )' )
      WRITE( ISUM, '( A, /, A, /, A )' )
     1      '    For VLBA DAR stations, total reconfigures and ' //
     2      'reconfigures during recording are shown.',
     3      '    Reconfigures during recording can cause ' //
     4      'slow correlator sync.',
     5      '    Any reconfigure can slow sync at JIVE.'
C
C     Set up a warning about early tape starts.
C
      NTPS = 0
      GOTTPS = .FALSE.
      DO ISCN = SCAN1, SCANL
         DO ISTA = 1, NSTA
            IF( TPSTART(ISCN,ISTA) .NE. 0.D0 ) THEN
               GOTTPS = .TRUE.
               NTPS = NTPS + 1
            END IF
         END DO
      END DO
      IF( GOTTPS ) THEN
         WRITE( ISUM, '( 1X )' )
         WRITE( ISUM, '( 2A, I5, A )' ) '    Recording started',
     1         ' before scan start time ', NTPS, 
     2         ' times.  See PRESTART and MINPAUSE.'
         WRITE( ISUM, '( 2A )' )
     1         '    They may have been kept running through ',
     2         'short scan gaps.'
         WRITE( ISUM, '( 2A )' )
     1         '    The number can be large because each ',
     2         'station/scan combination counts.'
      END IF
      WRITE( ISUM, '( 1X, /, 1X, / )' )
C
C     Write the setup information for setup groups that were used.
C     Avoid repeats of identical setups, but let the user know which
C     are identical.
C
      IF( NOSET ) THEN
         WRITE( ISUM, '( 1X, /, 1X, /, A, /, A )' )
     1    'NOSETUP specified.  No setups used. ',
     2    '        Cannot write telescope control files. '
      ELSE
         DO KS = 1, NSET
            IF( .NOT. PRTED(KS) ) THEN
               IF( KS .LT. NSET ) THEN
                  PRTHEAD = .TRUE.
                  LINE = ' '
                  IF( KS .LT. NSET ) THEN
                     DO JS = KS + 1, NSET
C
C                       If setups KS and JS are the same except for
C                       the station, note that to user and flag
C                       JS not to be printed in the future.  SAMESET
C                       doesn't test recording medium, so test that
C                       too.  Do call tape and disk stations the same
C                       for non-recording setups (eg pointing).
C
                        KSTA = ISCHSTA(ISETSTA(KS))
                        JSTA = ISCHSTA(ISETSTA(JS))
                        DUPSET = SAMESET( KS, JS ) .AND.
     1                   ( ( .NOT. RECUSED(KS) .AND. .NOT. RECUSED(JS) )
     2                   .OR. USEDISK(KSTA) .EQV. USEDISK(JSTA) )
C
                        IF( DUPSET ) THEN
C
                           PRTED(JS) = .TRUE.
C
C                          Keep track of which got a full listing.
C                          To this point, LISTKS(KS) was set to KS.
C                          For the printed one (KS here maybe), this
C                          doesn't change.  For JS, set to KS if dup.
C
                           LISTKS(JS) = KS
C
                           IF( PRTHEAD ) THEN
                              WRITE( ISUM, '( 1X,/,1X,/, A, A, I4, A )')
     1                          'The following setup groups ',
     2                          'are the same as group', KS, ' below.'
                              PRTHEAD = .FALSE.
                           END IF
C
C                          Deal with a need for more than one line.
C
                           ICH = LEN1(LINE) + 1
                           IF( ICH .GT. 65 ) THEN
                              WRITE( ISUM, '( A )' ) LINE(1:ICH-1)
                              ICH = 1           
                              LINE = ' '
                           END IF
C
C                          Add this station to the line.
C
                           WRITE( LINE(ICH:ICH+12), '( I4, A, A )' )
     1                          JS, ':', SETSTA(1,JS)
                        END IF
                     END DO
                  END IF
C
C                 Write out any accumulated stations in LINE.
C
                  ICH = LEN1( LINE )
                  IF( ICH .GT. 2 ) THEN
                     WRITE( ISUM, '( A )' ) LINE(1:ICH)
                  END IF
C
               END IF
C
C              Write the setup file details if this one needs it.
C
               CALL PRTSET( KS, ISUM )
               PRTED(KS) = .TRUE.
C
            END IF
         END DO
      END IF
C
C     Write the main scan listings.
C
      CALL SUMSCN( PDATE )
C
C     Produce a summary of the range of times and total bytes
C     at each station.  Versions before Feb. 2008 made a summary
C     of tape change times here, but that has been removed/modified.
C
      IF( VLBITP ) WRITE( ISUM, '( A )' ) FF
      IF( VLBITP .AND. .NOT. NOSET ) THEN
         CALL TPSUM( .TRUE. )
      END IF
C
C     Add a source list including one in a format for addition to
C     the correlator data base.
C
      CALL SRCLST( ISUM, 2 )
C
C     Note the configuration breaks for generating correlator blocks.
C
      CALL CORBLK
C
C     Add correlator parameters in format for OMS.
C
      CALL OMSOUT( RESTART )
C
C     Write the available catalog versions.
C
      WRITE( ISUM, '( 1X, /, 1X, /, A )' )
     1   'Catalogs: '  
C
      WRITE( ISUM, '( A, A / A, A )' )
     1   '  Station:   ', STAFILE(1:LEN1(STAFILE)),
     2   '                 Version:  ', STVER(1:LEN1(STVER))
      WRITE( ISUM, '( A, A / A, A )' )
     1   '  Location:  ', LOCAFILE(1:LEN1(LOCAFILE)), 
     2   '                 Version:  ', LOCAVER(1:LEN1(LOCAVER))
C
      WRITE( ISUM, '( A, A / A, A )' )
     1   '  Frequency: ', FREQFILE(1:LEN1(FREQFILE)),
     2   '                 Version:  ', FREQVER(1:LEN1(FREQVER))
C
      WRITE( ISUM, '( A, A / A, A )' )
     1   '  Source:   ', SRCFILE(1:LEN1(SRCFILE)),
     2   '                 Version:  ', SRVER(1:LEN1(SRVER))
      WRITE( ISUM, '( A, A / A, A )' )
     1   '  Source2:  ', SRCFILE2(1:LEN1(SRCFILE2)),
     2   '                 Version:  ', SRVER2(1:LEN1(SRVER2))
C
C     Other external files.
C
      WRITE( ISUM, '( 1X, /, 1X, /, A )' )
     1   'Other external files: '  
C
      WRITE( ISUM, '( A, A )' )
     1   '  Ephemeris: ', EPHFILE(1:LEN1(EPHFILE))
C
      WRITE( ISUM, '( A, A )' )
     1   '  PEAKFILE:  ', PEAKFILE(1:LEN1(PEAKFILE))
C
      WRITE( ISUM, '( A, A )' )
     1   '  MSGFILE:   ', MSGFILE(1:LEN1(MSGFILE))
C
      IF( NSAT .GT. 0 ) THEN
         DO I = 1, NSAT
            WRITE( ISUM, '( A, A )' )
     1      '  SATNAME:   ', SATNAME(I)(1:LEN1(SATNAME(I)))
            WRITE( ISUM, '( A, A )' )
     1      '     SATFILE:   ', SATFILE(I)(1:LEN1(SATFILE(I)))
            WRITE( ISUM, '( A, A )' )
     1      '     KERFILE:   ', KERFILE(I)(1:LEN1(KERFILE(I)))
         END DO
      END IF
C
C     Finish off with the code versions.
C
      WRITE( ISUM, '( 1X, /, 1X, /, A )' )
     1   'Code versions: '  
C
      WRITE( ISUM, '( A, F6.2, 2X, A )' )
     1   '  Release version:          ', VERNUM, 
     2   VERSION(1:LEN1(VERSION))
C
      CALL VXVERS( VXVER, VEXVER )
      WRITE( ISUM, '( A, F5.2 )' )
     1   '  Version of VEX standard:  ', VEXVER
C
      WRITE( ISUM, '( A, F5.2 )' )
     1   '  Version of VEX code:      ', VXVER
C
      CALL PLVER( PLTVER )
      WRITE( ISUM, '( A, F5.2 )' )
     1   '  Version of plot code:     ', PLTVER
C
      CALL JPLVER( JPVER )
      WRITE( ISUM, '( A, F5.2 )' )
     1   '  Version of ephemeris code:', JPVER
C
C     Get the pgplot version.  Note that there is a special
C     version of PGQINF in the Plotstub directory in case
C     pgplot is not available.
C
      CALL PGQINF( 'VERSION', PGVER, LENGTH ) 
      WRITE( ISUM, '( A, A )' )
     1   '  Version of PGPLOT:        ', PGVER(1:LENGTH)
C
C     Write the time of execution.
C
      CALL FDATE( EXTIME )
      WRITE( ISUM, '( 1X, /, A, A )' ) 'This schedule produced on: ',
     1    EXTIME
C
C     Close the summary file.
C
      CLOSE( UNIT=ISUM )
      RETURN
      END
