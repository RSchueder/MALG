      SUBROUTINE MACROP     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'GMALSM' :: GMALSM
C
C*******************************************************************************
C
      IMPLICIT NONE
C
C     Type    Name         I/O Description
C
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT(66)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(66)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 66)   !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
C
C*******************************************************************************
C
C     Type    Name         I/O Description                                        Unit
C
      REAL(4) MALS        ! I MacroALgae Structural biomass                       (gDM/m2)
      REAL(4) MALN        ! I MacroALgae Nitrogen storage                         (gN/gDM)
      REAL(4) MALP        ! I MacroALgae phosphorous storage                      (gP/gDM)
      REAL(4) MALC        ! I MacroALgae carbon storage                           (gC/gDM)
      REAL(4) MALNmin     ! I minimal N in nitrogen storage                       (gN/gDM)
      REAL(4) MALPmin     ! I minimal P in phosphorous storage                    (gP/gDM
      REAL(4) Latitude    ! I latitude of study area                              (degrees)
      REAL(4) daylengthd  ! I length of current day                               (d)
      REAL(4) daylengthp  ! I length of previous day                              (d)
      REAL(4) daylengthm  ! I max day length at this latitude                     (d)
      REAL(4) Temp        ! I ambient water temperature                           (oC)
      REAL(4) m1          ! IMALS growth rate parameter 1                         (-)
      REAL(4) m2          ! IMALS growth rate parameter 2                         (-)
      REAL(4) MALS0       ! IMALS growth rate parameter 3                         (gDM/m2)
      REAL(4) a1          ! IMALS photoperiod parameter 1                         (-)
      REAL(4) a2          ! IMALS photoperiod parameter 2                         (-)
      REAL(4) mrtMAL      ! I(epsilon) erosion/mortality parameter macroalgae     (m2/DM)
      REAL(4) DCRatMALS   ! 
      REAL(4) NCRatMALS
      REAL(4) PCRatMALS
      REAL(4) FrPOC1MALS  ! Fraction MALS that goes to POC1 in decay              (-)
      REAL(4) FrPOC2MALS  ! Fraction MALS that goes to POC2 in decay              (-)
      REAL(4) FrPON1MALS  ! Fraction MALS that goes to PON1 in decay              (-)
      REAL(4) FrPON2MALS  ! Fraction MALS that goes to PON2 in decay              (-)
      REAL(4) FrPOP1MALS  ! Fraction MALS that goes to POP1 in decay              (-)
      REAL(4) FrPOP2MALS  ! Fraction MALS that goes to POP2 in decay              (-)

      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment        (m2)
      REAL(4) DELT        ! I  timestep for processes                             (d)
      REAL(4) Depth       ! I  depth of segment                                   (m)
      REAL(4) MALSM2      ! O  Macroalgae structural mass per square metre        (gC/m2)
      REAL(4) MALNM2      ! O  Macroalgae N storage mass per square metre         (gN/m2)
      REAL(4) MALPM2      ! O  Macroalgae P storage mass per square metre         (gP/m2)
      REAL(4) LimBioMALS  ! O  density limitation function                        (-)
      REAL(4) LimPhoMALS  ! O  photoperiod limitation function                    (-)
      REAL(4) LimTemMALS  ! O  temperature limitation function                    (-)
     
      REAL(4) dGrowMALS   ! F  growth of MALS                                     (gDM/m3/d)
      REAL(4) dMortMALS   ! F  decay of MALS                                      (gDM/m3/d)
      REAL(4) dNTrMALS    ! F  translocation of N from EM to RH01                 (gN/m3/d)
      REAL(4) dPTrMALS    ! F  translocation of P from SM to RH01                 (gP/m3/d)
      REAL(4) dCTrMALS    ! F  translocation of C from RH to MALS                 (gC/m3/d)

      REAL(4) dPrPOC1MAL  ! F  POC1 production macrophyt 1                        (gC/m3/d)
      REAL(4) dPrPOC2MAL  ! F  POC2 production macrophyt 1                        (gC/m3/d)
      REAL(4) dPrPON1MAL  ! F  PON1 production macrophyt 1                        (gN/m3/d)
      REAL(4) dPrPON2MAL  ! F  PON2 production macrophyt 1                        (gN/m3/d)
      REAL(4) dPrPOP1MAL  ! F  POP1 production macrophyt 1                        (gP/m3/d)
      REAL(4) dPrPOP2MAL  ! F  POP2 production macrophyt 1                        (gP/m3/d)
      REAL(4) dMALSOXY    ! F  oxygen production MALS                             (gO/m3/d)
      
      INTEGER IdGrowMALS  !    Pointer to the growth of MALS
      INTEGER IdDecayMALS !    Pointer to the decay of MALS
      INTEGER IdNTrMALS   !    Pointer to the translocation of N 
      INTEGER IdPTrMALS   !    Pointer to the translocation of P 
      INTEGER IdCTrMALS   !    Pointer to the translocation of C

      INTEGER IdPrPOC1MAL !    Pointer to the POC1 production macrophyt 1
      INTEGER IdPrPOC2MAL !    Pointer to the POC2 production macrophyt 1
      INTEGER IdPrPON1MAL !    Pointer to the PON1 production macrophyt 1
      INTEGER IdPrPON2MAL !    Pointer to the PON2 production macrophyt 1
      INTEGER IdPrPOP1MAL !    Pointer to the POP1 production macrophyt 1
      INTEGER IdPrPOP2MAL !    Pointer to the POP2 production macrophyt 1
      INTEGER IdSM01OXY   !    Pointer to the oxygen production MALS

      REAL    NRH01M2     !    N contents RH01 (gN/m2)

      INTEGER IKMRK1
      INTEGER IKMRK2
C
C*******************************************************************************
C
      IPNT        = IPOINT
      IdGrowMALS  = 1
      IdDecayMALS = 2
      IdNTrMALS   = 3   
      IdPTrMALS   = 4
      IdCTrMALS   = 5
      IdPrPOC1MAL = 6
      IdPrPOC2MAL = 7
      IdPrPON1MAL = 8
      IdPrPON2MAL = 9
      IdPrPOP1MAL = 10
      IdPrPOP2MAL = 11
      IdMALSOXY   = 12
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG

         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)

         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF ((IKMRK2.EQ.0).OR.(IKMRK2.EQ.3)) THEN

              MALS       = PMSA( IPNT(1) )
              MALN       = PMSA( IPNT(2) )
              MALP       = PMSA( IPNT(3) )
              MALC       = PMSA( IPNT(4) )
              MALNmin    = PMSA( IPNT(5) )
              MALPmin    = PMSA( IPNT(6) )
              Latitude   = PMSA( IPNT(7) )
              daylengthd = PMSA( IPNT(8) )
              daylenfthp = PMSA( IPNT(9) )
              daylenfthm = PMSA( IPNT(10) )
              Temp       = PMSA( IPNT(11) )
              m1         = PMSA( IPNT(12) )
              m2         = PMSA( IPNT(13) )
              MALS0      = PMSA( IPNT(14) )
              a1         = PMSA( IPNT(15) )
              a2         = PMSA( IPNT(16) )
              mrtMAL     = PMSA( IPNT(17) )
              FrPOC1MALS = PMSA( IPNT(18) )
              FrPOC2MALS = PMSA( IPNT(19) )
              FrPON1MALS = PMSA( IPNT(20) )
              FrPON2MALS = PMSA( IPNT(21) )
              FrPOP1MALS = PMSA( IPNT(22) )
              FrPOP2MALS = PMSA( IPNT(23) )
              Surf       = PMSA( IPNT(24) )
              DELT       = PMSA( IPNT(25) )
              Depth      = PMSA( IPNT(26) )
            
               ! check input

               IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
               IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')

               ! density limitation
               
               LimDen = min(m1 * exp(-(MALS/MALS0)**2)) + m2, 1.0)
               
               ! temperature limitation

               IF ( Temp .gt. -1.8 .AND. Temp .lt. 10.0 ) THEN
                  LimTemp = 0.08 * Temp + 0.2
               ELSE IF ( Temp .ge. 10.0 .AND. Temp .le. 15.0 )
                  LimTemp   = 1.0
               ELSE IF ( Temp .gt. 15.0 .AND. Temp .le. 19.0 )
                  LimTemp = 19.0/4.0 - Temp/4.0
               ELSE IF ( Temp .gt. 19.0)
                   LimTemp= 0.0
               ENDIF
               
               ! photoperiod limitation
               dL = (daylengthd - daylengthp) /daylengthm           
               LimPho = a1 * (1 + sin(dL * ABS(dL)**0.5)) + a2
               
               ! growth
               Clim = 1-MALCmin/MALC
               Nlim = 1-MALNmin/MALN
               Plim = 1-MALPmin/MALP
               mu = LimDen * LimPho * LimTemp * min(Nlim,Clim,Plim)               
               dGrowMALS = MALS * mu
               
               ! decay
               coeff = exp(mrtMAL*MALS)
               mrt = 10e-6*coeff/(1 + 10e-6*(coeff - 1 ))
               dDecayMALS = MALS * mrt
               
               ! production organic material

               dPrPOC1MAL = (dDecayMALS-dCtEMtRH01)*FrPOC1MALS + (dDecaySM01-dCtSMtRH01)*FrPOC1SM01
               dPrPOC2MAL = (dDecayMALS-dCtEMtRH01)*FrPOC2MALS + (dDecaySM01-dCtSMtRH01)*FrPOC2SM01

               dPrPON1MAL = (dDecayMALS*NCRatMALS-dNtEMtRH01)*FrPOC1MALS + (dDecaySM01*NCRatSM01-dNtSMtRH01)*FrPOC1SM01
               dPrPON2MAL = (dDecayMALS*NCRatMALS-dNtEMtRH01)*FrPOC2MALS + (dDecaySM01*NCRatSM01-dNtSMtRH01)*FrPOC2SM01

               dPrPOP1MAL = (dDecayMALS*PCRatMALS-dPtEMtRH01)*FrPOC1MALS + (dDecaySM01*PCRatSM01-dPtSMtRH01)*FrPOC1SM01
               dPrPOP2MAL = (dDecayMALS*PCRatMALS-dPtEMtRH01)*FrPOC2MALS + (dDecaySM01*PCRatSM01-dPtSMtRH01)*FrPOC2SM01

               ! uptake from rhizomes

               Cuptake = (dGrowMALS+dGrowSM01)*Delt*Depth
               IF ( Cuptake .LT. RH01M2-RH01MIN ) THEN
                  dCtRHtMALS = dGrowMALS
                  dCtRHtSM01 = dGrowSM01
               ELSE
                  dCtRHtMALS = 0.0
                  dCtRHtSM01 = 0.0
               ENDIF

               Nuptake = (dGrowMALS*NCratMALS+dGrowSM01*NCratSM01)*Delt*Depth
               IF ( Nuptake .LT. NRH01M2-NRH01MIN ) THEN
                  dNtRHtMALS = dGrowMALS * NCratMALS
                  dNtRHtSM01 = dGrowSM01 * NCratSM01
               ELSE
                  dNtRHtMALS = 0.0
                  dNtRHtSM01 = 0.0
               ENDIF

               Puptake = (dGrowMALS*PCratMALS+dGrowSM01*PCratSM01)*Delt*Depth
               IF ( Puptake .LT. PRH01M2-PRH01MIN ) THEN
                  dPtRHtMALS = dGrowMALS * PCratMALS
                  dPtRHtSM01 = dGrowSM01 * PCratSM01
               ELSE
                  dPtRHtMALS = 0.0
                  dPtRHtSM01 = 0.0
               ENDIF

             

               ! oxygen 

               dMALSOXY   = dGrowSM01 - dCtRHtSM01
               dSM01CO2   = dGrowSM01 - dCtRHtSM01

               FL  ( IdGrowMALS  ) = dGrowMALS
               FL  ( IdGrowSM01  ) = dGrowSM01
               FL  ( IdDecayMALS ) = dDecayMALS
               FL  ( IdDecaySM01 ) = dDecaySM01
               FL  ( IdCtEMtRH01 ) = dCtEMtRH01
               FL  ( IdCtSMtRH01 ) = dCtSMtRH01
               FL  ( IdCtRHtMALS ) = dCtRHtMALS
               FL  ( IdCtRHtSM01 ) = dCtRHtSM01
               FL  ( IdNtEMtRH01 ) = dNtEMtRH01
               FL  ( IdNtSMtRH01 ) = dNtSMtRH01
               FL  ( IdNtRHtMALS ) = dNtRHtMALS
               FL  ( IdNtRHtSM01 ) = dNtRHtSM01
               FL  ( IdPtEMtRH01 ) = dPtEMtRH01
               FL  ( IdPtSMtRH01 ) = dPtSMtRH01
               FL  ( IdPtRHtMALS ) = dPtRHtMALS
               FL  ( IdPtRHtSM01 ) = dPtRHtSM01
               FL  ( IdNH4upMALS ) = dNH4upMALS
               FL  ( IdNO3upMALS ) = dNO3upMALS
               FL  ( IdPO4upMALS ) = dPO4upMALS
               FL  ( IdNupSM01   ) = dNupSM01
               FL  ( IdPupSM01   ) = dPupSM01
               FL  ( IdPrPOC1M01 ) = dPrPOC1M01
               FL  ( IdPrPOC2M01 ) = dPrPOC2M01
               FL  ( IdPrPOC3M01 ) = dPrPOC3M01
               FL  ( IdPrPON1M01 ) = dPrPON1M01
               FL  ( IdPrPON2M01 ) = dPrPON2M01
               FL  ( IdPrPON3M01 ) = dPrPON3M01
               FL  ( IdPrPOP1M01 ) = dPrPOP1M01
               FL  ( IdPrPOP2M01 ) = dPrPOP2M01
               FL  ( IdPrPOP3M01 ) = dPrPOP3M01
               FL  ( IdSM01OXY   ) = dSM01OXY
               FL  ( IdSM01CO2   ) = dSM01CO2
               PMSA( IPNT( 55)   ) = MALSM2
               PMSA( IPNT( 56)   ) = SM01M2
               PMSA( IPNT( 57)   ) = RH01M2
               PMSA( IPNT( 58)   ) = LimNH4MALS
               PMSA( IPNT( 59)   ) = LimNO3MALS
               PMSA( IPNT( 60)   ) = LimPO4MALS
               PMSA( IPNT( 61)   ) = LimNutMALS
               PMSA( IPNT( 62)   ) = LimCO2SM01
               PMSA( IPNT( 63)   ) = LimDLMALS
               PMSA( IPNT( 64)   ) = LimDLSM01
               PMSA( IPNT( 65)   ) = LimTMALS
               PMSA( IPNT( 66)   ) = LimTSM01
            ENDIF
         ENDIF

         IdGrowMALS  = IdGrowMALS  + NOFLUX
         IdGrowSM01  = IdGrowSM01  + NOFLUX
         IdDecayMALS = IdDecayMALS + NOFLUX
         IdDecaySM01 = IdDecaySM01 + NOFLUX
         IdCtEMtRH01 = IdCtEMtRH01 + NOFLUX
         IdCtSMtRH01 = IdCtSMtRH01 + NOFLUX
         IdCtRHtMALS = IdCtRHtMALS + NOFLUX
         IdCtRHtSM01 = IdCtRHtSM01 + NOFLUX
         IdNtEMtRH01 = IdNtEMtRH01 + NOFLUX
         IdNtSMtRH01 = IdNtSMtRH01 + NOFLUX
         IdNtRHtMALS = IdNtRHtMALS + NOFLUX
         IdNtRHtSM01 = IdNtRHtSM01 + NOFLUX
         IdPtEMtRH01 = IdPtEMtRH01 + NOFLUX
         IdPtSMtRH01 = IdPtSMtRH01 + NOFLUX
         IdPtRHtMALS = IdPtRHtMALS + NOFLUX
         IdPtRHtSM01 = IdPtRHtSM01 + NOFLUX
         IdNH4upMALS = IdNH4upMALS + NOFLUX
         IdNO3upMALS = IdNO3upMALS + NOFLUX
         IdPO4upMALS = IdPO4upMALS + NOFLUX
         IdNupSM01   = IdNupSM01   + NOFLUX
         IdPupSM01   = IdPupSM01   + NOFLUX
         IdPrPOC1M01 = IdPrPOC1M01 + NOFLUX
         IdPrPOC2M01 = IdPrPOC2M01 + NOFLUX
         IdPrPOC3M01 = IdPrPOC3M01 + NOFLUX
         IdPrPON1M01 = IdPrPON1M01 + NOFLUX
         IdPrPON2M01 = IdPrPON2M01 + NOFLUX
         IdPrPON3M01 = IdPrPON3M01 + NOFLUX
         IdPrPOP1M01 = IdPrPOP1M01 + NOFLUX
         IdPrPOP2M01 = IdPrPOP2M01 + NOFLUX
         IdPrPOP3M01 = IdPrPOP3M01 + NOFLUX
         IdSM01OXY   = IdSM01OXY   + NOFLUX
         IdSM01CO2   = IdSM01CO2   + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
