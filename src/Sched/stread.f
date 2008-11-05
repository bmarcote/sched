      SUBROUTINE STREAD( IKIN, OPENIT )
C
C     Subroutine for SCHED that reads the stations catalog.
C
C     Input:
      INTEGER       IKIN      ! Unit number of input file.
      LOGICAL       OPENIT    ! Open file on first call, close on last.
C
C     Include file for SCHED and for catalog reads.
C
      INCLUDE    'sched.inc'
      INCLUDE    'rdcat.inc'
C
      INTEGER       ISTAT, RDSTA, I, LEN1, I1, I2
      CHARACTER     INFILE*80
C-----------------------------------------------------------------------
C     Get input file for stations (equipment) catalog.  Could be
C     in line or from external file.  If external file, allow use
C     of the locations file.  If in line, don't allow use of the
C     locations file (I don't think anyone uses inline station 
C     catalogs anyway and, if they do, they probably want to put
C     the positions in it anyway).
C
      IF( OPENIT ) THEN
         INFILE = STAFILE
         LOCFILE = LOCAFILE
      ELSE
         INFILE = 'Program_input'
         LOCFILE = 'NOLOC'
      END IF
      I2 = LEN1( INFILE )
      IF( I2 .GT. 100 - 25 ) THEN
         I1 = I2 - ( 100 - 25 ) + 1
      ELSE
         I1 = 1
      END IF
      MSGTXT = 'STREAD:  Reading station catalog: ' // INFILE(I1:I2)
      CALL WLOG( 0, MSGTXT )
      CALL WLOG( 0, 'STREAD:  Will read locations file '//
     1        LOCFILE(1:LEN1(LOCFILE)) )
C
C     Loop through input records.
C
  100 CONTINUE
C
C        Use subroutine RDSTA to get a line of catalog information.
C        It also opens (closes) the file on first (last) read if 
C        OPENIT is true.
C         
         ISTAT = RDSTA( IKIN, OPENIT, INFILE )
         IF( ISTAT .NE. 0 ) GO TO 990
C
C        Get the catalog versions.
C
         STVER = STAVER
         LOCAVER = DBVER
C
C        Check if too many stations. 
C
         MSTA = MSTA + 1
         IF( MSTA .EQ. MAXCAT ) THEN
            WRITE( MSGTXT, '( A, I6, A, A )' ) 
     1          ' STREAD: Too many stations in catalog, max ', 
     2          MSTA, ' Last station: ', STANAM
            CALL ERRLOG( MSGTXT )
         END IF
C
C        Get station name.  Check against previous stations and
C        ignore this one if it has been given before.  This allows
C        in-line catalogs to override the standard one.
C
         STATION(MSTA) = STANAM
         CALL UPCASE( STATION(MSTA) )
         IF( MSTA .GT. 1 ) THEN
            DO I = 1, MSTA - 1
               IF( STATION(I) .EQ. STATION(MSTA) ) THEN
                  CALL WLOG( 0, 'STREAD:  Ignoring extra station '//
     1                'catalog entry for '//STATION(MSTA) )
                  MSTA = MSTA - 1
                  GO TO 100
               END IF
            END DO
         END IF
C
C        Decode input
C
         STCODE(MSTA)   = STACOD
         STCODEU(MSTA)  = STACOD
         CALL UPCASE( STCODEU(MSTA) )
         CONTROL(MSTA)  = STACTL(1:4)
         CALL UPCASE( CONTROL(MSTA) )
         DAR(MSTA)      = STADAR
         RECORDER(MSTA) = STAREC
         STNDRIV(MSTA)  = STANDR
         NHEADS(MSTA)   = STANHD
         DISK(MSTA)     = STADSK
         MEDIADEF(MSTA) = STAMD
         TSCAL(MSTA)    = STATSC
         NBBC(MSTA)     = STANBC
         ELEV(MSTA)     = STAEL
         LAT(MSTA)      = STALAT
         LONG(MSTA)     = STALON
         XPOS(MSTA)     = STAX
         YPOS(MSTA)     = STAY
         ZPOS(MSTA)     = STAZ
         DXPOS(MSTA)    = STADX
         DYPOS(MSTA)    = STADY
         DZPOS(MSTA)    = STADZ
         MJDRATE(MSTA)  = STAEPO
C
C        VLBADAR flags sites that use the VLBA control computer and
C        software to control the recorder and DAR, but not the antenna.
C        This is mainly Green Bank (NRAOV) and the VLA.
C
         VLBADAR(MSTA)  = STACTL(5:5) .EQ. 'V' .OR. 
     1                    STACTL(5:5) .EQ. 'v' .OR.
     2                    CONTROL(MSTA) .EQ. 'VLA'
C
C        Horizon mask
C
         NHORIZ(MSTA) = STANHO
         DO I = 1, STANHO
            HORAZ(I,MSTA) = STAHAZ(I)
            HOREL(I,MSTA) = STAHEL(I)
         END DO
C
C        Slew data.
C
         MOUNT(MSTA)    = STAMNT
         NAXLIM(MSTA)   = STANAX
         AX1RATE(MSTA)  = STARA1
         AX2RATE(MSTA)  = STARA2
         AX1ACC(MSTA)   = STAAC1
         AX2ACC(MSTA)   = STAAC2
         ZALIM(MSTA)    = STAZAL
         TSETTLE(MSTA)  = STASTL
         MINSETUP(MSTA) = STAMSU
         MAXSRCHR(MSTA) = STAMSH
         AXOFF(MSTA)    = STAOFF
         DO I = 1, 6
            AX1LIM(I,MSTA) = STAAX1(I)
            AX2LIM(I,MSTA) = STAAX2(I)
         END DO
C
C        Be sure the control type is known.  Let blank be the same
C        as none for CONTROL, DAR, RECORDER, DISK, and MEDIADEF
C
         IF( CONTROL(MSTA)(1:3) .EQ. ' ' ) CONTROL(MSTA) = 'NONE'
         IF( CONTROL(MSTA)(1:3) .NE. 'VLA'  .AND. 
     1       CONTROL(MSTA)(1:4) .NE. 'VLBA' .AND.
     2       CONTROL(MSTA)(1:4) .NE. 'NRAO' .AND.
     3       CONTROL(MSTA)(1:4) .NE. 'SNAP' .AND. 
     4       CONTROL(MSTA)(1:3) .NE. 'VEX'  .AND. 
     5       CONTROL(MSTA)(1:4) .NE. 'SN50' .AND.
     6       CONTROL(MSTA)(1:4) .NE. 'VSOP' .AND.
     7       CONTROL(MSTA)      .NE. 'NONE' ) THEN
            CALL ERRLOG( 'STREAD: Invalid control type '//CONTROL(MSTA)
     1          //' for '// STATION(MSTA) )
         END IF
C
C        Be sure the DAR type is known.
C
         IF( DAR(MSTA) .EQ. ' ' ) DAR(MSTA) = 'NONE'
         IF( DAR(MSTA) .NE. 'VLBA'  .AND. 
     1       DAR(MSTA) .NE. 'VLBAG' .AND.
     2       DAR(MSTA) .NE. 'MKIV'  .AND.
     3       DAR(MSTA) .NE. 'MKIII' .AND. 
     4       DAR(MSTA) .NE. 'S2'    .AND. 
     5       DAR(MSTA) .NE. 'K4'    .AND. 
     6       DAR(MSTA) .NE. 'VSOP'  .AND. 
     7       DAR(MSTA) .NE. 'VLBA4' .AND. 
     8       DAR(MSTA) .NE. 'NONE' ) THEN
            CALL ERRLOG( 'STREAD: Invalid DAR type ' //
     1          DAR(MSTA) // ' for ' // STATION(MSTA) )
         END IF
C
C        Be sure the recordertype is known.
C
         IF( RECORDER(MSTA) .EQ. ' ' ) RECORDER(MSTA) = 'NONE'
         IF( RECORDER(MSTA) .NE. 'VLBA'   .AND. 
     1       RECORDER(MSTA) .NE. 'MKIV'   .AND.
     1       RECORDER(MSTA) .NE. 'VLBA4'  .AND.
     2       RECORDER(MSTA) .NE. 'MKIII'  .AND. 
     3       RECORDER(MSTA) .NE. 'S2'     .AND. 
     4       RECORDER(MSTA) .NE. 'K4'     .AND. 
     5       RECORDER(MSTA) .NE. 'VSOP'   .AND. 
     6       RECORDER(MSTA) .NE. 'MARK5A' .AND. 
     7       RECORDER(MSTA) .NE. 'MARK5B' .AND. 
     8       RECORDER(MSTA) .NE. 'NONE' ) THEN
            CALL ERRLOG( 'STREAD: Invalid recorder type ' //
     1          RECORDER(MSTA) // ' for ' // STATION(MSTA) )
         END IF
C
C        Be sure the DISK is an allowed type.
C
         IF( DISK(MSTA) .EQ. ' ' ) DISK(MSTA) = 'NONE'
         IF( DISK(MSTA) .NE. 'MARK5A' .AND.
     3       DISK(MSTA) .NE. 'NONE' ) THEN
            CALL ERRLOG( 'STREAD: Invalid DISK type ' //
     1          DISK(MSTA) // ' for ' // STATION(MSTA) )
         END IF
C
C        Be sure the MEDIADEF is an allowed type.
C
         IF( MEDIADEF(MSTA) .EQ. ' ' ) MEDIADEF(MSTA) = 'NONE'
         IF( MEDIADEF(MSTA) .NE. 'TAPE' .AND.
     3       MEDIADEF(MSTA) .NE. 'DISK' .AND.
     3       MEDIADEF(MSTA) .NE. 'NONE' ) THEN
            CALL ERRLOG( 'STREAD: Invalid MEDIADEF type ' //
     1          MEDIADEF(MSTA) // ' for ' // STATION(MSTA) )
         END IF
C
C        Be sure there is a position.
C
         IF( XPOS(MSTA) .EQ. 0.D0 .AND.
     1       YPOS(MSTA) .EQ. 0.D0 .AND.
     2       ZPOS(MSTA) .EQ. 0.D0 ) THEN
            CALL ERRLOG( 'STREAD: Location required for ' //
     1          STATION(MSTA) )
         END IF
C
C        Be sure the TSCAL is an allowed value.
C
         IF( TSCAL(MSTA) .NE. 'CONT' .AND. 
     1       TSCAL(MSTA) .NE. 'GAP' ) THEN
            CALL ERRLOG( 'STREAD: Unknown TSCAL for ' //
     1          STATION(MSTA) // ':  ' // TSCAL(MSTA) )
         END IF
C
         GO TO 100
C
  990 CONTINUE
      RETURN
      END
