        !COMPILER-GENERATED INTERFACE MODULE: Tue Feb 12 17:11:43 2019
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE MALDIS__genmod
          INTERFACE 
            SUBROUTINE MALDIS(PMSA,FL,IPOINT,INCREM,NOSEG,NOFLUX,IEXPNT,&
     &IKNMRK,NOQ1,NOQ2,NOQ3,NOQ4)
              REAL(KIND=4) :: PMSA(*)
              REAL(KIND=4) :: FL(*)
              INTEGER(KIND=4) :: IPOINT(14)
              INTEGER(KIND=4) :: INCREM(14)
              INTEGER(KIND=4) :: NOSEG
              INTEGER(KIND=4) :: NOFLUX
              INTEGER(KIND=4) :: IEXPNT(4,*)
              INTEGER(KIND=4) :: IKNMRK(*)
              INTEGER(KIND=4) :: NOQ1
              INTEGER(KIND=4) :: NOQ2
              INTEGER(KIND=4) :: NOQ3
              INTEGER(KIND=4) :: NOQ4
            END SUBROUTINE MALDIS
          END INTERFACE 
        END MODULE MALDIS__genmod