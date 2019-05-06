      SUBROUTINE FLMALS     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'FLMALS' :: FLMALS
C
C*******************************************************************************
C
      IMPLICIT NONE
C
C     Type    Name         I/O Description
C
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT(60)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(60)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 60)   !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
C
C*******************************************************************************
C
C     Type    Name         I/O Description                                        Unit
C
      REAL(4) MALS        ! I  MacroALgae Structural biomass                       (gDM/m2)
      REAL(4) MALN        ! I  MacroALgae Nitrogen storage                         (gN/m2)
      REAL(4) MALP        ! I  MacroALgae phosphorous storage                      (gP/m2)
      REAL(4) MALC        ! I  MacroALgae carbon storage                           (gC/m2)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                    (-)
      REAL(4) MALNmin     ! I  minimal N in nitrogen storage                       (gN/gDM)
      REAL(4) MALPmin     ! I  minimal P in phosphorous storage                    (gP/gDM)
      REAL(4) MALCmin     ! I  minimal C in carbon storage                         (gC/gDM)
      REAL(4) Latitude    ! I  latitude of study area                              (degrees)
      REAL(4) daylengthd  ! I  length of current day                               (d)
      REAL(4) daylengthp  ! I  length of previous day                              (d)
      REAL(4) daylengthm  ! I  max day length at this latitude                     (d)
      REAL(4) Temp        ! I  ambient water temperature                           (oC)
      REAL(4) m_1         ! I  MALS growth rate parameter 1                        (-)
      REAL(4) m_2         ! I  MALS growth rate parameter 2                        (-)
      REAL(4) HactMAL     ! I  Length of frond in this column                      (m)
      REAL(4) TotAreMAL   ! I  area of frond in this column                        (m2)
      REAL(4) nFrond      ! I  number of fronds per m2                             (1/m2)
      REAL(4) MALS0       ! I  MALS growth rate parameter 3                        (gDM/m2)
      REAL(4) a_1         ! I  MALS photoperiod parameter 1                        (-)
      REAL(4) a_2         ! I  MALS photoperiod parameter 2                        (-)
      REAL(4) mrtMAL      ! I  (epsilon) erosion/mortality parameter macroalgae    (m2/DM)
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                  (gC/gDM)
      REAL(4) NCRatMALS   ! I  Nitrogen to carbon ratio in MALS                    (gN/gC)
      REAL(4) PCRatMALS   ! I  Phosphorous to carbon ratio in MALS                 (gP/gC)
      REAL(4) Kn          ! I  mass of nitrogen reserves per gram nitrogen         (gN/gN)
      REAL(4) Kc          ! I  mass of carbon reserves per gram carbon             (gC/gC)
      REAL(4) Kdw         ! I  structural dry weight per unit frond area           (-)
      REAL(4) FrPOC1MALS  ! I  Fraction MALS that goes to POC1 in decay            (-)
      REAL(4) FrPOC2MALS  ! I  Fraction MALS that goes to POC2 in decay            (-)
      REAL(4) MBotSeg     ! I  bottom segment for this segment                    
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment         (m2)
      REAL(4) DELT        ! I  timestep for processes                              (d)
      REAL(4) Depth       ! I  depth of segment                                    (m)
      
      REAL(4) MALNDMS		! O	 macroalgae N storage in segment                     (gN/gDM)
      REAL(4) MALPDMS		! O	 macroalgae P storage in segment                     (gP/gDM)
      REAL(4) MALCDMS		! O	 macroalgae C storage in segment                 	 (gC/gDM)
      REAL(4) MALSNC		! O	 ratio N:C in whole plant                            (-)
      REAL(4) MALSPC		! O	 ratio P:C in whole plant                            (-)
      REAL(4) MALSCDM		! O	 ratio C:DM in whole plant                           (-)
      REAL(4) MALSNDM		! O	 ratio N:DM in whole plant                           (-)
      REAL(4) MALSPDM		! O	 ratio P:DM in whole plant                           (-)      
      REAL(4) LimBioMALS  ! O  density limitation function                         (-)
      REAL(4) LimPhoMALS  ! O  photoperiod limitation function                     (-)
      REAL(4) LimTemMALS  ! O  temperature limitation function                     (-)
      REAL(4) LocGroS     ! O  local growth of MALS                                (gDM/m3/d)
      REAL(4) LocGroN     ! O  local growth of MALN                                (gN/m3/d)
      REAL(4) LocGroP     ! O  local growth of MALP                                (gP/m3/d)
      REAL(4) LocGroC     ! O  local growth of MALC                                (gC/m3/d)
      
      REAL(4) dPrPOC1MAL  ! F  POC1 production MALS                                (gC/m3/d)
      REAL(4) dPrPOC2MAL  ! F  POC2 production MALS                                (gC/m3/d)
      REAL(4) dPrPON1MAL  ! F  PON1 production MALS                                (gN/m3/d)
      REAL(4) dPrPON2MAL  ! F  PON2 production MALS                                (gN/m3/d)
      REAL(4) dPrPOP1MAL  ! F  POP1 production MALS                                (gP/m3/d)
      REAL(4) dPrPOP2MAL  ! F  POP2 production MALS                                (gP/m3/d)
      REAL(4) dCnOXYMAL   ! F  oxygen production MALS                              (gO/m3/d)
      
      INTEGER IdPrPOC1MAL !    Pointer to the POC1 production macrophyt 1
      INTEGER IdPrPOC2MAL !    Pointer to the POC2 production macrophyt 1
      INTEGER IdPrPON1MAL !    Pointer to the PON1 production macrophyt 1
      INTEGER IdPrPON2MAL !    Pointer to the PON2 production macrophyt 1
      INTEGER IdPrPOP1MAL !    Pointer to the POP1 production macrophyt 1
      INTEGER IdPrPOP2MAL !    Pointer to the POP2 production macrophyt 1
      INTEGER IdCnOXYMAL !    Pointer to the oxygen production MALS
      INTEGER IdGrMALS     
      INTEGER IdGrMALN     
      INTEGER IdGrMALP     
      INTEGER IdGrMALC  
      INTEGER FLCREM

      INTEGER IKMRK1
      INTEGER IKMRK2
      
      REAL(4) LocAreMAL
      REAL(4) dGrowMALS   !    growth of MALS                                     (gDM/m3/d)
      REAL(4) dDecayMALS  !    decay of MALS                                      (gDM/m3/d)
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
      REAL(4) LimC
      REAL(4) LimN
      REAL(4) LimP
      REAL(4) LimNut
      REAL(4) TotN
      REAL(4) TotP
      REAL(4) TotC
      REAL(4) Wdry
      REAL(4) Wwet
      REAL(4) chk

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
      IdCnOXYMAL  = 7
      IdGrMALS    = 8 
      IdGrMALN    = 9 
      IdGrMALP    = 10 
      IdGrMALC    = 11
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG

         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         
         ! if active
         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
            ! compute growth if maldis has allocated mass to this segment

            FrBmMALS   = PMSA( IPNT(5) )

            IF (FrBmMALS > 0.0) THEN

                ! take from this segment
                MALNmin    = PMSA( IPNT(6) )
                MALPmin    = PMSA( IPNT(7) )
                MALCmin    = PMSA( IPNT(8) )
                Latitude   = PMSA( IPNT(9) )
                daylengthd = PMSA( IPNT(10) )
                daylengthp = PMSA( IPNT(11) )
                daylengthm = PMSA( IPNT(12) )
                Temp       = PMSA( IPNT(13) )
                m_1        = PMSA( IPNT(14) )
                m_2        = PMSA( IPNT(15) )
                HactMAL    = PMSA( IPNT(16) )
                TotAreMAL  = PMSA( IPNT(17) )
                nFrond     = PMSA( IPNT(18) )
                MALS0      = PMSA( IPNT(19) )
                a_1        = PMSA( IPNT(20) )
                a_2        = PMSA( IPNT(21) )
                mrtMAL     = PMSA( IPNT(22) )
                CDRatMALS  = PMSA( IPNT(23) )
                NCRatMALS  = PMSA( IPNT(24) )
                PCRatMALS  = PMSA( IPNT(25) )
                Kn         = PMSA( IPNT(26) )
                Kc         = PMSA( IPNT(27) )
                Kdw        = PMSA( IPNT(28) )
                FrPOC1MALS = PMSA( IPNT(29) )
                FrPOC2MALS = PMSA( IPNT(30) )
                MBotSeg    = nint(PMSA( IPNT( 31) ))
                Surf       = PMSA( IPNT(32) )     
                DELT       = PMSA( IPNT(33) )      
                Depth      = PMSA( IPNT(34) )   

                ! need to take from bottom segment
                MALS       = PMSA( IPNT(1)+(MBotSeg-ISEG)*INCREM( 1) )
                MALN       = PMSA( IPNT(2)+(MBotSeg-ISEG)*INCREM( 2) )
                MALP       = PMSA( IPNT(3)+(MBotSeg-ISEG)*INCREM( 3) )
                MALC       = PMSA( IPNT(4)+(MBotSeg-ISEG)*INCREM( 4) )
                
                ! need to convert storage substance from gX/m2 to gX/gDM
                ! to be consistent with constants from Broch
                ! gX/m2 to gX/gDM
                
                MALN = MALN / MALS ! gN/m2 to gN/gDM
                MALP = MALP / MALS ! gP/m2 to gP/gDM
                MALC = MALC / MALS ! gC/m2 to gC/gDM
                
                MALNDMS = MALN
                MALPDMS = MALP
                MALCDMS = MALC
                ! valid with assumption that storage content is homogeneous
                            
                ! find amount of mass in this segment (gDM/m2)
   
                MALS = MALS * FrBmMALS 
                LocAreMAL = TotAreMAL / Surf
                
                ! density limitation
                ! if the plant is too big overall then all segments suffer
                ! area is in m2 and MALS0 is in m2 as well
                
               LimDen=m_1*exp(-1*((LocAreMAL/(MALS0*nFrond))**2))+m_2
                
                ! temperature limitation

                IF ( Temp .ge. -1.8 .AND. Temp .lt. 10.0 ) THEN
                    LimTemp = 0.08 * Temp + 0.2
                ELSE IF ( Temp .ge. 10.0 .AND. Temp .le. 15.0 ) THEN
                    LimTemp   = 1.0
                ELSE IF ( Temp .gt. 15.0 .AND. Temp .le. 19.0 ) THEN
                    LimTemp = 19.0/4.0 - Temp/4.0
                ELSE IF ( Temp .gt. 19.0) THEN
                    LimTemp= 0.0
                ENDIF
               
                ! photoperiod limitation
                DL = (daylengthd - daylengthp) / daylengthm

                LimPho = a_1 * (1 + sin(DL) *(ABS(DL))**0.5) + a_2
               
                ! decay
                ! decay is calculated as a percent of the total frond decay
                ! m2 to dm2
                ! mrtMAL is per plant per dm2, so convert accordingly
                coeff = exp(mrtMAL*LocAreMAL*100/nFrond)
                ! not stated in paper but this has to be per day
                ! it looks unitless in paper
                mrt = 10e-6*coeff/(1 + (10e-6)*(coeff - 1 ))
                ! local decay
                ! since all segments are doing this, only send the fraction
                ! as it will be compared to the local growth
                ! gDM/(m2 d)
                dDecayMALS = mrt * MALS * FrBmMALS
               
                ! production organic material
                ! g/(m3 d)
                dPrPOC1MAL = (dDecayMALS*CDRatMALS)*FrPOC1MALS/Depth 
                dPrPOC2MAL = (dDecayMALS*CDRatMALS)*FrPOC2MALS/Depth 

                dPrPON1MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*
     &                FrPOC1MALS/Depth
                dPrPON2MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*
     &                FrPOC2MALS/Depth
                dPrPOP1MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*
     &               FrPOC1MALS/Depth
                dPrPOP2MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*
     &                FrPOC2MALS/Depth

                ! growth
                ! mortality products are produced regardless of net prod-mort
                IF (MALN .lt. MALNmin) THEN
                    write(*,*) 'ERROR: MALN (gN/gDM) LESS THAN MALNmin'
                ENDIF
                !IF (MALP .lt. MALPmin) THEN
                !    write(*,*) 'ERROR: MALP (gP/gDM) LESS THAN MALPmin'
                !ENDIF
                IF (MALC .lt. MALCmin) THEN
                    write(*,*) 'ERROR: MALC (gC/gDM) LESS THAN MALCmin'
                ENDIF           
                
                ! storage limitations
                ! adding this in to get the actual max growth rate stipulated by broch
                LimN = MAX(1-(MALNmin/(MALN)), 0.0)
                LimP = MAX(1-(MALPmin/MALP), 0.0)
                LimP = 1.0
                LimC = MAX(1-(MALCmin/MALC), 0.0)
                
                LimNut = MIN(LimN,LimC)
                
                mu = LimDen * LimPho * LimTemp * LimNut
                
                IF (mu .gt. 0.0) THEN
                    ! gDM/(m2 d)
                    dGrowMALS = mu * MALS
                ELSE
                    dGrowMALS = 0.0
                ENDIF
                
                ! uptake from storage
                IF (dGrowMALS .gt. 0.0) THEN
                    ! TotN = gN/m2
                    TotN = MALS*(MALN + (CDRatMALS*NCRatMALS))
                    dNtrMALS=mu*TotN
                    ! TotP = gP/m2
                    TotP = MALS*(MALP + CDRatMALS*PCRatMALS)
                    dPtrMALS=mu*TotP
                    ! TotC = 
                    TotC = MALS*(MALC + CDRatMALS)
                    dCtrMALS=mu*TotC      
                ELSE
                    dNtrMALS=0.0
                    dPtrMALS=0.0
                    dCtrMALS=0.0
                ENDIF
                dPtrMALS=0.0

                ! gDM/(m2 d), sent to bottom
                LocGroS = dGrowMALS - dDecayMALS
                LocGroN = MIN(dNtrMALS,MALN)
                LocGroP = dPtrMALS
                LocGroC = dCtrMALS
                
                Wdry = MALS * (1 + Kn*(MALN - (MALNmin))
     &           + MALNmin + Kc*(MALC - MALCmin)+ MALCmin)
                
                Wwet = MALS * (1/Kdw + Kn*(MALN - (MALNmin))
     &           + MALNmin + Kc*(MALC - MALCmin) + MALCmin)
                ! N:C ratio
                MALSNC = TotN/TotC
                ! P:C ratio
                MALSPC = TotP/TotC
                ! C:DM ratio
                MALSCDM = TotC/Wdry
                ! N:DM ratio
                MALSNDM = TotN/Wdry		
                ! P:DM ratio
                MALSPDM = TotP/Wdry	
                
                ! oxygen 
                ! mineralization of stored carbon consumes oxygen
                ! assigned own flux because it occurs in this segment
                ! and is the result of gross growth (translocation)
                ! and not net growth, which LocGroS is
                
                dCnOXYMAL   = dCtrMALS * 2.67/Depth
                                
                FL ( IdPrPOC1MAL ) = dPrPOC1MAL 
                FL ( IdPrPOC2MAL ) = dPrPOC2MAL 
                FL ( IdPrPON1MAL ) = dPrPON1MAL 
                FL ( IdPrPON2MAL ) = dPrPON2MAL 
                FL ( IdPrPOP1MAL ) = dPrPOP1MAL 
                FL ( IdPrPOP2MAL ) = dPrPOP2MAL 
                FL ( IdCnOXYMAL )  = dCnOXYMAL
                
                ! allocate to bottom segment flux address
                FLCREM = (MBotSeg-ISEG)*NOFLUX
                FL(IdGrMALS + FLCREM) = FL(IdGrMALS + FLCREM)  + LocGroS
                FL(IdGrMALN + FLCREM) = FL(IdGrMALN + FLCREM ) + LocGroN
                FL(IdGrMALP + FLCREM) = FL(IdGrMALP + FLCREM)  + LocGroP
                FL(IdGrMALC + FLCREM) = FL(IdGrMALC + FLCREM)  + LocGroC
                                  
                PMSA( IPNT( 35)   ) =  MALNDMS		
                PMSA( IPNT( 36)   ) =  MALPDMS		
                PMSA( IPNT( 37)   ) =  MALCDMS		
                PMSA( IPNT( 38)   ) =  MALSNC		
                PMSA( IPNT( 39)   ) =  MALSPC	
                PMSA( IPNT( 40)   ) =  MALSCDM
                PMSA( IPNT( 41)   ) =  MALSNDM
                PMSA( IPNT( 42)   ) =  MALSPDM
                PMSA( IPNT( 43)   ) =  LimDen
                PMSA( IPNT( 44)   ) =  LimPho  
                PMSA( IPNT( 45)   ) =  LimTemp 
                PMSA( IPNT( 46)   ) =  LimN  
                PMSA( IPNT( 47)   ) =  LimP  
                PMSA( IPNT( 48)   ) =  LimC   
                PMSA( IPNT( 49)   ) =  LimNut  
                PMSA( IPNT( 50)   ) =  mu    
                PMSA( IPNT( 51)   ) =  dGrowMALS     
                PMSA( IPNT( 52)   ) =  LocGroS
                PMSA( IPNT( 53)   ) =  dDecayMALS
                PMSA( IPNT( 54)   ) =  LocGroN    
                PMSA( IPNT( 55)   ) =  LocGroP    
                PMSA( IPNT( 56)   ) =  LocGroC 
                PMSA( IPNT( 57)   ) =  Wdry  
                PMSA( IPNT( 58)   ) =  Wwet    
                PMSA( IPNT( 59)   ) =  Wdry*Surf  
                PMSA( IPNT( 60)   ) =  Wwet*Surf      
            ELSE
                PMSA( IPNT( 35)   ) =  0.0		
                PMSA( IPNT( 36)   ) =  0.0		
                PMSA( IPNT( 37)   ) =  0.0		
                PMSA( IPNT( 38)   ) =  0.0		
                PMSA( IPNT( 39)   ) =  0.0	
                PMSA( IPNT( 40)   ) =  0.0
                PMSA( IPNT( 41)   ) =  0.0
                PMSA( IPNT( 42)   ) =  0.0
                PMSA( IPNT( 43)   ) =  0.0
                PMSA( IPNT( 44)   ) =  0.0  
                PMSA( IPNT( 45)   ) =  0.0 
                PMSA( IPNT( 46)   ) =  0.0  
                PMSA( IPNT( 47)   ) =  0.0  
                PMSA( IPNT( 48)   ) =  0.0   
                PMSA( IPNT( 49)   ) =  0.0  
                PMSA( IPNT( 50)   ) =  0.0   
                PMSA( IPNT( 51)   ) =  0.0     
                PMSA( IPNT( 52)   ) =  0.0
                PMSA( IPNT( 53)   ) =  0.0
                PMSA( IPNT( 54)   ) =  0.0    
                PMSA( IPNT( 55)   ) =  0.0    
                PMSA( IPNT( 56)   ) =  0.0 
                PMSA( IPNT( 57)   ) =  0.0  
                PMSA( IPNT( 58)   ) =  0.0    
                PMSA( IPNT( 59)   ) =  0.0  
                PMSA( IPNT( 60)   ) =  0.0      
            ENDIF
          ENDIF
            
          IdPrPOC1MAL = IdPrPOC1MAL + NOFLUX
          IdPrPOC2MAL = IdPrPOC2MAL + NOFLUX
          IdPrPON1MAL = IdPrPON1MAL + NOFLUX
          IdPrPON2MAL = IdPrPON2MAL + NOFLUX
          IdPrPOP1MAL = IdPrPOP1MAl + NOFLUX
          IdPrPOP2MAL = IdPrPOP2MAL + NOFLUX
          IdCnOXYMAL  = IdCnOXYMAL  + NOFLUX  
          IdGrMALS    = IdGrMALS    + NOFLUX 
          IdGrMALN    = IdGrMALN    + NOFLUX 
          IdGrMALP    = IdGrMALP    + NOFLUX 
          IdGrMALC    = IdGrMALC    + NOFLUX 
          
          IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
