      SUBROUTINE VERWRAP( VERNUM, VERSION )
Cf2py intent(out) VERNUM
Cf2py intent(out) VERSION
      REAL VERNUM
      CHARACTER  VERSION*40
      CALL VERSCHED( VERNUM, VERSION )
      RETURN
      END
