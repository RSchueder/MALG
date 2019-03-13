      SUBROUTINE FLMALC     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'FLMALC' :: FLMALC
C
C*******************************************************************************
C
      IMPLICIT NONE
C
C     Type    Name         I/O Description
C
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT(36)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(36)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 36)   !    Local work array for the pointering
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
      REAL(4) RadSurf     ! I  irradiation at the water surface                     (W/m2)
      REAL(4) ExtVl       ! I  total extinction coefficient of visible light        (1/m)
      REAL(4) alpha       ! I	 photosynthetic efficiency                            (gC/m2 d/ (umol photons m-2 s-1)-1
      REAL(4) Isat        ! I	 light intensity where photosynthesis is at max       (umol photons m-2 s-1)	
      REAL(4) exuMALC     ! I  exudation parameter                                  (gC/g)
      !REAL(4) MBotSeg     ! I  bottem segment for this column
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment          (m2)
      REAL(4) DELT        ! I  timestep for processes                               (d)
      REAL(4) Depth       ! I  depth of segment                                     (m)
      REAL(4) LocalDepth  ! I  depth of segment below surface                       (m)
      
      REAL(4) Itip        ! O
      REAL(4) Itipu       ! O
      REAL(4) BrochP      ! O
      REAL(4) LocUpC      ! O
      REAL(4) GrosMALC    ! O 
      REAL(4) RespMALC    ! O
      REAL(4) ExudMALC    ! O
      
      REAL(4) dMALTIC     ! F  HCO3 uptake MALN                                       (gC/m3/d)
      REAL(4) dMALDOC     ! F  Exudate MALN                                           (gC/m3/d)
      REAL(4) dPrMALOXY    ! F  OXY production                                        (gC/m3/d)
      REAL(4) dStrMALC

      INTEGER IdUpMALTIC !   
      INTEGER IdPrMALDOC !   
      INTEGER IdPrMALOXY !   
      INTEGER IdStrMALC  !
      INTEGER IdCanMALS  ! Canibalization of MALS in respiration
      INTEGER FLCREM
      
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
      REAL(4) areaLoc

      INTEGER IKMRK1
      INTEGER IKMRK2
C
C*******************************************************************************
C
      IPNT         = IPOINT
     
      IdUpMALTIC   = 1
      IdPrMALDOC   = 2
      IdPrMALOXY   = 3
      IdStrMALC    = 4
      IdCanMALS    = 5
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG
         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         ! if active
         IF (IKMRK1.EQ.1) THEN
            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
            FrBmMALS   = PMSA( IPNT(  3) )

            IF (FrBmMALS > 0.0) THEN
                ! take from current segment
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
                RadSurf  	 = PMSA( IPNT(  20) )
                ExtVl	     = PMSA( IPNT(  21) )
                alpha      = PMSA( IPNT(  22) )
                Isat       = PMSA( IPNT(  23) )
                exuMALC    = PMSA( IPNT(  24) )
                Surf       = PMSA( IPNT(  26) )
                DELT       = PMSA( IPNT(  27) )
                Depth      = PMSA( IPNT(  28) )
                LocalDepth = PMSA( IPNT(  29) )
              
                MBotSeg    = nint(PMSA( IPNT( 25) ))
         
                ! need to take from bottom segment
                MALS       = PMSA( IPNT(1)+(MBotSeg-ISEG)*INCREM( 1) )
                MALC       = PMSA( IPNT(2)+(MBotSeg-ISEG)*INCREM( 2) )
              
                ! need to convert substances of gC/m2 to gC/gDM
                ! to be consistent with constants from Broch
                ! this line shows how we assume the entire plant will have the
                ! same abundance of carbon stores
                ! along the length
                MALC = MALC / MALS ! gC/m2 to gC/gDM
                ! since the storage is relative the amount of DM,
                ! we calculate how much DM there is in this segment
                MALS = MALS * FrBmMALS
                
                ! gross photosynthesis
                
                ! integrate the radiation decay function between z2 (local depth, botom)
                ! and m1 (Localdepth - segment depth, top)
                ! Radiation at top is RadSurf
                I = -RadSurf/(ExtVl * Depth) * (exp(-ExtVl * LocalDepth) 
     &           - exp(-ExtVl * (LocalDepth - Depth)))
                ! need to convert to correct units
                ! 1 W/m2 = 4.57 umol photons m-2 s-1
                ! assumption is data supplied consistent with saturation value
                Itip = I
                I = I * 4.57 ! umol/m2s
                Itipu = I

                Isat = Isat * 4.57 ! umol/m2s
                Temp = Temp + 273.0
                Tpl = 274.0
                Tph = 298.0
                alpha0 = alpha
                ! gC/(dm2 hr) because of units of P1
                Pmax = P1 * exp((Tap/Tp1) - (Tap/Temp))/
     &           (1 + exp((Tapl/Temp) - (Tapl/Tpl)) + 
     &           exp((Taph/Tph) - (Taph/Temp)))
                
                ! solve for beta using newton's method
                ! for the moment we do not do this due to complexity of the expression
                ! instead we plot Pmax as a function of T
                ! and Pmax as a function of beta
                ! and for the given T, calculate the Pmax, and find the beta associated with that,
                ! specifying it in this conditional series
                
               IF (Temp .lt. 274.0) THEN 
                    beta = 1.094e-11 
                ELSE IF (Temp .ge. 274.0 .AND. Temp .lt. 274.1) THEN 
                    beta = 1.483e-11 
                ELSE IF (Temp .ge. 274.1 .AND. Temp .lt. 274.2) THEN 
                    beta = 1.983e-11 
                ELSE IF (Temp .ge. 274.2 .AND. Temp .lt. 274.3) THEN 
                    beta = 2.651e-11 
                ELSE IF (Temp .ge. 274.3 .AND. Temp .lt. 274.4) THEN 
                    beta = 3.496e-11 
                ELSE IF (Temp .ge. 274.4 .AND. Temp .lt. 274.5) THEN 
                    beta = 4.546e-11 
                ELSE IF (Temp .ge. 274.5 .AND. Temp .lt. 274.6) THEN 
                    beta = 5.831e-11 
                ELSE IF (Temp .ge. 274.6 .AND. Temp .lt. 274.7) THEN 
                    beta = 7.480e-11 
                ELSE IF (Temp .ge. 274.7 .AND. Temp .lt. 274.8) THEN 
                    beta = 9.462e-11 
                ELSE IF (Temp .ge. 274.8 .AND. Temp .lt. 274.9) THEN 
                    beta = 1.181e-10 
                ELSE IF (Temp .ge. 274.9 .AND. Temp .lt. 275.0) THEN 
                    beta = 1.473e-10 
                ELSE IF (Temp .ge. 275.0 .AND. Temp .lt. 275.1) THEN 
                    beta = 1.812e-10 
                ELSE IF (Temp .ge. 275.1 .AND. Temp .lt. 275.2) THEN 
                    beta = 2.230e-10 
                ELSE IF (Temp .ge. 275.2 .AND. Temp .lt. 275.3) THEN 
                    beta = 2.707e-10 
                ELSE IF (Temp .ge. 275.3 .AND. Temp .lt. 275.4) THEN 
                    beta = 3.285e-10 
                ELSE IF (Temp .ge. 275.4 .AND. Temp .lt. 275.5) THEN 
                    beta = 3.932e-10 
                ELSE IF (Temp .ge. 275.5 .AND. Temp .lt. 275.6) THEN 
                    beta = 4.706e-10 
                ELSE IF (Temp .ge. 275.6 .AND. Temp .lt. 275.7) THEN 
                    beta = 5.556e-10 
                ELSE IF (Temp .ge. 275.7 .AND. Temp .lt. 275.8) THEN 
                    beta = 6.559e-10 
                ELSE IF (Temp .ge. 275.8 .AND. Temp .lt. 275.9) THEN 
                    beta = 7.636e-10 
                ELSE IF (Temp .ge. 275.9 .AND. Temp .lt. 276.0) THEN 
                    beta = 8.891e-10 
                ELSE IF (Temp .ge. 276.0 .AND. Temp .lt. 276.1) THEN 
                    beta = 1.035e-09 
                ELSE IF (Temp .ge. 276.1 .AND. Temp .lt. 276.2) THEN 
                    beta = 1.189e-09 
                ELSE IF (Temp .ge. 276.2 .AND. Temp .lt. 276.3) THEN 
                    beta = 1.365e-09 
                ELSE IF (Temp .ge. 276.3 .AND. Temp .lt. 276.4) THEN 
                    beta = 1.546e-09 
                ELSE IF (Temp .ge. 276.4 .AND. Temp .lt. 276.5) THEN 
                    beta = 1.775e-09 
                ELSE IF (Temp .ge. 276.5 .AND. Temp .lt. 276.6) THEN 
                    beta = 2.010e-09 
                ELSE IF (Temp .ge. 276.6 .AND. Temp .lt. 276.7) THEN 
                    beta = 2.246e-09 
                ELSE IF (Temp .ge. 276.7 .AND. Temp .lt. 276.8) THEN 
                    beta = 2.543e-09 
                ELSE IF (Temp .ge. 276.8 .AND. Temp .lt. 276.9) THEN 
                    beta = 2.841e-09 
                ELSE IF (Temp .ge. 276.9 .AND. Temp .lt. 277.0) THEN 
                    beta = 3.130e-09 
                ELSE IF (Temp .ge. 277.0 .AND. Temp .lt. 277.1) THEN 
                    beta = 3.496e-09 
                ELSE IF (Temp .ge. 277.1 .AND. Temp .lt. 277.2) THEN 
                    beta = 3.851e-09 
                ELSE IF (Temp .ge. 277.2 .AND. Temp .lt. 277.3) THEN 
                    beta = 4.243e-09 
                ELSE IF (Temp .ge. 277.3 .AND. Temp .lt. 277.4) THEN 
                    beta = 4.674e-09 
                ELSE IF (Temp .ge. 277.4 .AND. Temp .lt. 277.5) THEN 
                    beta = 5.149e-09 
                ELSE IF (Temp .ge. 277.5 .AND. Temp .lt. 277.6) THEN 
                    beta = 5.594e-09 
                ELSE IF (Temp .ge. 277.6 .AND. Temp .lt. 277.7) THEN 
                    beta = 6.078e-09 
                ELSE IF (Temp .ge. 277.7 .AND. Temp .lt. 277.8) THEN 
                    beta = 6.604e-09 
                ELSE IF (Temp .ge. 277.8 .AND. Temp .lt. 277.9) THEN 
                    beta = 7.176e-09 
                ELSE IF (Temp .ge. 277.9 .AND. Temp .lt. 278.0) THEN 
                    beta = 7.796e-09 
                ELSE IF (Temp .ge. 278.0 .AND. Temp .lt. 278.1) THEN 
                    beta = 8.355e-09 
                ELSE IF (Temp .ge. 278.1 .AND. Temp .lt. 278.2) THEN 
                    beta = 9.077e-09 
                ELSE IF (Temp .ge. 278.2 .AND. Temp .lt. 278.3) THEN 
                    beta = 9.727e-09 
                ELSE IF (Temp .ge. 278.3 .AND. Temp .lt. 278.4) THEN 
                    beta = 1.042e-08 
                ELSE IF (Temp .ge. 278.4 .AND. Temp .lt. 278.5) THEN 
                    beta = 1.117e-08 
                ELSE IF (Temp .ge. 278.5 .AND. Temp .lt. 278.6) THEN 
                    beta = 1.181e-08 
                ELSE IF (Temp .ge. 278.6 .AND. Temp .lt. 278.7) THEN 
                    beta = 1.265e-08 
                ELSE IF (Temp .ge. 278.7 .AND. Temp .lt. 278.8) THEN 
                    beta = 1.337e-08 
                ELSE IF (Temp .ge. 278.8 .AND. Temp .lt. 278.9) THEN 
                    beta = 1.413e-08 
                ELSE IF (Temp .ge. 278.9 .AND. Temp .lt. 279.0) THEN 
                    beta = 1.514e-08 
                ELSE IF (Temp .ge. 279.0 .AND. Temp .lt. 279.1) THEN 
                    beta = 1.600e-08 
                ELSE IF (Temp .ge. 279.1 .AND. Temp .lt. 279.2) THEN 
                    beta = 1.691e-08 
                ELSE IF (Temp .ge. 279.2 .AND. Temp .lt. 279.3) THEN 
                    beta = 1.763e-08 
                ELSE IF (Temp .ge. 279.3 .AND. Temp .lt. 279.4) THEN 
                    beta = 1.863e-08 
                ELSE IF (Temp .ge. 279.4 .AND. Temp .lt. 279.5) THEN 
                    beta = 1.969e-08 
                ELSE IF (Temp .ge. 279.5 .AND. Temp .lt. 279.6) THEN 
                    beta = 2.053e-08 
                ELSE IF (Temp .ge. 279.6 .AND. Temp .lt. 279.7) THEN 
                    beta = 2.169e-08 
                ELSE IF (Temp .ge. 279.7 .AND. Temp .lt. 279.8) THEN 
                    beta = 2.261e-08 
                ELSE IF (Temp .ge. 279.8 .AND. Temp .lt. 279.9) THEN 
                    beta = 2.357e-08 
                ELSE IF (Temp .ge. 279.9 .AND. Temp .lt. 280.0) THEN 
                    beta = 2.457e-08 
                ELSE IF (Temp .ge. 280.0 .AND. Temp .lt. 280.1) THEN 
                    beta = 2.597e-08 
                ELSE IF (Temp .ge. 280.1 .AND. Temp .lt. 280.2) THEN 
                    beta = 2.669e-08 
                ELSE IF (Temp .ge. 280.2 .AND. Temp .lt. 280.3) THEN 
                    beta = 2.783e-08 
                ELSE IF (Temp .ge. 280.3 .AND. Temp .lt. 280.4) THEN 
                    beta = 2.900e-08 
                ELSE IF (Temp .ge. 280.4 .AND. Temp .lt. 280.5) THEN 
                    beta = 3.023e-08 
                ELSE IF (Temp .ge. 280.5 .AND. Temp .lt. 280.6) THEN 
                    beta = 3.151e-08 
                ELSE IF (Temp .ge. 280.6 .AND. Temp .lt. 280.7) THEN 
                    beta = 3.240e-08 
                ELSE IF (Temp .ge. 280.7 .AND. Temp .lt. 280.8) THEN 
                    beta = 3.377e-08 
                ELSE IF (Temp .ge. 280.8 .AND. Temp .lt. 280.9) THEN 
                    beta = 3.472e-08 
                ELSE IF (Temp .ge. 280.9 .AND. Temp .lt. 281.0) THEN 
                    beta = 3.619e-08 
                ELSE IF (Temp .ge. 281.0 .AND. Temp .lt. 281.1) THEN 
                    beta = 3.720e-08 
                ELSE IF (Temp .ge. 281.1 .AND. Temp .lt. 281.2) THEN 
                    beta = 3.878e-08 
                ELSE IF (Temp .ge. 281.2 .AND. Temp .lt. 281.3) THEN 
                    beta = 3.987e-08 
                ELSE IF (Temp .ge. 281.3 .AND. Temp .lt. 281.4) THEN 
                    beta = 4.098e-08 
                ELSE IF (Temp .ge. 281.4 .AND. Temp .lt. 281.5) THEN 
                    beta = 4.213e-08 
                ELSE IF (Temp .ge. 281.5 .AND. Temp .lt. 281.6) THEN 
                    beta = 4.331e-08 
                ELSE IF (Temp .ge. 281.6 .AND. Temp .lt. 281.7) THEN 
                    beta = 4.453e-08 
                ELSE IF (Temp .ge. 281.7 .AND. Temp .lt. 281.8) THEN 
                    beta = 4.642e-08 
                ELSE IF (Temp .ge. 281.8 .AND. Temp .lt. 281.9) THEN 
                    beta = 4.706e-08 
                ELSE IF (Temp .ge. 281.9 .AND. Temp .lt. 282.0) THEN 
                    beta = 4.838e-08 
                ELSE IF (Temp .ge. 282.0 .AND. Temp .lt. 282.1) THEN 
                    beta = 4.974e-08 
                ELSE IF (Temp .ge. 282.1 .AND. Temp .lt. 282.2) THEN 
                    beta = 5.113e-08 
                ELSE IF (Temp .ge. 282.2 .AND. Temp .lt. 282.3) THEN 
                    beta = 5.257e-08 
                ELSE IF (Temp .ge. 282.3 .AND. Temp .lt. 282.4) THEN 
                    beta = 5.404e-08 
                ELSE IF (Temp .ge. 282.4 .AND. Temp .lt. 282.5) THEN 
                    beta = 5.556e-08 
                ELSE IF (Temp .ge. 282.5 .AND. Temp .lt. 282.6) THEN 
                    beta = 5.633e-08 
                ELSE IF (Temp .ge. 282.6 .AND. Temp .lt. 282.7) THEN 
                    beta = 5.791e-08 
                ELSE IF (Temp .ge. 282.7 .AND. Temp .lt. 282.8) THEN 
                    beta = 5.954e-08 
                ELSE IF (Temp .ge. 282.8 .AND. Temp .lt. 282.9) THEN 
                    beta = 6.036e-08 
                ELSE IF (Temp .ge. 282.9 .AND. Temp .lt. 283.0) THEN 
                    beta = 6.206e-08 
                ELSE IF (Temp .ge. 283.0 .AND. Temp .lt. 283.1) THEN 
                    beta = 6.292e-08 
                ELSE IF (Temp .ge. 283.1 .AND. Temp .lt. 283.2) THEN 
                    beta = 6.469e-08 
                ELSE IF (Temp .ge. 283.2 .AND. Temp .lt. 283.3) THEN 
                    beta = 6.559e-08 
                ELSE IF (Temp .ge. 283.3 .AND. Temp .lt. 283.4) THEN 
                    beta = 6.743e-08 
                ELSE IF (Temp .ge. 283.4 .AND. Temp .lt. 283.5) THEN 
                    beta = 6.837e-08 
                ELSE IF (Temp .ge. 283.5 .AND. Temp .lt. 283.6) THEN 
                    beta = 7.028e-08 
                ELSE IF (Temp .ge. 283.6 .AND. Temp .lt. 283.7) THEN 
                    beta = 7.126e-08 
                ELSE IF (Temp .ge. 283.7 .AND. Temp .lt. 283.8) THEN 
                    beta = 7.225e-08 
                ELSE IF (Temp .ge. 283.8 .AND. Temp .lt. 283.9) THEN 
                    beta = 7.428e-08 
                ELSE IF (Temp .ge. 283.9 .AND. Temp .lt. 284.0) THEN 
                    beta = 7.531e-08 
                ELSE IF (Temp .ge. 284.0 .AND. Temp .lt. 284.1) THEN 
                    beta = 7.636e-08 
                ELSE IF (Temp .ge. 284.1 .AND. Temp .lt. 284.2) THEN 
                    beta = 7.743e-08 
                ELSE IF (Temp .ge. 284.2 .AND. Temp .lt. 284.3) THEN 
                    beta = 7.960e-08 
                ELSE IF (Temp .ge. 284.3 .AND. Temp .lt. 284.4) THEN 
                    beta = 8.071e-08 
                ELSE IF (Temp .ge. 284.4 .AND. Temp .lt. 284.5) THEN 
                    beta = 8.183e-08 
                ELSE IF (Temp .ge. 284.5 .AND. Temp .lt. 284.6) THEN 
                    beta = 8.297e-08 
                ELSE IF (Temp .ge. 284.6 .AND. Temp .lt. 284.7) THEN 
                    beta = 8.412e-08 
                ELSE IF (Temp .ge. 284.7 .AND. Temp .lt. 284.8) THEN 
                    beta = 8.530e-08 
                ELSE IF (Temp .ge. 284.8 .AND. Temp .lt. 284.9) THEN 
                    beta = 8.648e-08 
                ELSE IF (Temp .ge. 284.9 .AND. Temp .lt. 285.0) THEN 
                    beta = 8.769e-08 
                ELSE IF (Temp .ge. 285.0 .AND. Temp .lt. 285.1) THEN 
                    beta = 8.891e-08 
                ELSE IF (Temp .ge. 285.1 .AND. Temp .lt. 285.2) THEN 
                    beta = 9.015e-08 
                ELSE IF (Temp .ge. 285.2 .AND. Temp .lt. 285.3) THEN 
                    beta = 9.140e-08 
                ELSE IF (Temp .ge. 285.3 .AND. Temp .lt. 285.4) THEN 
                    beta = 9.268e-08 
                ELSE IF (Temp .ge. 285.4 .AND. Temp .lt. 285.5) THEN 
                    beta = 9.397e-08 
                ELSE IF (Temp .ge. 285.5 .AND. Temp .lt. 285.6) THEN 
                    beta = 9.528e-08 
                ELSE IF (Temp .ge. 285.6 .AND. Temp .lt. 285.7) THEN 
                    beta = 9.660e-08 
                ELSE IF (Temp .ge. 285.7 .AND. Temp .lt. 285.8) THEN 
                    beta = 9.795e-08 
                ELSE IF (Temp .ge. 285.8 .AND. Temp .lt. 285.9) THEN 
                    beta = 9.931e-08 
                ELSE IF (Temp .ge. 285.9 .AND. Temp .lt. 286.0) THEN 
                    beta = 1.007e-07 
                ELSE IF (Temp .ge. 286.0 .AND. Temp .lt. 286.1) THEN 
                    beta = 1.007e-07 
                ELSE IF (Temp .ge. 286.1 .AND. Temp .lt. 286.2) THEN 
                    beta = 1.021e-07 
                ELSE IF (Temp .ge. 286.2 .AND. Temp .lt. 286.3) THEN 
                    beta = 1.035e-07 
                ELSE IF (Temp .ge. 286.3 .AND. Temp .lt. 286.4) THEN 
                    beta = 1.050e-07 
                ELSE IF (Temp .ge. 286.4 .AND. Temp .lt. 286.5) THEN 
                    beta = 1.064e-07 
                ELSE IF (Temp .ge. 286.5 .AND. Temp .lt. 286.6) THEN 
                    beta = 1.064e-07 
                ELSE IF (Temp .ge. 286.6 .AND. Temp .lt. 286.7) THEN 
                    beta = 1.079e-07 
                ELSE IF (Temp .ge. 286.7 .AND. Temp .lt. 286.8) THEN 
                    beta = 1.094e-07 
                ELSE IF (Temp .ge. 286.8 .AND. Temp .lt. 286.9) THEN 
                    beta = 1.094e-07 
                ELSE IF (Temp .ge. 286.9 .AND. Temp .lt. 287.0) THEN 
                    beta = 1.109e-07 
                ELSE IF (Temp .ge. 287.0 .AND. Temp .lt. 287.1) THEN 
                    beta = 1.109e-07 
                ELSE IF (Temp .ge. 287.1 .AND. Temp .lt. 287.2) THEN 
                    beta = 1.125e-07 
                ELSE IF (Temp .ge. 287.2 .AND. Temp .lt. 287.3) THEN 
                    beta = 1.140e-07 
                ELSE IF (Temp .ge. 287.3 .AND. Temp .lt. 287.4) THEN 
                    beta = 1.140e-07 
                ELSE IF (Temp .ge. 287.4 .AND. Temp .lt. 287.5) THEN 
                    beta = 1.156e-07 
                ELSE IF (Temp .ge. 287.5 .AND. Temp .lt. 287.6) THEN 
                    beta = 1.156e-07 
                ELSE IF (Temp .ge. 287.6 .AND. Temp .lt. 287.7) THEN 
                    beta = 1.172e-07 
                ELSE IF (Temp .ge. 287.7 .AND. Temp .lt. 287.8) THEN 
                    beta = 1.172e-07 
                ELSE IF (Temp .ge. 287.8 .AND. Temp .lt. 287.9) THEN 
                    beta = 1.189e-07 
                ELSE IF (Temp .ge. 287.9 .AND. Temp .lt. 288.0) THEN 
                    beta = 1.189e-07 
                ELSE IF (Temp .ge. 288.0 .AND. Temp .lt. 288.1) THEN 
                    beta = 1.189e-07 
                ELSE IF (Temp .ge. 288.1 .AND. Temp .lt. 288.2) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 288.2 .AND. Temp .lt. 288.3) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 288.3 .AND. Temp .lt. 288.4) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 288.4 .AND. Temp .lt. 288.5) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 288.5 .AND. Temp .lt. 288.6) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 288.6 .AND. Temp .lt. 288.7) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 288.7 .AND. Temp .lt. 288.8) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 288.8 .AND. Temp .lt. 288.9) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 288.9 .AND. Temp .lt. 289.0) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.0 .AND. Temp .lt. 289.1) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.1 .AND. Temp .lt. 289.2) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.2 .AND. Temp .lt. 289.3) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.3 .AND. Temp .lt. 289.4) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.4 .AND. Temp .lt. 289.5) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.5 .AND. Temp .lt. 289.6) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.6 .AND. Temp .lt. 289.7) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.7 .AND. Temp .lt. 289.8) THEN 
                    beta = 1.239e-07 
                ELSE IF (Temp .ge. 289.8 .AND. Temp .lt. 289.9) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 289.9 .AND. Temp .lt. 290.0) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 290.0 .AND. Temp .lt. 290.1) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 290.1 .AND. Temp .lt. 290.2) THEN 
                    beta = 1.222e-07 
                ELSE IF (Temp .ge. 290.2 .AND. Temp .lt. 290.3) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 290.3 .AND. Temp .lt. 290.4) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 290.4 .AND. Temp .lt. 290.5) THEN 
                    beta = 1.205e-07 
                ELSE IF (Temp .ge. 290.5 .AND. Temp .lt. 290.6) THEN 
                    beta = 1.189e-07 
                ELSE IF (Temp .ge. 290.6 .AND. Temp .lt. 290.7) THEN 
                    beta = 1.189e-07 
                ELSE IF (Temp .ge. 290.7 .AND. Temp .lt. 290.8) THEN 
                    beta = 1.172e-07 
                ELSE IF (Temp .ge. 290.8 .AND. Temp .lt. 290.9) THEN 
                    beta = 1.172e-07 
                ELSE IF (Temp .ge. 290.9 .AND. Temp .lt. 291.0) THEN 
                    beta = 1.156e-07 
                ELSE IF (Temp .ge. 291.0 .AND. Temp .lt. 291.1) THEN 
                    beta = 1.156e-07 
                ELSE IF (Temp .ge. 291.1 .AND. Temp .lt. 291.2) THEN 
                    beta = 1.140e-07 
                ELSE IF (Temp .ge. 291.2 .AND. Temp .lt. 291.3) THEN 
                    beta = 1.125e-07 
                ELSE IF (Temp .ge. 291.3 .AND. Temp .lt. 291.4) THEN 
                    beta = 1.125e-07 
                ELSE IF (Temp .ge. 291.4 .AND. Temp .lt. 291.5) THEN 
                    beta = 1.109e-07 
                ELSE IF (Temp .ge. 291.5 .AND. Temp .lt. 291.6) THEN 
                    beta = 1.094e-07 
                ELSE IF (Temp .ge. 291.6 .AND. Temp .lt. 291.7) THEN 
                    beta = 1.079e-07 
                ELSE IF (Temp .ge. 291.7 .AND. Temp .lt. 291.8) THEN 
                    beta = 1.064e-07 
                ELSE IF (Temp .ge. 291.8 .AND. Temp .lt. 291.9) THEN 
                    beta = 1.050e-07 
                ELSE IF (Temp .ge. 291.9 .AND. Temp .lt. 292.0) THEN 
                    beta = 1.035e-07 
                ELSE IF (Temp .ge. 292.0 .AND. Temp .lt. 292.1) THEN 
                    beta = 1.021e-07 
                ELSE IF (Temp .ge. 292.1 .AND. Temp .lt. 292.2) THEN 
                    beta = 1.007e-07 
                ELSE IF (Temp .ge. 292.2 .AND. Temp .lt. 292.3) THEN 
                    beta = 9.795e-08 
                ELSE IF (Temp .ge. 292.3 .AND. Temp .lt. 292.4) THEN 
                    beta = 9.660e-08 
                ELSE IF (Temp .ge. 292.4 .AND. Temp .lt. 292.5) THEN 
                    beta = 9.528e-08 
                ELSE IF (Temp .ge. 292.5 .AND. Temp .lt. 292.6) THEN 
                    beta = 9.268e-08 
                ELSE IF (Temp .ge. 292.6 .AND. Temp .lt. 292.7) THEN 
                    beta = 9.140e-08 
                ELSE IF (Temp .ge. 292.7 .AND. Temp .lt. 292.8) THEN 
                    beta = 8.891e-08 
                ELSE IF (Temp .ge. 292.8 .AND. Temp .lt. 292.9) THEN 
                    beta = 8.769e-08 
                ELSE IF (Temp .ge. 292.9 .AND. Temp .lt. 293.0) THEN 
                    beta = 8.530e-08 
                ELSE IF (Temp .ge. 293.0 .AND. Temp .lt. 293.1) THEN 
                    beta = 8.297e-08 
                ELSE IF (Temp .ge. 293.1 .AND. Temp .lt. 293.2) THEN 
                    beta = 8.071e-08 
                ELSE IF (Temp .ge. 293.2 .AND. Temp .lt. 293.3) THEN 
                    beta = 7.960e-08 
                ELSE IF (Temp .ge. 293.3 .AND. Temp .lt. 293.4) THEN 
                    beta = 7.743e-08 
                ELSE IF (Temp .ge. 293.4 .AND. Temp .lt. 293.5) THEN 
                    beta = 7.428e-08 
                ELSE IF (Temp .ge. 293.5 .AND. Temp .lt. 293.6) THEN 
                    beta = 7.225e-08 
                ELSE IF (Temp .ge. 293.6 .AND. Temp .lt. 293.7) THEN 
                    beta = 7.028e-08 
                ELSE IF (Temp .ge. 293.7 .AND. Temp .lt. 293.8) THEN 
                    beta = 6.837e-08 
                ELSE IF (Temp .ge. 293.8 .AND. Temp .lt. 293.9) THEN 
                    beta = 6.559e-08 
                ELSE IF (Temp .ge. 293.9 .AND. Temp .lt. 294.0) THEN 
                    beta = 6.380e-08 
                ELSE IF (Temp .ge. 294.0 .AND. Temp .lt. 294.1) THEN 
                    beta = 6.120e-08 
                ELSE IF (Temp .ge. 294.1 .AND. Temp .lt. 294.2) THEN 
                    beta = 5.954e-08 
                ELSE IF (Temp .ge. 294.2 .AND. Temp .lt. 294.3) THEN 
                    beta = 5.712e-08 
                ELSE IF (Temp .ge. 294.3 .AND. Temp .lt. 294.4) THEN 
                    beta = 5.479e-08 
                ELSE IF (Temp .ge. 294.4 .AND. Temp .lt. 294.5) THEN 
                    beta = 5.257e-08 
                ELSE IF (Temp .ge. 294.5 .AND. Temp .lt. 294.6) THEN 
                    beta = 5.043e-08 
                ELSE IF (Temp .ge. 294.6 .AND. Temp .lt. 294.7) THEN 
                    beta = 4.838e-08 
                ELSE IF (Temp .ge. 294.7 .AND. Temp .lt. 294.8) THEN 
                    beta = 4.642e-08 
                ELSE IF (Temp .ge. 294.8 .AND. Temp .lt. 294.9) THEN 
                    beta = 4.453e-08 
                ELSE IF (Temp .ge. 294.9 .AND. Temp .lt. 295.0) THEN 
                    beta = 4.213e-08 
                ELSE IF (Temp .ge. 295.0 .AND. Temp .lt. 295.1) THEN 
                    beta = 4.042e-08 
                ELSE IF (Temp .ge. 295.1 .AND. Temp .lt. 295.2) THEN 
                    beta = 3.825e-08 
                ELSE IF (Temp .ge. 295.2 .AND. Temp .lt. 295.3) THEN 
                    beta = 3.619e-08 
                ELSE IF (Temp .ge. 295.3 .AND. Temp .lt. 295.4) THEN 
                    beta = 3.424e-08 
                ELSE IF (Temp .ge. 295.4 .AND. Temp .lt. 295.5) THEN 
                    beta = 3.240e-08 
                ELSE IF (Temp .ge. 295.5 .AND. Temp .lt. 295.6) THEN 
                    beta = 3.065e-08 
                ELSE IF (Temp .ge. 295.6 .AND. Temp .lt. 295.7) THEN 
                    beta = 2.900e-08 
                ELSE IF (Temp .ge. 295.7 .AND. Temp .lt. 295.8) THEN 
                    beta = 2.744e-08 
                ELSE IF (Temp .ge. 295.8 .AND. Temp .lt. 295.9) THEN 
                    beta = 2.561e-08 
                ELSE IF (Temp .ge. 295.9 .AND. Temp .lt. 296.0) THEN 
                    beta = 2.390e-08 
                ELSE IF (Temp .ge. 296.0 .AND. Temp .lt. 296.1) THEN 
                    beta = 2.230e-08 
                ELSE IF (Temp .ge. 296.1 .AND. Temp .lt. 296.2) THEN 
                    beta = 2.081e-08 
                ELSE IF (Temp .ge. 296.2 .AND. Temp .lt. 296.3) THEN 
                    beta = 1.942e-08 
                ELSE IF (Temp .ge. 296.3 .AND. Temp .lt. 296.4) THEN 
                    beta = 1.812e-08 
                ELSE IF (Temp .ge. 296.4 .AND. Temp .lt. 296.5) THEN 
                    beta = 1.691e-08 
                ELSE IF (Temp .ge. 296.5 .AND. Temp .lt. 296.6) THEN 
                    beta = 1.557e-08 
                ELSE IF (Temp .ge. 296.6 .AND. Temp .lt. 296.7) THEN 
                    beta = 1.433e-08 
                ELSE IF (Temp .ge. 296.7 .AND. Temp .lt. 296.8) THEN 
                    beta = 1.319e-08 
                ELSE IF (Temp .ge. 296.8 .AND. Temp .lt. 296.9) THEN 
                    beta = 1.214e-08 
                ELSE IF (Temp .ge. 296.9 .AND. Temp .lt. 297.0) THEN 
                    beta = 1.117e-08 
                ELSE IF (Temp .ge. 297.0 .AND. Temp .lt. 297.1) THEN 
                    beta = 1.028e-08 
                ELSE IF (Temp .ge. 297.1 .AND. Temp .lt. 297.2) THEN 
                    beta = 9.332e-09 
                ELSE IF (Temp .ge. 297.2 .AND. Temp .lt. 297.3) THEN 
                    beta = 8.471e-09 
                ELSE IF (Temp .ge. 297.3 .AND. Temp .lt. 297.4) THEN 
                    beta = 7.689e-09 
                ELSE IF (Temp .ge. 297.4 .AND. Temp .lt. 297.5) THEN 
                    beta = 6.980e-09 
                ELSE IF (Temp .ge. 297.5 .AND. Temp .lt. 297.6) THEN 
                    beta = 6.249e-09 
                ELSE IF (Temp .ge. 297.6 .AND. Temp .lt. 297.7) THEN 
                    beta = 5.672e-09 
                ELSE IF (Temp .ge. 297.7 .AND. Temp .lt. 297.8) THEN 
                    beta = 5.078e-09 
                ELSE IF (Temp .ge. 297.8 .AND. Temp .lt. 297.9) THEN 
                    beta = 4.546e-09 
                ELSE IF (Temp .gt. 298.0) THEN 
                    beta = 4.014e-09 
                ENDIF

                ! gC/(dm2 hr)
                Ps = alpha0*Isat/LOG(1+alpha0/beta)  
                P = Ps * (1-exp(-alpha0*I/Ps))*exp(-beta*I/Ps)
                ! converted to m2 d instead of dm hr because R1 is in the former
                ! all rates will as per the paper yield rates
                ! of gC/area plant/ hr
                
                ! respiration gC/dm2 h (m2 of plant not water segment)
                R = R1 * exp(Tar/Tr1 - Tar/Temp)
               
                ! exudation (-)
                E = 1-exp(exuMALC*(MALCmin - MALC))
                ! need the area of the frond in this segment
                ! already in this segment by virtue of the FrBmMALS
                areaLoc = MALS * Surf / ArDenMAL
                ! convert from gC/dm2 h to gC/m2 d for state variable
                BrochP = P
                P = P * 24 * 100
                R = R * 24 * 100            
                
                ! effect on TIC is net of production and maintenance respiration
                ! growth respiration is included in FLMALS
                ! TIC gets converted (lost) to DOC in exudate

                dMALTIC = areaLoc * (P - R) / (Surf*Depth) 
                
                ! NEED ALKA HERE!

                ! exudate is produced as DOC, E is a fraction of production
              
                ! exudation (leakage) gC/(m3 d)
                dMALDOC = areaLoc * P * E / (Surf*Depth) 
                
                ! uptake into storage gC/(m2 d)
                LocUpC  = areaLoc * ( P * (1.0-E) - R ) / Surf
                ! oxygen 
                ! photosynthesis produces oxygen, respiration consumes
                ! look to TIC to see what the balance is
                
                dPrMALOXY   = 2.67 * dMALTIC
                ! need ALKA!
                
                GrosMALC            = areaLoc * P / Surf 
                RespMALC            = areaLoc * R / Surf 
                ExudMALC            = areaLoc * P * E / Surf
                PMSA( IPNT( 30)   ) = LocUpC
                PMSA( IPNT( 31)   ) = Itip
                PMSA( IPNT( 32)   ) = Itipu
                PMSA( IPNT( 33)   ) = BrochP
                PMSA( IPNT( 34)   ) = GrosMALC
                PMSA( IPNT( 35)   ) = RespMALC
                PMSA( IPNT( 36)   ) = ExudMALC

                FL ( IdUpMALTIC   ) = dMALTIC
                FL ( IdPrMALDOC   ) = dMALDOC
                FL ( IdPrMALOXY   ) = dPrMALOXY
                
                ! allocate to bottom segment flux address
                FLCREM = (MBotSeg-ISEG)*NOFLUX
                ! storage goes to storage
                ! if no storage, respiration is taken from structural mass.
                IF (LocUpC .ge. 0.0) THEN
                  FL(IdStrMALC+FLCREM) = FL(IdStrMALC + FLCREM) + LocUpC
                ELSE
                  !areaLoc * ArDenMALS * (MALCmin - MALC)/(MALS*CDRatMALS)
                  FL(IdCanMALS+FLCREM) = FL(IdCanMALS + FLCREM) + LocUpC
     &                  / CDRatMALS
                ENDIF
                
                    
   
            ENDIF
            ENDIF

       IdUpMALTIC   = IdUpMALTIC + NOFLUX
       IdPrMALDOC   = IdPrMALDOC + NOFLUX
       IdPrMALOXY   = IdPrMALOXY + NOFLUX   
       IdStrMALC    = IdStrMALC  + NOFLUX
       IPNT         = IPNT       + INCREM

 9000 CONTINUE

      RETURN
      END
