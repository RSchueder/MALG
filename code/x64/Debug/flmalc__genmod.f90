        !COMPILER-GENERATED INTERFACE MODULE: Fri Mar 29 17:49:11 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE FLMALC__genmod
          INTERFACE 
            SUBROUTINE FLMALC(PMSA,FL,IPOINT,INCREM,NOSEG,NOFLUX,IEXPNT,&
     &IKNMRK,NOQ1,NOQ2,NOQ3,NOQ4)
              REAL(KIND=4) :: PMSA(*)
              REAL(KIND=4) :: FL(*)
              INTEGER(KIND=4) :: IPOINT(37)
              INTEGER(KIND=4) :: INCREM(37)
              INTEGER(KIND=4) :: NOSEG
              INTEGER(KIND=4) :: NOFLUX
              INTEGER(KIND=4) :: IEXPNT(4,*)
              INTEGER(KIND=4) :: IKNMRK(*)
              INTEGER(KIND=4) :: NOQ1
              INTEGER(KIND=4) :: NOQ2
              INTEGER(KIND=4) :: NOQ3
              INTEGER(KIND=4) :: NOQ4
            END SUBROUTINE FLMALC
          END INTERFACE 
        END MODULE FLMALC__genmod
