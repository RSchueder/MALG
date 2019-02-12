        !COMPILER-GENERATED INTERFACE MODULE: Tue Feb 12 17:11:44 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE VERVLU__genmod
          INTERFACE 
            SUBROUTINE VERVLU(PMSA,FL,IPOINT,INCREM,NOSEG,NOFLUX,IEXPNT,&
     &IKNMRK,NOQ1,NOQ2,NOQ3,NOQ4)
              REAL(KIND=4) :: PMSA(*)
              REAL(KIND=4) :: FL(*)
              INTEGER(KIND=4) :: IPOINT(*)
              INTEGER(KIND=4) :: INCREM(*)
              INTEGER(KIND=4) :: NOSEG
              INTEGER(KIND=4) :: NOFLUX
              INTEGER(KIND=4) :: IEXPNT(4,*)
              INTEGER(KIND=4) :: IKNMRK(*)
              INTEGER(KIND=4) :: NOQ1
              INTEGER(KIND=4) :: NOQ2
              INTEGER(KIND=4) :: NOQ3
              INTEGER(KIND=4) :: NOQ4
            END SUBROUTINE VERVLU
          END INTERFACE 
        END MODULE VERVLU__genmod
