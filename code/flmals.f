      SUBROUTINE FLMALS     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'FLMALS' :: FLMALS
C
! was called macrop
! should have been based on macnut actually!
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
      REAL(4) MALS        ! I  MacroALgae Structural biomass                       (gDM/m2)
      REAL(4) MALN        ! I  MacroALgae Nitrogen storage                         (gN/gDM)
      REAL(4) MALP        ! I  MacroALgae phosphorous storage                      (gP/gDM)
      REAL(4) MALC        ! I  MacroALgae carbon storage                           (gC/gDM)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                    (-)
      REAL(4) MALNmin     ! I  minimal N in nitrogen storage                       (gN/gDM)
      REAL(4) MALPmin     ! I  minimal P in phosphorous storage                    (gP/gDM)
      REAL(4) MALCmin     ! I  minimal C in carbon storage                         (gC/gDM)
      REAL(4) Latitude    ! I  latitude of study area                              (degrees)
      REAL(4) daylengthd  ! I  length of current day                               (d)
      REAL(4) daylengthp  ! I  length of previous day                              (d)
      REAL(4) daylengthm  ! I  max day length at this latitude                     (d)
      REAL(4) Temp        ! I  ambient water temperature                           (oC)
      REAL(4) m_1          ! I  MALS growth rate parameter 1                        (-)
      REAL(4) m_2          ! I  MALS growth rate parameter 2                        (-)
      REAL(4) MALS0       ! I  MALS growth rate parameter 3                        (gDM/m2)
      REAL(4) a_1          ! I  MALS photoperiod parameter 1                        (-)
      REAL(4) a_2          ! I  MALS photoperiod parameter 2                        (-)
      REAL(4) mrtMAL      ! I  (epsilon) erosion/mortality parameter macroalgae    (m2/DM)
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                  (gC/gDM)
      REAL(4) NCRatMALS   ! I  Nitrogen to carbon ratio in MALS                    (gN/gC)
      REAL(4) PCRatMALS   ! I  Phosphorous to carbon ratio in MALS                 (gP/gC)
      REAL(4) FrPOC1MALS  ! I  Fraction MALS that goes to POC1 in decay            (-)
      REAL(4) FrPOC2MALS  ! I  Fraction MALS that goes to POC2 in decay            (-)
      REAL(4) MBotSeg     ! I 
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment        (m2)
      REAL(4) DELT        ! I  timestep for processes                             (d)
      REAL(4) Depth       ! I  depth of segment                                   (m)
      REAL(4) MALSM2		! O	 macroalgae structural in segment	                (gDM/m2)
      REAL(4) MALNM2		! O	 macroalgae N storage in segment	                    (gN/gDM)
      REAL(4) MALPM2		! O	 macroalgae P storage in segment	                    (gP/gDM)
      REAL(4) MALCM2		! O	 macroalgae C storage in segment                 	(gC/gDM)
      REAL(4) MALSNC		! O	 ratio N:C in whole plant                            (-)
      REAL(4) MALSPC		! O	 ratio P:C in whole plant                            (-)
      REAL(4) LimBioMALS  ! O  density limitation function                        (-)
      REAL(4) LimPhoMALS  ! O  photoperiod limitation function                    (-)
      REAL(4) LimTemMALS  ! O  temperature limitation function                    (-)
      REAL(4) LocGroS     ! O  local growth of MALS                               (gDM/m3/d)
      REAL(4) LocGroN     ! O  local growth of MALN                               (gN/m3/d)
      REAL(4) LocGroP     ! O  local growth of MALP                               (gP/m3/d)
      REAL(4) LocGroC     ! O  local growth of MALC                               (gC/m3/d)
      REAL(4) dPrPOC1MAL  ! F  POC1 production MALS                               (gC/m3/d)
      REAL(4) dPrPOC2MAL  ! F  POC2 production MALS                               (gC/m3/d)
      REAL(4) dPrPON1MAL  ! F  PON1 production MALS                               (gN/m3/d)
      REAL(4) dPrPON2MAL  ! F  PON2 production MALS                               (gN/m3/d)
      REAL(4) dPrPOP1MAL  ! F  POP1 production MALS                               (gP/m3/d)
      REAL(4) dPrPOP2MAL  ! F  POP2 production MALS                               (gP/m3/d)
      REAL(4) dMALSOXY    ! F  oxygen production MALS                             (gO/m3/d)
      
      INTEGER IdPrPOC1MAL !    Pointer to the POC1 production macrophyt 1
      INTEGER IdPrPOC2MAL !    Pointer to the POC2 production macrophyt 1
      INTEGER IdPrPON1MAL !    Pointer to the PON1 production macrophyt 1
      INTEGER IdPrPON2MAL !    Pointer to the PON2 production macrophyt 1
      INTEGER IdPrPOP1MAL !    Pointer to the POP1 production macrophyt 1
      INTEGER IdPrPOP2MAL !    Pointer to the POP2 production macrophyt 1
      INTEGER IdCnMALSOXY   !    Pointer to the oxygen production MALS

      INTEGER IKMRK1
      INTEGER IKMRK2
      
      REAL(4) dGrowMALS   !    growth of MALS                                     (gDM/m3/d)
      REAL(4) dDecayMALS   !    decay of MALS                                      (gDM/m3/d)
      REAL(4) dNTrMALS    !    translocation of N from MALN to MALS               (gN/m3/d)
      REAL(4) dPTrMALS    !    translocation of P from MALP to MALS               (gP/m3/d)
      REAL(4) dCTrMALS    !    translocation of C from MALC to MALS               (gC/m3/d)
      REAL(4) DL          !    delta day length
      REAL(4) LimDen
      REAL(4) LimTemp
      REAL(4) LimPho
      REAL(4) coeff
      REAL(4) mu
      real(4) mrt
      REAL(4) Clim
      REAL(4) Nlim
      REAL(4) Plim
      REAL(4) NutLim
      REAL(4) TotN
      REAL(4) TotP
      REAL(4) TotC
C
C*******************************************************************************
C
      IPNT        = IPOINT
     
      IdPrPOC1MAL = 1
      IdPrPOC2MAL = 2
      IdPrPON1MAL = 3
      IdPrPON2MAL = 4
      IdPrPOP1MAL = 5
      IdPrPOP2MAL = 6
      IdMALSOXY   = 7
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG

         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         
         ! if active
         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF (FrBmMALS > 0.0) THEN

                ! take from this segment
                FrBmMALS   = PMSA( IPNT(5) )
                MALNmin    = PMSA( IPNT(6) )
                MALPmin    = PMSA( IPNT(7) )
                Latitude   = PMSA( IPNT(8) )
                daylengthd = PMSA( IPNT(9) )
                daylengthp = PMSA( IPNT(10) )
                daylengthm = PMSA( IPNT(11) )
                Temp       = PMSA( IPNT(12) )
                m_1        = PMSA( IPNT(13) )
                m_2        = PMSA( IPNT(14) )
                MALS0      = PMSA( IPNT(15) )
                a_1        = PMSA( IPNT(16) )
                a_2        = PMSA( IPNT(17) )
                mrtMAL     = PMSA( IPNT(18) )
                CDRatMALS  = PMSA( IPNT(19) )
                NCRatMALS  = PMSA( IPNT(20) )
                PCRatMALS  = PMSA( IPNT(21) )
                FrPOC1MALS = PMSA( IPNT(22) )
                FrPOC2MALS = PMSA( IPNT(23) )
                
                MBotSeg    = nint(PMSA( IPNT( 24) ))
                IF (MBotSeg .le. 0)
     j            CALL DHERR2('IBotSeg',PMSA( IPNT( 13) ),ISEG,'COVMAC')

              ! need to take from bottom segment
                MALS       = PMSA( IPNT(1)+(IBotSeg-1)*INCREM( 1) )
                MALN       = PMSA( IPNT(2)+(IBotSeg-1)*INCREM( 2) )
                MALP       = PMSA( IPNT(3)+(IBotSeg-1)*INCREM( 3) )
                MALC       = PMSA( IPNT(4)+(IBotSeg-1)*INCREM( 4) )
              
                ! check input

!                IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
!                IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
              
                ! find amount of mass in this segment 
               
                MALS = MALS * FrBmMALS
               
                ! density limitation
               
                LimDen = MIN((m_1 * exp(-(MALS/MALS0)**2)) + m_2, 1.0)
               
                ! temperature limitation

                IF ( Temp .gt. -1.8 .AND. Temp .lt. 10.0 ) THEN
                    LimTemp = 0.08 * Temp + 0.2
                ELSE IF ( Temp .ge. 10.0 .AND. Temp .le. 15.0 ) THEN
                    LimTemp   = 1.0
                ELSE IF ( Temp .gt. 15.0 .AND. Temp .le. 19.0 ) THEN
                    LimTemp = 19.0/4.0 - Temp/4.0
                ELSE IF ( Temp .gt. 19.0) THEN
                    LimTemp= 0.0
                ENDIF
               
                ! photoperiod limitation
                
                DL = (daylengthd - daylengthp) /daylengthm           
                LimPho = a_1 * (1 + sin(dL * ABS(dL)**0.5)) + a_2
               
                ! decay
                
                coeff = exp(mrtMAL*MALS)
                mrt = 10e-6*coeff/(1 + 10e-6*(coeff - 1 ))
                dDecayMALS = MALS * mrt/Depth
               
                ! production organic material
                
                dPrPOC1MAL = (dDecayMALS*CDRatMALS)*FrPOC1MALS 
                dPrPOC2MAL = (dDecayMALS*CDRatMALS)*FrPOC2MALS 

                dPrPON1MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*FrPOC1MALS
                dPrPON2MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*FrPOC2MALS 

                dPrPOP1MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*FrPOC1MALS
                dPrPOP2MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*FrPOC2MALS

                ! growth
                ! mortality products are produced regardless 
                
                Clim = 1-MALCmin/MALC
                Nlim = 1-MALNmin/MALN
                Plim = 1-MALPmin/MALP
                NutLim = MIN(Nlim,Clim,Plim)
                mu = LimDen * LimPho * LimTemp * NutLim
                IF (mu .gt. 0.0) THEN
                    dGrowMALS = MALS * (mu)/Depth
                ELSE
                    dGrowMALS = 0.0
                ENDIF
                
               
                ! uptake from storage
                IF (dGrowMALS .gt. 0.0) THEN
                    TotN = MALS*(MALN+CDRatMALS*NCRatMALS)
                    dNtrMALS=mu*TotN
                    TotP = MALS*(MALP+CDRatMALS*PCRatMALS)
                    dPtrMALS=mu*TotP
                    TotC = MALS*(MALC+CDRatMALS)
                    dCtrMALS=mu*TotP       
                ELSE
                    dNtrMALS=0.0
                    dPtrMALS=0.0
                    dCtrMALS=0.0
                ENDIF
 
                LocGroS = dGrowMALS - dDecayMALS
                LocGroN = dNtrMALS
                LocGroP = dPtrMALS
                LocGroC = dCtrMALS
                
                ! oxygen 
                ! mineralization of stored carbon consumes
                
                dMALSOXY   = dCtrMALS * 2.67

                FL ( IdPrPOC1MAL ) = dPrPOC1MAL 
                FL ( IdPrPOC2MAL ) = dPrPOC2MAL 
                FL ( IdPrPON1MAL ) = dPrPON1MAL 
                FL ( IdPrPON2MAL ) = dPrPON2MAL 
                FL ( IdPrPOP1MAL ) = dPrPOP1MAL 
                FL ( IdPrPOP2MAL ) = dPrPOP1MAL 
                FL ( IdCnMALSOXY   ) = dMALSOXY
               
                PMSA( IPNT( 27)   ) =  MALSM2		
                PMSA( IPNT( 28)   ) =  MALNM2		
                PMSA( IPNT( 29)   ) =  MALPM2		
                PMSA( IPNT( 30)   ) =  MALCM2		
                PMSA( IPNT( 31)   ) =  MALSNC		
                PMSA( IPNT( 32)   ) =  MALSPC		
                PMSA( IPNT( 33)   ) =  LimBioMALS  
                PMSA( IPNT( 34)   ) =  LimPhoMALS  
                PMSA( IPNT( 35)   ) =  LimTemMALS 
                PMSA( IPNT( 36)   ) =  LocGroS     
                PMSA( IPNT( 37)   ) =  LocGroN    
                PMSA( IPNT( 38)   ) =  LocGroP    
                PMSA( IPNT( 39)   ) =  LocGroC     
            ENDIF
         ENDIF

         IdPrPOC1MAL = IdPrPOC1MAL + NOFLUX
         IdPrPOC2MAL = IdPrPOC2MAL + NOFLUX
         IdPrPON1MAL = IdPrPON1MAL + NOFLUX
         IdPrPON2MAL = IdPrPON2MAL + NOFLUX
         IdPrPOP1MAL = IdPrPOP1MAl + NOFLUX
         IdPrPOP2MAL = IdPrPOP2MAL + NOFLUX
         IdCnMALSOXY = IdCnMALSOXY + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
