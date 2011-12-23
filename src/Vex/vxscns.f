      SUBROUTINE VXSCNS
C
C     Routine specific for the VEX extension of SCHED. 
C     By H.J. van Langevelde, JIVE, 130596 
C     Major overhaul to accomodate simplifications
C     in registering freq and pcal changes Huib 210599
C
C     This is the routine that sorts out the main hurdle in 
C     SCHED -> VEX: The fact that FREQ and PCAL can be changed
C     in the schedule section, but require a global $MODE change
C     in VEX. In addition most FREQ changes, imply changes in 
C     PHASE_CAL and sometimes vice versa. 
C     Routine sets up the array MODSCN in VXLINK.INC
C     And calls for the creation of new modes: VXTRAMD
C
C     Dec 2011 RCW:  Configure FORMAT=NONE setups along with
C     the rest.  The VLBA now needs them and they can be ignored
C     when not used at other stations.
C
      INCLUDE 'sched.inc'
      INCLUDE 'schset.inc'
      INCLUDE 'vxlink.inc'
C
      INTEGER OLDSCN, PSETI, OLDIPS, FRSTSCN
      INTEGER VXMDIFP(MFSET,MPSET)
      INTEGER ISCN, ISETFL, IMODE, I, IFS, IPS, J, LEN1, NC
C      INTEGER JSCN, RECSCN
      INTEGER ISTA, NMDORI, VXGTST, ISET
      CHARACTER CALSET*4, CALSCN*4
      LOGICAL SKIPPED
C ----------------------------------------------------------------------
      IF( DEBUG ) CALL WLOG( 1, 'VXSCNS: Starting.' )
C
C     Loop through scans
C
      NMDORI = NMDVEX
      OLDSCN = 0
      OLDIPS = 0
C
C RCW  VXMDIFP is the VEX mode that included a given frequency set 
C      and polarization set.  Note a mode can also include other sets
C      for other stations.
C CR 050106: initialise VXMDIFP
C
      DO I = 1, MFSET
        DO J = 1, MPSET
          VXMDIFP(I,J) = 0
        END DO
      END DO
C
C     Loop through the scans looking for the need for new modes.
C
      DO ISCN = SCAN1, SCANL
C
C        First default IMODE to old mode which equals a setup file
C
C        RCW notes to aid debugging Oct 15, 2011:  
C        NMDORI set above to NMDVEX, the number of vex modes defined
C        so far.
C        MDISFIL is set in VXMODE.  Basically it is set to the setup 
C        file number, but skipping any that are not used.
C        So the following just gets the default VEX mode for the scan.
C
         ISETFL = SETNUM(ISCN)
         IMODE = -1
         DO I = 1, NMDORI
            IF( MDISFIL(I) .EQ. ISETFL ) IMODE = I
         END DO
C
C        Abort if this is not a mode.  This was a rather mysterious 
C        error message when encountered, but it tended to mean that
C        all scans using a setup file were skipped.  Added more 
C        informative messages.  Dec 12, 2012  RCW
C        
         IF( IMODE .LT. 0 ) THEN
            CALL WLOG(1, 'VXSCNS: Unexpected Mode'//
     1           ' encountered ')
            MSGTXT = ' '
            WRITE( MSGTXT, '( A, 3I5 )' ) '  Problem in scan:',
     1          ISCN, SCAN1, SCANL
            CALL WLOG( 1, MSGTXT )
            MSGTXT = ' '
            NC = LEN1(SETFILE(SETNUM(ISCN)))
            WRITE( MSGTXT, '( A, A, A )' ) 
     1          ' Were all scans using setup file ',  
     2          SETFILE(SETNUM(ISCN))(1:NC), ' skipped?'
            CALL ERRLOG( 'VXSCNS: Fix setups' )
         END IF
C
C        Make a pointer from the scan to the VEX mode.
C
         MODSCN(ISCN) = IMODE
C
C        Do nothing if this scan is skipped (like if all antennas
C        are down).  SKIPPED tested below along with FORMAT.
C
         SKIPPED = .TRUE.
         DO ISTA = 1, NSTA
            IF( STASCN(ISCN,ISTA) ) SKIPPED = .FALSE.
         END DO
C
C ------------------------------------------------
C        RCW:  The following test for FORMAT=NONE was deactivated in 
C        Dec 2011 so modes would be defined in all cases.  
C        The code was left here for reference.
C
C        If this Mode uses FORMAT=NONE, then  do nothing more here. This
C        mode can later be replaced with the mode of the previous 
C        recording scan, or can simply be skipped when writing the
C        scans.  Don't do this for single dish VLBA observing for which
C        OBSTYPE='PTVLBA'
C
C        To check the FORMAT, a SCHED setup file is needed.  
C        VXGTXT is a function that returns one of possibly several setups
C        used by the mode.  That means that it would be dangerous to mix
C        format = 'none' with other formats at other stations in the 
C        same scan.  I doubt that is done (RCW  Oct 15, 2011).
C
C         ISET = VXGTST( IMODE )
C         IF( .NOT. SKIPPED .AND. ( FORMAT(ISET)(1:4) .NE. 'NONE' .OR.
C     1        OBSTYP .EQ. 'PTVLBA' ) ) THEN
C  ----------------------------------------------------
         IF( .NOT. SKIPPED ) THEN
C
C          The VEX modes are the same across antennas in a scan, but some
C          antennas may join later, so find the first scan for which the
C          current (scan) mode will be used.  That involves looking at
C          through the stations for the first scan (FSETSCN) in which the
C          current frequency set was used, then taking the minimum of
C          those.  FRSTSCN will be that first scan.  IFS and IPS will
C          be one of the frequency sets and pcal sets used in that first
C          scan for the mode.  Note that they are not the only such sets.
C
           FRSTSCN = MAXSCN + 1
           IPS = 0
           IFS = 0
           DO ISTA = 1, NSTA
              IF( STASCN(ISCN,ISTA) ) THEN
                 IF (FSETSCN(FSETI(ISCN,ISTA)).LT.FRSTSCN) THEN
                    IFS = FSETI(ISCN,ISTA)
                    FRSTSCN = FSETSCN(IFS)
C                   bug fix CR 20051114: make sure ips and ifs get set
C                   to values from the same antenna
                    IPS = PSETI(ISCN,ISTA)
                 END IF
                 IF (IPS.GT.MPSET.OR.IFS.GT.MFSET) THEN
                    CALL ERRLOG('VXSCNS: Too many frequency'//
     .                  ' mode or Pcal changes ')
                    STOP
                 END IF
C
C                I can only assume this was a leftover Huib v75
C
C                 IF (IPS .NE. PSETI(ISCN,ISTA)) THEN
C                    WRITE( MSGTXT, '( A, A, I5 )' ) 'Problem with ',
C     1                  'PCAL in scan ',ISCN
C                    CALL WLOG( 1, MSGTXT )
C                    CALL PRTSCN( ISCN )
C                    CALL ERRLOG('VXSCNS: All telescopes should '//
C     .                  'use similar PCal setup ')
C                    STOP
C                 END IF
              ENDIF
           END DO
C
C          In case no station is recording this could have 
C          resulted in IFS=0, IPS=0
C
           IF( IPS .EQ. 0 ) IPS = 1
           IF( IFS .EQ. 0 ) THEN
              IFS = 1
              FRSTSCN = FSETSCN(IFS)
           END IF
C
C          Account for the telescopes that came in for first time
C          after others.  This only does anything if VXMDIFP has been
C          set, which will it will not be by here on SCAN1, or on 
C          FRSTSCN.  The IF passes the first scan for the late arriving
C          station that uses the current frequency set.  It doesn't seem
C          to worry about pcal.  It sets the station dependent MODSET
C          (the base setup group for the station/scan) to the value for 
C          this scan and sets VXMDIFP for this scan (set earlier)
C          and station dependent frequency set/pcal set combination to
C          the value used for other stations, which are set when the
C          new mode is created.
C
           DO ISTA = 1, NSTA
              IF( STASCN(ISCN,ISTA) ) THEN  
                 IF (VXMDIFP(IFS,IPS) .GT. 0 .AND. 
     .               FSETSCN(FSETI(ISCN,ISTA)).NE.FRSTSCN .AND. 
     .               FSETSCN(FSETI(ISCN,ISTA)).EQ.ISCN ) THEN
                    IF( DEBUG ) THEN
                       MSGTXT = ' '
                       WRITE( MSGTXT, '( A, A, A, I3 )' ) 
     .                     'VXSCNS: Telescope: ', STANAME(ISTA),
     .                     ' joins mode set in scan: ', 
     .                     FSETSCN(FSETI(ISCN,ISTA))
                       CALL WLOG( 1, MSGTXT )
                    END IF
                    MODSET(ISTA,VXMDIFP(IFS,IPS)) = MODSET(ISTA,IMODE)
C
C                   set VXMDIFP and MODSET for the new station's IFS and IPS
C                   (bug fix, CR 20051005)
C
                    VXMDIFP(FSETI(ISCN,ISTA), PSETI(ISCN,ISTA)) =
     1                          VXMDIFP(IFS,IPS)
C
                 END IF
              END IF
           END DO
C
C          Deal with a totally new mode.  This is the main point of this
C          routine.  Remember IFS, IPS are set for one good value, but
C          it is for just one of the stations.  A problem is that IFS, 
C          IPS could be for the first scan unmodified or could be 
C          modified by DOPPLER, FREQ, BW etc...
C
           IF( VXMDIFP(IFS,IPS) .EQ. 0 ) THEN
C
              CALSET = SPCAL(FSETKS(IFS))
              CALSCN = PSPCAL(IPS)
              CALL UPCASE(CALSET)
              CALL UPCASE(CALSCN)
              IF( DEBUG ) THEN
                 MSGTXT = ' '
                 WRITE( MSGTXT, '( A, I3 )' )
     .               'VXSCNS: Unused or new mode in scan ',ISCN
                 CALL WLOG( 1, MSGTXT )
              END IF
C
C             Look for the case when FREQ, BW, and PCAL are not changed
C             with main scan inputs (the setup values are used).
C
              IF( FREQ(1,FRSTSCN).LT.1E-6 .AND. 
     .            BW(1,FRSTSCN).LT.1E-6 .AND. 
     .            CALSET .EQ. CALSCN ) 
     .            THEN
C     
C                This case does not involve FREQ or BW so it is the
C                original mode for the setup.
C                Must set all other telescopes too
C                A station that uses this mode that comes in
C                late might not got VXMDIFP assigned here, but it
C                will be assigned above in the late arrivals section.
C
                 DO ISTA = 1, NSTA
                    IF( STASCN(ISCN,ISTA) ) THEN
C     
                       VXMDIFP(FSETI(ISCN,ISTA),
     .                     PSETI(ISCN,ISTA)) = IMODE
                    END IF
                 END DO
              ELSE
C
C                This is not the original mode, or at least one of 
C                FREQ (perhaps via Doppler), BW, and PCAL were set.
C                So a new mode is needed.  Call VXTRAMD to do the work.
C
                 CALL VXTRAMD(IMODE,IFS,IPS)
                 FRSTSCN = ISCN
                 MODSCN(ISCN) = NMDVEX
C
C                Must set all other telescopes too
C
                 DO ISTA = 1, NSTA
                    IF( STASCN(ISCN,ISTA) ) THEN
C     
                       VXMDIFP(FSETI(ISCN,ISTA),
     .                     PSETI(ISCN,ISTA)) = NMDVEX
                    END IF
                 END DO
C
C                Set the setup group for each station in the new mode to 
C                be the same as it currently is.  This serves to transfer
C                most setup file parameters to the new mode when a FREQ
C                or BW requires a new mode
C
                 DO ISTA = 1, NSTA  
                    IF( STASCN(ISCN,ISTA) ) THEN
                       MODSET(ISTA,NMDVEX) = MODSET(ISTA,IMODE)
                    END IF
                 END DO
              END IF
C
           END IF
C
C          Any Mode switch.  RCW Oct 15, 2011.  I don't think this IF
C          statement accomplishes anything because it only sets OLDSCN
C          and OLDIPS, which are not used anywhere.  Is this left over 
C          from some previous effort?  In any case, it's harmless.
C
           IF (FRSTSCN.NE.OLDSCN .OR.
     .         IPS.NE.OLDIPS) THEN
              IF( FSETSCN(IFS) .NE. OLDSCN ) THEN 
                 OLDSCN = FSETSCN(IFS)
              END IF
              IF ( OLDIPS .NE. IPS ) THEN 
                 OLDIPS = IPS
              END IF 
           END IF
C
C          Set the pointer to the mode for this scan.
C
           MODSCN(ISCN) = VXMDIFP(IFS,IPS)
         END IF
C
C        end loop all scans
C
      END DO
C
C
C     CR 050818: The logic below works if you want the FORMAT=NONE scans
C       to appear in the VEX file as non-recording scans, using the mode from
C       another scan. However, at the current time FS stations would
C       prefer that there were simply gaps in the schedule so they can
C       use their own pointing procedures. So leave this section of code
C       commented out for now and in VXSCH, the FORMAT=NONE scans can be
C       skipped.
C     RCW Nov 2011.  For VLBA pointing, also do not want to replace the mode
C     even though format is NONE as the mode will be important for setting 
C     up the telescope switches.
C
C     Now loop through the scans again and replace the MODSCN for any with 
C     FORMAT=NONE (not processed first time) with the MODSCAN from a recording 
C     scan.
C
C      DO ISCN = SCAN1, SCANL
C         ISET = VXGTST( MODSCN(ISCN) )
C         IF( FORMAT(ISET)(1:4) .EQ. 'NONE' ) THEN
C           RECSCN = 0
CC          Need to allow possibility of using a later scan in case there
CC          is no previous recording scan (there must be one recording
CC          scan somewhere)
C           DO JSCN = SCAN1, SCANL
C             IF( RECSCN .EQ. 0 .OR. JSCN .LT. ISCN ) THEN
C               IF( .NOT. NOREC(JSCN) ) THEN
C                 RECSCN = JSCN
C               END IF
C             END IF
C           END DO
C           IF( RECSCN .EQ. 0 ) THEN
C             CALL ERRLOG( 'VXSCNS: there do not appear to be any ' //
C     1       'recording scans in this schedule! Check use of '//
C     2       'NORECORD, POINT and FORMAT=NONE' )
C           ELSE
C             MODSCN(ISCN) = MODSCN(RECSCN)
C           END IF
C         END IF
C      END DO
C     
      RETURN
      END
