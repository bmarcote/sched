      SUBROUTINE GETCOR( VALUE, KC, KI )
C
C     This is a routine for SCHED that processes the input correlator
C     requests and creates the output for including in the output 
C     summary file.
C
      INCLUDE 'sched.inc'
C
      INTEGER            KI(*), KEYPTR, LEN1, SPLEN, ICH, MCH
      LOGICAL            MISCOR
      DOUBLE PRECISION   VALUE(*)
      CHARACTER          KC(*)*8, KCHAR*80, CHPOL*3, CAEX*8
C ---------------------------------------------------------------------
      IF( DEBUG ) CALL WLOG( 0, 'GETCOR starting.' )
      MISCOR = .FALSE.
C
C     Decode the correlator information.  Make upper case and
C     remove leading blanks for easier testing later.
C
      CORREL     = KCHAR( 'CORREL', 62, .FALSE., VALUE, KC, KI )
      CALL UPCASE( CORREL )
      MCH = LEN1( CORREL )
      ICH = 1
   30 CONTINUE
      IF( CORREL(ICH:ICH) .EQ. ' ' ) THEN
         ICH = ICH + 1
         IF( ICH .LT. MCH ) THEN
           GO TO 30
         END IF
      END IF
      MCH = LEN1( CORREL )
      CORREL = CORREL(ICH:MCH)
C
C     Decode other parameters.
C
      CORAVG     = VALUE( KEYPTR( 'CORAVG',  KC, KI ) )
      CORAV2     = VALUE( KEYPTR( 'CORAVG2',  KC, KI ) )
      WRITE( CAEX, '(A8)' ) VALUE( KEYPTR( 'CORAVG',  KC, KI ) + 1 )
      CALL UPCASE( CAEX )
      CAEXACT = CAEX(1:5) .EQ. 'EXACT'
      CORCHAN    = VALUE( KEYPTR( 'CORCHAN', KC, KI ) )
      CORNANT    = VALUE( KEYPTR( 'CORNANT', KC, KI ) )
      CHPOL      = KCHAR( 'CORPOL', 3, .TRUE., VALUE, KC, KI )
      CALL UPCASE( CHPOL )
      CORPOL     = CHPOL(1:2) .EQ. 'ON '
      CORWTFN    =  KCHAR( 'CORWTFN', 16, .TRUE., VALUE, KC, KI )
      CALL UPCASE( CORWTFN )
      CORTAPE    = KCHAR( 'CORTAPE', 16, .TRUE., VALUE, KC, KI )
      CALL UPCASE( CORTAPE )
      CORSRCS    = KCHAR( 'CORSRCS',  64, .TRUE., VALUE, KC, KI )
      CORSHIP(1) = KCHAR( 'CORSHIP1', 64, .FALSE., VALUE, KC, KI )
      CORSHIP(2) = KCHAR( 'CORSHIP2', 64, .FALSE., VALUE, KC, KI )
      CORSHIP(3) = KCHAR( 'CORSHIP3', 64, .FALSE., VALUE, KC, KI )
      CORSHIP(4) = KCHAR( 'CORSHIP4', 64, .FALSE., VALUE, KC, KI )
      CORNOTE(1) = KCHAR( 'CORNOTE1', 64, .FALSE., VALUE, KC, KI )
      CORNOTE(2) = KCHAR( 'CORNOTE2', 64, .FALSE., VALUE, KC, KI )
      CORNOTE(3) = KCHAR( 'CORNOTE3', 64, .FALSE., VALUE, KC, KI )
      CORNOTE(4) = KCHAR( 'CORNOTE4', 64, .FALSE., VALUE, KC, KI )
C
C     Make up printout array.
C
      CORSTUFF(1) = 
     1   'CORRELATION REQUESTS (Defaults in parentheses): '
      CORSTUFF(2) = 
     1   '  Correlator (Required if recording):          ' // CORREL
      WRITE( CORSTUFF(3), '( A, F8.3, A )' ) 
     1   '  Correlator average time (2 sec):            ', 
     2   CORAVG, ' sec.'
      WRITE( CORSTUFF(4), '( A, F8.3, A )' ) 
     1   '    Alternate average time (for spacecraft).  ',
     2   CORAV2, ' sec.'
      WRITE( CORSTUFF(5), '( A, I5 )' ) 
     1  '  Spectral channels per baseband (16):           ', CORCHAN
      WRITE( CORSTUFF(6), '( A, I6 )' ) 
     1  '  Number of antennas to be correlated:           ', CORNANT
      CORSTUFF(7) = 
     1  '  Polarization (ON):                           ' // CHPOL
      CORSTUFF(8) = 
     1  '  Correlator weighting function (UNIFORM):     ' // CORWTFN
      CORSTUFF(9) = 
     1  '  Distribution tape (DAT):                     ' // CORTAPE
C
      SPLEN = LEN1( CORSRCS )      
      IF( SPLEN .LE. 12 ) THEN
         CORSTUFF(10) = 
     1      '  Source positions from:             '// CORSRCS(1:SPLEN)
         CORSTUFF(11) = '   '
      ELSE
         CORSTUFF(10) = '  Source positions from:'
         CORSTUFF(11) = '  '//CORSRCS
      END IF
      CORSTUFF(12) = '  Shipping address for correlator output: ' 
      CORSTUFF(13) = '      ' // CORSHIP(1)
      CORSTUFF(14) = '      ' // CORSHIP(2)
      CORSTUFF(15) = '      ' // CORSHIP(3)
      CORSTUFF(16) = '      ' // CORSHIP(4)
      CORSTUFF(17) = '  Correlator Notes: ' // CORNOTE(1)
      CORSTUFF(18) = '      ' // CORNOTE(2)
      CORSTUFF(19) = '      ' // CORNOTE(3)
      CORSTUFF(20) = '      ' // CORNOTE(4)
      CORSTUFF(21) = ' '
C
C     Check the data for validity and completeness.
C
      IF( .NOT. NOTAPE ) THEN
         IF( CORREL(1:7) .NE. 'SOCORRO' .AND. 
     1       CORREL(1:8) .NE. 'VLBADIFX' .AND.
     2       CORREL(1:4) .NE. 'VLBA' .AND. 
     3       CORREL(1:8) .NE. 'HAYSTACK' .AND. 
     4       CORREL(1:4) .NE. 'BONN' .AND. 
     5       CORREL(1:4) .NE. 'JIVE' .AND. 
     6       CORREL(1:10) .NE. 'WASHINGTON' .AND. 
     7       CORREL(1:4) .NE. 'USNO' .AND. 
     8       CORREL(1:3) .NE. 'JPL' .AND. 
     9       CORREL(1:7) .NE. 'BOLOGNA' .AND. 
     A       CORREL(1:6) .NE. 'MITAKA' .AND.
     A       CORREL(1:9) .NE. 'PENTICTON' .AND.
     B       CORREL(1:3) .NE. 'LBA' .AND.
     C       CORREL(1:4) .NE. 'OTHER' ) THEN
            CALL WLOG( 1, '        ' // CORREL(1:LEN1(CORREL)) //
     1        ' is not a recognized correlator.' )
            MISCOR = .TRUE.
         END IF
C
         IF( CORREL(1:7) .EQ. 'SOCORRO' .OR. 
     1       CORREL(1:4) .EQ. 'VLBA' .OR.
     2       CORREL(1:7) .EQ. 'VLBADIFX' ) THEN
            CALL SOCDEF( CHPOL )
         ELSE
            CALL CORDEF( CHPOL )
         END IF
C
      END IF
C
      RETURN
      END

