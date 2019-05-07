        !COMPILER-GENERATED INTERFACE MODULE: Tue May 07 09:23:31 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE DAYLP__genmod
          INTERFACE 
            SUBROUTINE DAYLP(PMSA,FL,IPOINT,INCREM,NOSEG,NOFLUX,IEXPNT, &
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
            END SUBROUTINE DAYLP
          END INTERFACE 
        END MODULE DAYLP__genmod
