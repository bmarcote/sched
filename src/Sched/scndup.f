      SUBROUTINE SCNDUP( TO, FROM, COPYALL )
C
C     Routine for sched that copies one scan (FROM) into scan another 
C     (TO). It copies all items which have a MAXSCN array size
C     in sched.inc.  Last checked 20oct2000 RCW.
C
C     It is used for expanding loops in SCHIN through SCHREP.
C
C     It is also used by some optimization routines such as OPTCELLS
C     that make a new schedule and by the reference pointing inserters.
C
C     If COPYALL is set, literally everything dimensioned MAXSCN is
C     copied.  If it is .FALSE., the following happens:
C
C       STARTJ and STOPJ are not copied.
C       DURONLY is set to 1
C       ANNOT is set to ' '
C       TAPE, REWIND, FASTF, REVERSE are all set .FALSE. (all stations)
C       The calculated parameters are not copied.
C       
C     Note that with COPYALL true, the calculated parameters are 
C     copied but many should be recalculated after the call.  In most
C     usage, they have not yet been calculated.  See the bottom of
C     the routine for which parameters are involved.
C
      INCLUDE   'sched.inc'
C
      INTEGER      TO, FROM, JST, ICHAN
      LOGICAL      COPYALL
C ------------------------------------------------------------------
      IF( DEBUG ) THEN
         MSGTXT = ' '
         WRITE( MSGTXT, '( A, 2I5 )' ) 'SCNDUP: To, From: ', TO, FROM
         CALL WLOG( 0, MSGTXT )
      END IF
C
C     Protect against overflowed arrays.
C
      IF( TO .GT. MAXSCN ) THEN
         MSGTXT = ' '
         WRITE( MSGTXT, '( A, I15, A, I15 )')  
     1       'SCHDUP: Output scan number ', TO, 
     2       ' too big for arrays of dimension: ',MAXSCN
         CALL ERRLOG( MSGTXT )
      END IF
C
C     Duplicate most parameters.
C     Listed almost in order of position in sched.inc for ease of 
C     maintenance.  Some missordering to minimize IFs and DOs.
C
      PRESCAN(TO)  = PRESCAN(FROM)
      DUR(TO)      = DUR(FROM)
      GAP(TO)      = GAP(FROM)
      IF( COPYALL ) THEN
         STARTJ(TO) = STARTJ(FROM)
         STOPJ(TO)  = STOPJ(FROM)
      END IF
C
C     Don't set START and STOP.  In some of the optimization calls,
C     they have already been set and we don't want to overwrite them.
C
      DO ICHAN = 1, MAXCHN
         FREQ(ICHAN,TO) = FREQ(ICHAN,FROM)
         BW(ICHAN,TO)   = BW(ICHAN,FROM)
      END DO
C
      DOPINCR(TO,1)  = DOPINCR(FROM,1)
      DOPINCR(TO,2)  = DOPINCR(FROM,2)
      SRCNUM(TO)   = SRCNUM(FROM)
      IDOPSRC(TO)  = IDOPSRC(FROM)
      QUAL(TO)     = QUAL(FROM)
      SETNUM(TO)   = SETNUM(FROM)
      CENTERS(TO)  = CENTERS(FROM)
      ICENT(TO)    = ICENT(FROM)
C
      DO JST = 1,MAXSTA
         NSETUP(TO,JST) = NSETUP(FROM,JST)
         FSETI(TO,JST)  = FSETI(FROM,JST)
         STASCN(TO,JST) = STASCN(FROM,JST) 
      END DO
C
      DOPEAK(TO)   = DOPEAK(FROM)
      POINT(TO)    = POINT(FROM)
C
      IF( COPYALL ) THEN
         DURONLY(TO) = DURONLY(FROM)
         ANNOT(TO)   = ' '
      ELSE
         DURONLY(TO) = 1
         ANNOT(TO)   = ANNOT(FROM)
      END IF
C
      NOTSYS(TO)   = NOTSYS(FROM)
      DOPCAL(TO)   = DOPCAL(FROM)
      DWELL(TO)    = DWELL(FROM)
      TANT1(TO)    = TANT1(FROM)
      TANT2(TO)    = TANT2(FROM)
      SCNSRC(TO)   = SCNSRC(FROM) 
      DOPSRC(TO)   = DOPSRC(FROM)
      LINES(TO)    = LINES(FROM)
      PCAL(TO)     = PCAL(FROM)
      SCANTAG(TO)  = SCANTAG(FROM)
C
      IVLAPHS(TO)  = IVLAPHS(FROM)
      VLATSYS(TO)  = VLATSYS(FROM)
      VLAPEAK(TO)  = VLAPEAK(FROM)
      VLAMODE(TO)  = VLAMODE(FROM)
      VLAPHS(TO)   = VLAPHS(FROM)
      VLAINTEG(TO) = VLAINTEG(FROM)
C
      PTSLEW(TO)   = PTSLEW(FROM)
      CALTIME(TO)  = CALTIME(FROM)
      PNTVLBA(TO)  = PNTVLBA(FROM)
      TANVLBA(TO)  = TANVLBA(FROM)
      DOPN3DB(TO)  = DOPN3DB(FROM)
      FOCUS(TO)    = FOCUS(FROM)
      ROTATION(TO) = ROTATION(FROM)
      SAZCOL(TO)   = SAZCOL(FROM)
      SELCOL(TO)   = SELCOL(FROM)
      CRDLINE(TO)  = CRDLINE(FROM)
C
C     Tape parameters.  Many should not be duplicated for some scans.
C
      MINPAUSE(TO) = MINPAUSE(FROM)
      PRESTART(TO) = PRESTART(FROM)
      NOREC(TO)    = NOREC(FROM)
C
      IF( COPYALL ) THEN
         DO JST = 1, MAXSTA
            TAPE(TO,JST)    = TAPE(FROM,JST)    
            REWIND(TO,JST)  = REWIND(FROM,JST) 
            FASTF(TO,JST)   = FASTF(FROM,JST)  
            REVERSE(TO,JST) = REVERSE(FROM,JST)
         END DO
      ELSE
         DO JST = 1, MAXSTA
            TAPE(TO,JST)    = .FALSE.
            REWIND(TO,JST)  = .FALSE.
            FASTF(TO,JST)   = .FALSE.
            REVERSE(TO,JST) = .FALSE.
         END DO
      END IF
C
C     eVLBI parameters.
C
      GRABTIME(1,TO) = GRABTIME(1,FROM)
      GRABTIME(2,TO) = GRABTIME(2,FROM)
      GRABGAP(TO) = GRABGAP(FROM)
      DATAPATH(TO) = DATAPATH(FROM)
      GRABTO(TO) = GRABTO(FROM)
C
C     Calculated parameters.  Usually these won't be available yet.
C     But they might be if we are just shifting the order of scans
C     later in the program.  Of course, some like slew times really
C     should be recalculated.
C
      IF( COPYALL ) THEN
         DO JST = 1, MAXSTA
            TPDAT(1,TO,JST) = TPDAT(1,FROM,JST)
            TPDAT(2,TO,JST) = TPDAT(2,FROM,JST)
            TPSTART(TO,JST) = TPSTART(FROM,JST)
            TCORR(TO,JST)   = TCORR(FROM,JST)
            TPFOOT1(TO,JST) = TPFOOT1(FROM,JST)
            TPFOOT2(TO,JST) = TPFOOT2(FROM,JST)
            GBYTES(TO,JST)  = GBYTES(FROM,JST)
            LST1(TO,JST)    = LST1(FROM,JST)
            LST2(TO,JST)    = LST2(FROM,JST)
            TONSRC(TO,JST)  = TONSRC(FROM,JST)
            TSLEW(TO,JST)   = TSLEW(FROM,JST)
            EL1(TO,JST) = EL1(FROM,JST)
            AZ1(TO,JST) = AZ1(FROM,JST)
            HA1(TO,JST) = HA1(FROM,JST)
            PA1(TO,JST) = PA1(FROM,JST)
            UP1(TO,JST) = UP1(FROM,JST)
            EL2(TO,JST) = EL2(FROM,JST)
            AZ2(TO,JST) = AZ2(FROM,JST)
            HA2(TO,JST) = HA2(FROM,JST)
            PA2(TO,JST) = PA2(FROM,JST)
            UP2(TO,JST) = UP2(FROM,JST)
         END DO
      END IF
C
C     Optimization stuff
C
      OPMISS(TO)   = OPMISS(FROM)
      OPMINEL(TO)  = OPMINEL(FROM)
      OPMIAN(TO)   = OPMIAN(FROM)
      OPMINSEP(TO) = OPMINSEP(FROM)
      OPSLEWWT(TO) = OPSLEWWT(FROM)
      OPSLEWTI(TO) = OPSLEWTI(FROM)
      OPHLIMWT(TO) = OPHLIMWT(FROM) 
      OPHLIMTI(TO) = OPHLIMTI(FROM)
      OPHMAXDT(TO) = OPHMAXDT(FROM)
      OPHA(TO)     = OPHA(FROM)
      OPHAWID(TO)  = OPHAWID(FROM)
      OPHAWT(TO)   = OPHAWT(FROM)
C
      RETURN
      END
