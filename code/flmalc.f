      SUBROUTINE FLMALC     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'FLMALC' :: FLMALC
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
      INTEGER IPOINT(30)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(30)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 30)   !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
C
C*******************************************************************************
C
C     Type    Name         I/O Description                                        Unit
C
      REAL(4) MALS        ! I  MacroALgae Structural biomass                        (gDM/m2)
      REAL(4) MALC        ! I  MacroALgae carbon storage                            (gC/m2)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                     (-)
      REAL(4) MALCmin     ! I  minimal C in carbon storage                          (gC/gDM)
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                   (gC/gDM)
      REAL(4) ArDenMAL    ! I grams per m2 surface area of plant (Broch)            (gDM/m2)
      REAL(4) Temp	    ! I  Water temperature                                    (degC)
      REAL(4) R1          ! I  Reference respiration rate at T1                     (gC/m2 d)
      REAL(4) R2          ! I  Reference respiration rate at T2                     (gC/m2 d)
      REAL(4) Tr1         ! I	 reference temperature 1 for respiration              (K)
      REAL(4) Tr2	        ! I  reference temperature 2 for respiration              (K)
      REAL(4) P1          ! I  Reference photosynthetic rate at T1                  (gC/m2 d)
      REAL(4) P2          ! I  Reference photosynthetic rate at T2                  (gC/m2 d)
      REAL(4) Tp1         ! I  temperature for reference photosynthetic rate 1      (K)
      REAL(4) Tp2         ! I  temperature for reference photosynthetic rate 1      (K)
      REAL(4) Tap	        ! I  Arrhenius temperature for photosynthesis             (K)
      REAL(4) Taph        ! I	 Arrhenius temperature for photosynthesis at high end (K)
      REAL(4) Tapl        ! I	 Arrhenius temperature for photosynthesis at low end  (K)
      REAL(4) Tar         ! I	 Arrhenius temperature for respiration                (K)
      REAL(4) Rad       	! I  irradiation at the segment upper boundary            (W/m2)
      REAL(4) ExtVl       ! I  total extinction coefficient of visible light        (1/m)
      REAL(4) alpha       ! I	 photosynthetic efficiency                            (gC/m2 d/ (umol photons m-2 s-1)-1
      REAL(4) Isat        ! I	 light intensity where photosynthesis is at max       (umol photons m-2 s-1)	
      REAL(4) exuMALC     ! I  exudation parameter                                  (gC/g)
      !REAL(4) MBotSeg     ! I  bottem segment for this column
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment          (m2)
      REAL(4) DELT        ! I  timestep for processes                               (d)
      REAL(4) Depth       ! I  depth of segment                                     (m)
      REAL(4) LocalDepth  ! I  depth of segment below surface                       (m)

      REAL(4) LocUpC      ! O
      
      REAL(4) dMALTIC     ! F  HCO3 uptake MALN                                       (gC/m3/d)
      REAL(4) dMALDOC     ! F  Exudate MALN                                           (gC/m3/d)
      REAL(4) dPrMALOXY    ! F  OXY production                                        (gC/m3/d)

      INTEGER IdUpMALTIC !   
      INTEGER IdPrMALDOC !   
      INTEGER IdPrMALOXY !   
      
      INTEGER MBotSeg
      
      REAL(4) I       	
      REAL(4) P	
      REAL(4) Ps    
      REAL(4) Pmax
      REAL(4) PmaxT
      REAL(4) PmaxB
      REAL(4) beta
      REAL(4) R
      REAL(4) E
      REAL(4) Tpl
      REAL(4) Tph
      REAL(4) alpha0

      INTEGER IKMRK1
      INTEGER IKMRK2
C
C*******************************************************************************
C
      IPNT        = IPOINT
     
      IdUpMALTIC   = 1
      IdPrMALDOC   = 2
      IdPrMALOXY   = 3
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG
         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         ! if active
         IF (IKMRK1.EQ.1) THEN
            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF (FrBmMALS > 0.0) THEN
                ! take from current segment
                FrBmMALS   = PMSA( IPNT(  3) )
                MALCmin    = PMSA( IPNT(  4) )
                CDRatMALS  = PMSA( IPNT(  5) ) 
                ArDenMAL   = PMSA( IPNT(  6) )
                Temp	     = PMSA( IPNT(  7) )
                R1         = PMSA( IPNT(  8) )
                R2         = PMSA( IPNT(  9) )
                Tr1        = PMSA( IPNT(  10) )
                Tr2	     = PMSA( IPNT(  11) )
                P1         = PMSA( IPNT(  12) )
                P2         = PMSA( IPNT(  13) )
                Tp1        = PMSA( IPNT(  14) )
                Tp2        = PMSA( IPNT(  15) )
                Tap	     = PMSA( IPNT(  16) )
                Taph       = PMSA( IPNT(  17) )
                Tapl       = PMSA( IPNT(  18) )
                Tar        = PMSA( IPNT(  19) )
                Rad      	 = PMSA( IPNT(  20) )
                ExtVl	     = PMSA( IPNT(  21) )
                alpha      = PMSA( IPNT(  22) )
                Isat       = PMSA( IPNT(  23) )
                exuMALC    = PMSA( IPNT(  24) )
                Surf       = PMSA( IPNT(  26) )
                DELT       = PMSA( IPNT(  27) )
                Depth      = PMSA( IPNT(  28) )
                LocalDepth = PMSA( IPNT(  29) )
              
                MBotSeg    = nint(PMSA( IPNT( 25) ))
                !IF (MBotSeg .le. 0) THEN
                !  CALL DHERR2('MBotSeg',PMSA( IPNT( 27) ),ISEG,'FLMALS')
                !END IF
         
                ! need to take from bottom segment
                MALS       = PMSA( IPNT(1)+(MBotSeg-1)*INCREM( 1) )
                MALC       = PMSA( IPNT(2)+(MBotSeg-1)*INCREM( 2) )
                ! check input

!               IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
!               IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
              
                ! need to convert substances of gC/m2 to gC/gDM
                ! to be consistent with constants from Broch
                ! this line shows how we assume the entire plant will have the
                ! same abundance of nitrogen and carbon stores
                ! along the length
                MALC = MALC / MALS ! gC/m2 to gC/gDM
                ! since the storage is relative the amount of DM,
                ! we calculate how much DM there is in this segment
                MALS = MALS * FrBmMALS
               
                ! gross photosynthesis
                
                ! integrate the radiation decay function between z2 (local depth, botom)
                ! and m1 (Localdepth - segment depth, top)
                ! Radiation at top is Rad
                I = -Rad/(ExtVl * Depth) * (exp(-ExtVl * LocalDepth) - 
     &           exp(-ExtVl * (LocalDepth - Depth)))
                ! need to convert to correct units
                ! 1 W/m2 = 4.57 umol photons m-2 s-1
                ! assumption is data supplied consistent with saturation value
                I = I * 4.57 ! umol/m2s
                Isat = Isat * 4.57 ! umol/m2s
                Temp = Temp + 273
                ! P1 = P1 / 2400.0
                Tpl = 283.0
                Tph = 303.0
                alpha0 = 0.0000375
                Pmax = P1 * exp((Tap/Tp1) - (Tap/Temp))/
     &           (1 + exp((Tapl/Temp) - (Tapl/Tpl)) + 
     &           exp((Taph/Tph) - (Taph/Temp)))
                
                ! solve for beta using newton's method
                ! if we were we could need to use original units for P1 Pmax, alpha and beta
                beta = 1.023d-7
                ! P1 = P1 / 2400.0

!                DO 1200 iter = 1, 10
!                  Pmax = (alpha*Isat/ln(1+alpha0/beta) * 
!     &            (alpha0/(alph0a+beta)) * 
!     &             (beta/(alpha0+beta))**(beta/alpha0)
!                (0.0000375*200/log(1+0.0000375/x)) * (0.0000375/(0.0000375+x)) * (x/(0.0000375+x))^(x/0.0000375)
                  
                Ps = alpha*Isat/LOG(1+alpha0/beta)  
                ! gC/m2/day
                P = Ps * (1-exp(-alpha*I/Ps))*exp(-beta*I/Ps)
                
                ! all rates will as per the paper yield rates
                ! of gC/gDM day
                ! multiply by MALS and divide by depth to get gC/m3 d
                
                ! respiration gC/m3 d
                R = R1 * exp(Tar/Tr1 - Tar/Temp)
               
                ! exudation gC/m3 d
                
                E = 1-exp(exuMALC*(MALCmin - MALC))
                
                ! effect on TIC is net of production and maintenance respiration
                ! growth respiration is included in FLMALS
                ! TIC gets converted (lost) to DOC in exudate

                dMALTIC = ((MALS/ArDenMAL)/Depth) * (P - R) 

                ! exudate is produced as DOC, E is a fraction of production
                
                dMALDOC = ((MALS/ArDenMAL)/Depth) * P * E 
                
                ! uptake into storage
                LocUpC = ((MALS/ArDenMAL)/Depth) * P * (1-E) - R
                
                ! oxygen 
                ! photosynthesis produces oxygen, respiration consumes
                ! look to TIC to see what the balance is
                
                dPrMALOXY   = 2.67 * dMALTIC

                FL ( IdUpMALTIC   ) = dMALTIC
                FL ( IdPrMALDOC   ) = dMALDOC
                FL ( IdPrMALOXY   ) = dPrMALOXY

                PMSA( IPNT( 30)   ) = LocUpC
                
            ENDIF
          ENDIF
            
         IdUpMALTIC   = IdUpMALTIC + NOFLUX
         IdPrMALDOC   = IdPrMALDOC + NOFLUX
         IdPrMALOXY   = IdPrMALOXY + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
