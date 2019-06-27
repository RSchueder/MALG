        !COMPILER-GENERATED INTERFACE MODULE: Wed Jun 26 17:19:23 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE FLMALS__genmod
          INTERFACE 
            SUBROUTINE FLMALS(PMSA,FL,IPOINT,INCREM,NOSEG,NOFLUX,IEXPNT,&
     &IKNMRK,NOQ1,NOQ2,NOQ3,NOQ4)
              REAL(KIND=4) :: PMSA(*)
              REAL(KIND=4) :: FL(*)
              INTEGER(KIND=4) :: IPOINT(64)
              INTEGER(KIND=4) :: INCREM(64)
              INTEGER(KIND=4) :: NOSEG
              INTEGER(KIND=4) :: NOFLUX
              INTEGER(KIND=4) :: IEXPNT(4,*)
              INTEGER(KIND=4) :: IKNMRK(*)
              INTEGER(KIND=4) :: NOQ1
              INTEGER(KIND=4) :: NOQ2
              INTEGER(KIND=4) :: NOQ3
              INTEGER(KIND=4) :: NOQ4
            END SUBROUTINE FLMALS
          END INTERFACE 
        END MODULE FLMALS__genmod
