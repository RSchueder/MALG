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
      INTEGER IPOINT(38)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(38)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 38)   !    Local work array for the pointering
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
      REAL(4) TotAreMAL   ! I  Total Frond area in this segment                     (gC/gDM)
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

      REAL(4) LocUpC      ! O
      REAL(4) Itip        ! O
      REAL(4) Itipu       ! O
      REAL(4) BrochP      ! O
      REAL(4) GrosMALC    ! O 
      REAL(4) RespMALC    ! O
      REAL(4) ExudMALC    ! O
      REAL(4) beta        ! O
      
      REAL(4) dMALTIC     ! F  HCO3 uptake MALN                                       (gC/m3/d)
      REAL(4) dMALDOC     ! F  Exudate MALN                                           (gC/m3/d)
      REAL(4) dPrMALOXY   ! F  OXY production                                        (gC/m3/d)
      REAL(4) dStrMALC

      INTEGER IdUpMALTIC !   
      INTEGER IdPrMALDOC !   
      INTEGER IdPrMALOXY ! 
      INTEGER IdStrMALC  !
      INTEGER IdCanMALS  ! Canibalization of MALS in respiration
      INTEGER FLCREM
      
      INTEGER MBotSeg
      
      ! extra/internal
      REAL(4) I       	
      REAL(4) P	
      REAL(4) Ps    
      REAL(4) Pmax
      REAL(4) PmaxT
      REAL(4) PmaxB
      REAL(4) R
      REAL(4) E
      REAL(4) Tpl
      REAL(4) Tph
      REAL(4) alpha0
      REAL(4) chk

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
                TotAreMAL  = PMSA( IPNT(  6) )
                ArDenMAL   = PMSA( IPNT(  7) )
                Temp	     = PMSA( IPNT(  8) )
                R1         = PMSA( IPNT(  9) )
                R2         = PMSA( IPNT(  10) )
                Tr1        = PMSA( IPNT(  11) )
                Tr2	     = PMSA( IPNT(  12) )
                P1         = PMSA( IPNT(  13) )
                P2         = PMSA( IPNT(  14) )
                Tp1        = PMSA( IPNT(  15) )
                Tp2        = PMSA( IPNT(  16) )
                Tap	     = PMSA( IPNT(  17) )
                Taph       = PMSA( IPNT(  18) )
                Tapl       = PMSA( IPNT(  19) )
                Tar        = PMSA( IPNT(  20) )
                RadSurf  	 = PMSA( IPNT(  21) )
                ExtVl	     = PMSA( IPNT(  22) )
                alpha      = PMSA( IPNT(  23) )
                Isat       = PMSA( IPNT(  24) )
                exuMALC    = PMSA( IPNT(  25) )
                Surf       = PMSA( IPNT(  27) )
                DELT       = PMSA( IPNT(  28) )
                Depth      = PMSA( IPNT(  29) )
                LocalDepth = PMSA( IPNT(  30) )
              
                MBotSeg    = nint(PMSA( IPNT( 26) ))
         
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
                
                Tpl = 271.0
                Tph = 296.0
                alpha0 = alpha
                ! gC/(dm2 hr) because of units of P1
                ! this does not matter because it was pre calculated in MATLAB
!                Pmax = P1 * exp((Tap/Tp1) - (Tap/Temp))/
!     &           (1 + exp((Tapl/Temp) - (Tapl/Tpl)) + 
!     &           exp((Taph/Tph) - (Taph/Temp)))
                
                ! solve for beta using newton's method
                ! for the moment we do not do this due to complexity of the expression
                ! instead we plot Pmax as a function of T
                ! and Pmax as a function of beta
                ! and for the given T, calculate the Pmax, and find the beta associated with that,
                ! specifying it in this conditional series
            IF (Temp .lt. 271.0) THEN 
                beta = 1.812e-12 
            ELSE IF (Temp .ge. 271.0 .AND. Temp .lt. 271.1) THEN 
                beta = 2.561e-12 + (1.0 - 10.0*(271.1-Temp))*1.058e-12 
            ELSE IF (Temp .ge. 271.1 .AND. Temp .lt. 271.2) THEN 
                beta = 3.619e-12 + (1.0 - 10.0*(271.2-Temp))*1.355e-12 
            ELSE IF (Temp .ge. 271.2 .AND. Temp .lt. 271.3) THEN 
                beta = 4.974e-12 + (1.0 - 10.0*(271.3-Temp))*1.863e-12 
            ELSE IF (Temp .ge. 271.3 .AND. Temp .lt. 271.4) THEN 
                beta = 6.837e-12 + (1.0 - 10.0*(271.4-Temp))*2.304e-12 
            ELSE IF (Temp .ge. 271.4 .AND. Temp .lt. 271.5) THEN 
                beta = 9.140e-12 + (1.0 - 10.0*(271.5-Temp))*3.080e-12 
            ELSE IF (Temp .ge. 271.5 .AND. Temp .lt. 271.6) THEN 
                beta = 1.222e-11 + (1.0 - 10.0*(271.6-Temp))*4.118e-12 
            ELSE IF (Temp .ge. 271.6 .AND. Temp .lt. 271.7) THEN 
                beta = 1.634e-11 + (1.0 - 10.0*(271.7-Temp))*4.910e-12 
            ELSE IF (Temp .ge. 271.7 .AND. Temp .lt. 271.8) THEN 
                beta = 2.125e-11 + (1.0 - 10.0*(271.8-Temp))*6.385e-12 
            ELSE IF (Temp .ge. 271.8 .AND. Temp .lt. 271.9) THEN 
                beta = 2.763e-11 + (1.0 - 10.0*(271.9-Temp))*7.811e-12 
            ELSE IF (Temp .ge. 271.9 .AND. Temp .lt. 272.0) THEN 
                beta = 3.544e-11 + (1.0 - 10.0*(272.0-Temp))*9.394e-12 
            ELSE IF (Temp .ge. 272.0 .AND. Temp .lt. 272.1) THEN 
                beta = 4.484e-11 + (1.0 - 10.0*(272.1-Temp))*1.188e-11 
            ELSE IF (Temp .ge. 272.1 .AND. Temp .lt. 272.2) THEN 
                beta = 5.672e-11 + (1.0 - 10.0*(272.2-Temp))*1.405e-11 
            ELSE IF (Temp .ge. 272.2 .AND. Temp .lt. 272.3) THEN 
                beta = 7.077e-11 + (1.0 - 10.0*(272.3-Temp))*1.631e-11 
            ELSE IF (Temp .ge. 272.3 .AND. Temp .lt. 272.4) THEN 
                beta = 8.708e-11 + (1.0 - 10.0*(272.4-Temp))*2.008e-11 
            ELSE IF (Temp .ge. 272.4 .AND. Temp .lt. 272.5) THEN 
                beta = 1.072e-10 + (1.0 - 10.0*(272.5-Temp))*2.470e-11 
            ELSE IF (Temp .ge. 272.5 .AND. Temp .lt. 272.6) THEN 
                beta = 1.319e-10 + (1.0 - 10.0*(272.6-Temp))*2.817e-11 
            ELSE IF (Temp .ge. 272.6 .AND. Temp .lt. 272.7) THEN 
                beta = 1.600e-10 + (1.0 - 10.0*(272.7-Temp))*3.152e-11 
            ELSE IF (Temp .ge. 272.7 .AND. Temp .lt. 272.8) THEN 
                beta = 1.916e-10 + (1.0 - 10.0*(272.8-Temp))*3.773e-11 
            ELSE IF (Temp .ge. 272.8 .AND. Temp .lt. 272.9) THEN 
                beta = 2.293e-10 + (1.0 - 10.0*(272.9-Temp))*4.139e-11 
            ELSE IF (Temp .ge. 272.9 .AND. Temp .lt. 273.0) THEN 
                beta = 2.707e-10 + (1.0 - 10.0*(273.0-Temp))*4.886e-11 
            ELSE IF (Temp .ge. 273.0 .AND. Temp .lt. 273.1) THEN 
                beta = 3.195e-10 + (1.0 - 10.0*(273.1-Temp))*5.768e-11 
            ELSE IF (Temp .ge. 273.1 .AND. Temp .lt. 273.2) THEN 
                beta = 3.772e-10 + (1.0 - 10.0*(273.2-Temp))*6.198e-11 
            ELSE IF (Temp .ge. 273.2 .AND. Temp .lt. 273.3) THEN 
                beta = 4.392e-10 + (1.0 - 10.0*(273.3-Temp))*7.216e-11 
            ELSE IF (Temp .ge. 273.3 .AND. Temp .lt. 273.4) THEN 
                beta = 5.113e-10 + (1.0 - 10.0*(273.4-Temp))*7.584e-11 
            ELSE IF (Temp .ge. 273.4 .AND. Temp .lt. 273.5) THEN 
                beta = 5.872e-10 + (1.0 - 10.0*(273.5-Temp))*8.709e-11 
            ELSE IF (Temp .ge. 273.5 .AND. Temp .lt. 273.6) THEN 
                beta = 6.743e-10 + (1.0 - 10.0*(273.6-Temp))*1.000e-10 
            ELSE IF (Temp .ge. 273.6 .AND. Temp .lt. 273.7) THEN 
                beta = 7.743e-10 + (1.0 - 10.0*(273.7-Temp))*1.026e-10 
            ELSE IF (Temp .ge. 273.7 .AND. Temp .lt. 273.8) THEN 
                beta = 8.769e-10 + (1.0 - 10.0*(273.8-Temp))*1.162e-10 
            ELSE IF (Temp .ge. 273.8 .AND. Temp .lt. 273.9) THEN 
                beta = 9.931e-10 + (1.0 - 10.0*(273.9-Temp))*1.316e-10 
            ELSE IF (Temp .ge. 273.9 .AND. Temp .lt. 274.0) THEN 
                beta = 1.125e-09 + (1.0 - 10.0*(274.0-Temp))*1.491e-10 
            ELSE IF (Temp .ge. 274.0 .AND. Temp .lt. 274.1) THEN 
                beta = 1.274e-09 + (1.0 - 10.0*(274.1-Temp))*1.490e-10 
            ELSE IF (Temp .ge. 274.1 .AND. Temp .lt. 274.2) THEN 
                beta = 1.423e-09 + (1.0 - 10.0*(274.2-Temp))*1.665e-10 
            ELSE IF (Temp .ge. 274.2 .AND. Temp .lt. 274.3) THEN 
                beta = 1.589e-09 + (1.0 - 10.0*(274.3-Temp))*1.615e-10 
            ELSE IF (Temp .ge. 274.3 .AND. Temp .lt. 274.4) THEN 
                beta = 1.751e-09 + (1.0 - 10.0*(274.4-Temp))*2.048e-10 
            ELSE IF (Temp .ge. 274.4 .AND. Temp .lt. 274.5) THEN 
                beta = 1.956e-09 + (1.0 - 10.0*(274.5-Temp))*1.988e-10 
            ELSE IF (Temp .ge. 274.5 .AND. Temp .lt. 274.6) THEN 
                beta = 2.154e-09 + (1.0 - 10.0*(274.6-Temp))*2.190e-10 
            ELSE IF (Temp .ge. 274.6 .AND. Temp .lt. 274.7) THEN 
                beta = 2.373e-09 + (1.0 - 10.0*(274.7-Temp))*2.053e-10 
            ELSE IF (Temp .ge. 274.7 .AND. Temp .lt. 274.8) THEN 
                beta = 2.579e-09 + (1.0 - 10.0*(274.8-Temp))*2.621e-10 
            ELSE IF (Temp .ge. 274.8 .AND. Temp .lt. 274.9) THEN 
                beta = 2.841e-09 + (1.0 - 10.0*(274.9-Temp))*2.458e-10 
            ELSE IF (Temp .ge. 274.9 .AND. Temp .lt. 275.0) THEN 
                beta = 3.087e-09 + (1.0 - 10.0*(275.0-Temp))*2.670e-10 
            ELSE IF (Temp .ge. 275.0 .AND. Temp .lt. 275.1) THEN 
                beta = 3.354e-09 + (1.0 - 10.0*(275.1-Temp))*2.901e-10 
            ELSE IF (Temp .ge. 275.1 .AND. Temp .lt. 275.2) THEN 
                beta = 3.644e-09 + (1.0 - 10.0*(275.2-Temp))*3.153e-10 
            ELSE IF (Temp .ge. 275.2 .AND. Temp .lt. 275.3) THEN 
                beta = 3.959e-09 + (1.0 - 10.0*(275.3-Temp))*2.834e-10 
            ELSE IF (Temp .ge. 275.3 .AND. Temp .lt. 275.4) THEN 
                beta = 4.243e-09 + (1.0 - 10.0*(275.4-Temp))*3.670e-10 
            ELSE IF (Temp .ge. 275.4 .AND. Temp .lt. 275.5) THEN 
                beta = 4.610e-09 + (1.0 - 10.0*(275.5-Temp))*3.300e-10 
            ELSE IF (Temp .ge. 275.5 .AND. Temp .lt. 275.6) THEN 
                beta = 4.940e-09 + (1.0 - 10.0*(275.6-Temp))*3.536e-10 
            ELSE IF (Temp .ge. 275.6 .AND. Temp .lt. 275.7) THEN 
                beta = 5.293e-09 + (1.0 - 10.0*(275.7-Temp))*3.790e-10 
            ELSE IF (Temp .ge. 275.7 .AND. Temp .lt. 275.8) THEN 
                beta = 5.672e-09 + (1.0 - 10.0*(275.8-Temp))*4.061e-10 
            ELSE IF (Temp .ge. 275.8 .AND. Temp .lt. 275.9) THEN 
                beta = 6.078e-09 + (1.0 - 10.0*(275.9-Temp))*3.457e-10 
            ELSE IF (Temp .ge. 275.9 .AND. Temp .lt. 276.0) THEN 
                beta = 6.424e-09 + (1.0 - 10.0*(276.0-Temp))*4.599e-10 
            ELSE IF (Temp .ge. 276.0 .AND. Temp .lt. 276.1) THEN 
                beta = 6.884e-09 + (1.0 - 10.0*(276.1-Temp))*3.915e-10 
            ELSE IF (Temp .ge. 276.1 .AND. Temp .lt. 276.2) THEN 
                beta = 7.275e-09 + (1.0 - 10.0*(276.2-Temp))*4.138e-10 
            ELSE IF (Temp .ge. 276.2 .AND. Temp .lt. 276.3) THEN 
                beta = 7.689e-09 + (1.0 - 10.0*(276.3-Temp))*4.373e-10 
            ELSE IF (Temp .ge. 276.3 .AND. Temp .lt. 276.4) THEN 
                beta = 8.127e-09 + (1.0 - 10.0*(276.4-Temp))*4.622e-10 
            ELSE IF (Temp .ge. 276.4 .AND. Temp .lt. 276.5) THEN 
                beta = 8.589e-09 + (1.0 - 10.0*(276.5-Temp))*4.885e-10 
            ELSE IF (Temp .ge. 276.5 .AND. Temp .lt. 276.6) THEN 
                beta = 9.077e-09 + (1.0 - 10.0*(276.6-Temp))*5.163e-10 
            ELSE IF (Temp .ge. 276.6 .AND. Temp .lt. 276.7) THEN 
                beta = 9.594e-09 + (1.0 - 10.0*(276.7-Temp))*5.456e-10 
            ELSE IF (Temp .ge. 276.7 .AND. Temp .lt. 276.8) THEN 
                beta = 1.014e-08 + (1.0 - 10.0*(276.8-Temp))*4.295e-10 
            ELSE IF (Temp .ge. 276.8 .AND. Temp .lt. 276.9) THEN 
                beta = 1.057e-08 + (1.0 - 10.0*(276.9-Temp))*6.011e-10 
            ELSE IF (Temp .ge. 276.9 .AND. Temp .lt. 277.0) THEN 
                beta = 1.117e-08 + (1.0 - 10.0*(277.0-Temp))*4.732e-10 
            ELSE IF (Temp .ge. 277.0 .AND. Temp .lt. 277.1) THEN 
                beta = 1.164e-08 + (1.0 - 10.0*(277.1-Temp))*4.932e-10 
            ELSE IF (Temp .ge. 277.1 .AND. Temp .lt. 277.2) THEN 
                beta = 1.214e-08 + (1.0 - 10.0*(277.2-Temp))*6.903e-10 
            ELSE IF (Temp .ge. 277.2 .AND. Temp .lt. 277.3) THEN 
                beta = 1.283e-08 + (1.0 - 10.0*(277.3-Temp))*5.433e-10 
            ELSE IF (Temp .ge. 277.3 .AND. Temp .lt. 277.4) THEN 
                beta = 1.337e-08 + (1.0 - 10.0*(277.4-Temp))*5.664e-10 
            ELSE IF (Temp .ge. 277.4 .AND. Temp .lt. 277.5) THEN 
                beta = 1.394e-08 + (1.0 - 10.0*(277.5-Temp))*5.903e-10 
            ELSE IF (Temp .ge. 277.5 .AND. Temp .lt. 277.6) THEN 
                beta = 1.453e-08 + (1.0 - 10.0*(277.6-Temp))*6.154e-10 
            ELSE IF (Temp .ge. 277.6 .AND. Temp .lt. 277.7) THEN 
                beta = 1.514e-08 + (1.0 - 10.0*(277.7-Temp))*4.247e-10 
            ELSE IF (Temp .ge. 277.7 .AND. Temp .lt. 277.8) THEN 
                beta = 1.557e-08 + (1.0 - 10.0*(277.8-Temp))*6.594e-10 
            ELSE IF (Temp .ge. 277.8 .AND. Temp .lt. 277.9) THEN 
                beta = 1.623e-08 + (1.0 - 10.0*(277.9-Temp))*6.873e-10 
            ELSE IF (Temp .ge. 277.9 .AND. Temp .lt. 278.0) THEN 
                beta = 1.691e-08 + (1.0 - 10.0*(278.0-Temp))*7.165e-10 
            ELSE IF (Temp .ge. 278.0 .AND. Temp .lt. 278.1) THEN 
                beta = 1.763e-08 + (1.0 - 10.0*(278.1-Temp))*4.944e-10 
            ELSE IF (Temp .ge. 278.1 .AND. Temp .lt. 278.2) THEN 
                beta = 1.812e-08 + (1.0 - 10.0*(278.2-Temp))*7.678e-10 
            ELSE IF (Temp .ge. 278.2 .AND. Temp .lt. 278.3) THEN 
                beta = 1.889e-08 + (1.0 - 10.0*(278.3-Temp))*5.298e-10 
            ELSE IF (Temp .ge. 278.3 .AND. Temp .lt. 278.4) THEN 
                beta = 1.942e-08 + (1.0 - 10.0*(278.4-Temp))*8.227e-10 
            ELSE IF (Temp .ge. 278.4 .AND. Temp .lt. 278.5) THEN 
                beta = 2.024e-08 + (1.0 - 10.0*(278.5-Temp))*5.678e-10 
            ELSE IF (Temp .ge. 278.5 .AND. Temp .lt. 278.6) THEN 
                beta = 2.081e-08 + (1.0 - 10.0*(278.6-Temp))*5.837e-10 
            ELSE IF (Temp .ge. 278.6 .AND. Temp .lt. 278.7) THEN 
                beta = 2.140e-08 + (1.0 - 10.0*(278.7-Temp))*6.000e-10 
            ELSE IF (Temp .ge. 278.7 .AND. Temp .lt. 278.8) THEN 
                beta = 2.200e-08 + (1.0 - 10.0*(278.8-Temp))*9.318e-10 
            ELSE IF (Temp .ge. 278.8 .AND. Temp .lt. 278.9) THEN 
                beta = 2.293e-08 + (1.0 - 10.0*(278.9-Temp))*6.430e-10 
            ELSE IF (Temp .ge. 278.9 .AND. Temp .lt. 279.0) THEN 
                beta = 2.357e-08 + (1.0 - 10.0*(279.0-Temp))*6.610e-10 
            ELSE IF (Temp .ge. 279.0 .AND. Temp .lt. 279.1) THEN 
                beta = 2.423e-08 + (1.0 - 10.0*(279.1-Temp))*6.796e-10 
            ELSE IF (Temp .ge. 279.1 .AND. Temp .lt. 279.2) THEN 
                beta = 2.491e-08 + (1.0 - 10.0*(279.2-Temp))*6.986e-10 
            ELSE IF (Temp .ge. 279.2 .AND. Temp .lt. 279.3) THEN 
                beta = 2.561e-08 + (1.0 - 10.0*(279.3-Temp))*7.182e-10 
            ELSE IF (Temp .ge. 279.3 .AND. Temp .lt. 279.4) THEN 
                beta = 2.633e-08 + (1.0 - 10.0*(279.4-Temp))*7.384e-10 
            ELSE IF (Temp .ge. 279.4 .AND. Temp .lt. 279.5) THEN 
                beta = 2.707e-08 + (1.0 - 10.0*(279.5-Temp))*7.591e-10 
            ELSE IF (Temp .ge. 279.5 .AND. Temp .lt. 279.6) THEN 
                beta = 2.783e-08 + (1.0 - 10.0*(279.6-Temp))*7.804e-10 
            ELSE IF (Temp .ge. 279.6 .AND. Temp .lt. 279.7) THEN 
                beta = 2.861e-08 + (1.0 - 10.0*(279.7-Temp))*8.022e-10 
            ELSE IF (Temp .ge. 279.7 .AND. Temp .lt. 279.8) THEN 
                beta = 2.941e-08 + (1.0 - 10.0*(279.8-Temp))*4.095e-10 
            ELSE IF (Temp .ge. 279.8 .AND. Temp .lt. 279.9) THEN 
                beta = 2.982e-08 + (1.0 - 10.0*(279.9-Temp))*8.362e-10 
            ELSE IF (Temp .ge. 279.9 .AND. Temp .lt. 280.0) THEN 
                beta = 3.065e-08 + (1.0 - 10.0*(280.0-Temp))*8.597e-10 
            ELSE IF (Temp .ge. 280.0 .AND. Temp .lt. 280.1) THEN 
                beta = 3.151e-08 + (1.0 - 10.0*(280.1-Temp))*8.838e-10 
            ELSE IF (Temp .ge. 280.1 .AND. Temp .lt. 280.2) THEN 
                beta = 3.240e-08 + (1.0 - 10.0*(280.2-Temp))*4.511e-10 
            ELSE IF (Temp .ge. 280.2 .AND. Temp .lt. 280.3) THEN 
                beta = 3.285e-08 + (1.0 - 10.0*(280.3-Temp))*9.212e-10 
            ELSE IF (Temp .ge. 280.3 .AND. Temp .lt. 280.4) THEN 
                beta = 3.377e-08 + (1.0 - 10.0*(280.4-Temp))*9.471e-10 
            ELSE IF (Temp .ge. 280.4 .AND. Temp .lt. 280.5) THEN 
                beta = 3.472e-08 + (1.0 - 10.0*(280.5-Temp))*4.834e-10 
            ELSE IF (Temp .ge. 280.5 .AND. Temp .lt. 280.6) THEN 
                beta = 3.520e-08 + (1.0 - 10.0*(280.6-Temp))*9.872e-10 
            ELSE IF (Temp .ge. 280.6 .AND. Temp .lt. 280.7) THEN 
                beta = 3.619e-08 + (1.0 - 10.0*(280.7-Temp))*5.039e-10 
            ELSE IF (Temp .ge. 280.7 .AND. Temp .lt. 280.8) THEN 
                beta = 3.669e-08 + (1.0 - 10.0*(280.8-Temp))*1.029e-09 
            ELSE IF (Temp .ge. 280.8 .AND. Temp .lt. 280.9) THEN 
                beta = 3.772e-08 + (1.0 - 10.0*(280.9-Temp))*5.253e-10 
            ELSE IF (Temp .ge. 280.9 .AND. Temp .lt. 281.0) THEN 
                beta = 3.825e-08 + (1.0 - 10.0*(281.0-Temp))*1.073e-09 
            ELSE IF (Temp .ge. 281.0 .AND. Temp .lt. 281.1) THEN 
                beta = 3.932e-08 + (1.0 - 10.0*(281.1-Temp))*5.475e-10 
            ELSE IF (Temp .ge. 281.1 .AND. Temp .lt. 281.2) THEN 
                beta = 3.987e-08 + (1.0 - 10.0*(281.2-Temp))*5.551e-10 
            ELSE IF (Temp .ge. 281.2 .AND. Temp .lt. 281.3) THEN 
                beta = 4.042e-08 + (1.0 - 10.0*(281.3-Temp))*1.134e-09 
            ELSE IF (Temp .ge. 281.3 .AND. Temp .lt. 281.4) THEN 
                beta = 4.155e-08 + (1.0 - 10.0*(281.4-Temp))*5.787e-10 
            ELSE IF (Temp .ge. 281.4 .AND. Temp .lt. 281.5) THEN 
                beta = 4.213e-08 + (1.0 - 10.0*(281.5-Temp))*1.182e-09 
            ELSE IF (Temp .ge. 281.5 .AND. Temp .lt. 281.6) THEN 
                beta = 4.331e-08 + (1.0 - 10.0*(281.6-Temp))*6.032e-10 
            ELSE IF (Temp .ge. 281.6 .AND. Temp .lt. 281.7) THEN 
                beta = 4.392e-08 + (1.0 - 10.0*(281.7-Temp))*6.116e-10 
            ELSE IF (Temp .ge. 281.7 .AND. Temp .lt. 281.8) THEN 
                beta = 4.453e-08 + (1.0 - 10.0*(281.8-Temp))*6.201e-10 
            ELSE IF (Temp .ge. 281.8 .AND. Temp .lt. 281.9) THEN 
                beta = 4.515e-08 + (1.0 - 10.0*(281.9-Temp))*1.266e-09 
            ELSE IF (Temp .ge. 281.9 .AND. Temp .lt. 282.0) THEN 
                beta = 4.642e-08 + (1.0 - 10.0*(282.0-Temp))*6.464e-10 
            ELSE IF (Temp .ge. 282.0 .AND. Temp .lt. 282.1) THEN 
                beta = 4.706e-08 + (1.0 - 10.0*(282.1-Temp))*6.554e-10 
            ELSE IF (Temp .ge. 282.1 .AND. Temp .lt. 282.2) THEN 
                beta = 4.772e-08 + (1.0 - 10.0*(282.2-Temp))*6.645e-10 
            ELSE IF (Temp .ge. 282.2 .AND. Temp .lt. 282.3) THEN 
                beta = 4.838e-08 + (1.0 - 10.0*(282.3-Temp))*6.737e-10 
            ELSE IF (Temp .ge. 282.3 .AND. Temp .lt. 282.4) THEN 
                beta = 4.906e-08 + (1.0 - 10.0*(282.4-Temp))*1.376e-09 
            ELSE IF (Temp .ge. 282.4 .AND. Temp .lt. 282.5) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(282.5-Temp))*7.023e-10 
            ELSE IF (Temp .ge. 282.5 .AND. Temp .lt. 282.6) THEN 
                beta = 5.113e-08 + (1.0 - 10.0*(282.6-Temp))*7.121e-10 
            ELSE IF (Temp .ge. 282.6 .AND. Temp .lt. 282.7) THEN 
                beta = 5.185e-08 + (1.0 - 10.0*(282.7-Temp))*7.220e-10 
            ELSE IF (Temp .ge. 282.7 .AND. Temp .lt. 282.8) THEN 
                beta = 5.257e-08 + (1.0 - 10.0*(282.8-Temp))*7.320e-10 
            ELSE IF (Temp .ge. 282.8 .AND. Temp .lt. 282.9) THEN 
                beta = 5.330e-08 + (1.0 - 10.0*(282.9-Temp))*7.422e-10 
            ELSE IF (Temp .ge. 282.9 .AND. Temp .lt. 283.0) THEN 
                beta = 5.404e-08 + (1.0 - 10.0*(283.0-Temp))*7.526e-10 
            ELSE IF (Temp .ge. 283.0 .AND. Temp .lt. 283.1) THEN 
                beta = 5.479e-08 + (1.0 - 10.0*(283.1-Temp))*7.630e-10 
            ELSE IF (Temp .ge. 283.1 .AND. Temp .lt. 283.2) THEN 
                beta = 5.556e-08 + (1.0 - 10.0*(283.2-Temp))*7.737e-10 
            ELSE IF (Temp .ge. 283.2 .AND. Temp .lt. 283.3) THEN 
                beta = 5.633e-08 + (1.0 - 10.0*(283.3-Temp))*7.844e-10 
            ELSE IF (Temp .ge. 283.3 .AND. Temp .lt. 283.4) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(283.4-Temp))*7.954e-10 
            ELSE IF (Temp .ge. 283.4 .AND. Temp .lt. 283.5) THEN 
                beta = 5.791e-08 + (1.0 - 10.0*(283.5-Temp))*8.064e-10 
            ELSE IF (Temp .ge. 283.5 .AND. Temp .lt. 283.6) THEN 
                beta = 5.872e-08 + (1.0 - 10.0*(283.6-Temp))*8.177e-10 
            ELSE IF (Temp .ge. 283.6 .AND. Temp .lt. 283.7) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(283.7-Temp))*8.291e-10 
            ELSE IF (Temp .ge. 283.7 .AND. Temp .lt. 283.8) THEN 
                beta = 6.036e-08 + (1.0 - 10.0*(283.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 283.8 .AND. Temp .lt. 283.9) THEN 
                beta = 6.036e-08 + (1.0 - 10.0*(283.9-Temp))*8.406e-10 
            ELSE IF (Temp .ge. 283.9 .AND. Temp .lt. 284.0) THEN 
                beta = 6.120e-08 + (1.0 - 10.0*(284.0-Temp))*8.523e-10 
            ELSE IF (Temp .ge. 284.0 .AND. Temp .lt. 284.1) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(284.1-Temp))*8.642e-10 
            ELSE IF (Temp .ge. 284.1 .AND. Temp .lt. 284.2) THEN 
                beta = 6.292e-08 + (1.0 - 10.0*(284.2-Temp))*8.762e-10 
            ELSE IF (Temp .ge. 284.2 .AND. Temp .lt. 284.3) THEN 
                beta = 6.380e-08 + (1.0 - 10.0*(284.3-Temp))*8.884e-10 
            ELSE IF (Temp .ge. 284.3 .AND. Temp .lt. 284.4) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(284.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.4 .AND. Temp .lt. 284.5) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(284.5-Temp))*9.008e-10 
            ELSE IF (Temp .ge. 284.5 .AND. Temp .lt. 284.6) THEN 
                beta = 6.559e-08 + (1.0 - 10.0*(284.6-Temp))*9.133e-10 
            ELSE IF (Temp .ge. 284.6 .AND. Temp .lt. 284.7) THEN 
                beta = 6.650e-08 + (1.0 - 10.0*(284.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.7 .AND. Temp .lt. 284.8) THEN 
                beta = 6.650e-08 + (1.0 - 10.0*(284.8-Temp))*9.260e-10 
            ELSE IF (Temp .ge. 284.8 .AND. Temp .lt. 284.9) THEN 
                beta = 6.743e-08 + (1.0 - 10.0*(284.9-Temp))*9.389e-10 
            ELSE IF (Temp .ge. 284.9 .AND. Temp .lt. 285.0) THEN 
                beta = 6.837e-08 + (1.0 - 10.0*(285.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.0 .AND. Temp .lt. 285.1) THEN 
                beta = 6.837e-08 + (1.0 - 10.0*(285.1-Temp))*9.520e-10 
            ELSE IF (Temp .ge. 285.1 .AND. Temp .lt. 285.2) THEN 
                beta = 6.932e-08 + (1.0 - 10.0*(285.2-Temp))*9.653e-10 
            ELSE IF (Temp .ge. 285.2 .AND. Temp .lt. 285.3) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.3 .AND. Temp .lt. 285.4) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.4-Temp))*9.787e-10 
            ELSE IF (Temp .ge. 285.4 .AND. Temp .lt. 285.5) THEN 
                beta = 7.126e-08 + (1.0 - 10.0*(285.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.5 .AND. Temp .lt. 285.6) THEN 
                beta = 7.126e-08 + (1.0 - 10.0*(285.6-Temp))*9.923e-10 
            ELSE IF (Temp .ge. 285.6 .AND. Temp .lt. 285.7) THEN 
                beta = 7.225e-08 + (1.0 - 10.0*(285.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.7 .AND. Temp .lt. 285.8) THEN 
                beta = 7.225e-08 + (1.0 - 10.0*(285.8-Temp))*1.006e-09 
            ELSE IF (Temp .ge. 285.8 .AND. Temp .lt. 285.9) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(285.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.9 .AND. Temp .lt. 286.0) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(286.0-Temp))*1.020e-09 
            ELSE IF (Temp .ge. 286.0 .AND. Temp .lt. 286.1) THEN 
                beta = 7.428e-08 + (1.0 - 10.0*(286.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.1 .AND. Temp .lt. 286.2) THEN 
                beta = 7.428e-08 + (1.0 - 10.0*(286.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.2 .AND. Temp .lt. 286.3) THEN 
                beta = 7.428e-08 + (1.0 - 10.0*(286.3-Temp))*1.034e-09 
            ELSE IF (Temp .ge. 286.3 .AND. Temp .lt. 286.4) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(286.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.4 .AND. Temp .lt. 286.5) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(286.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.5 .AND. Temp .lt. 286.6) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(286.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.6 .AND. Temp .lt. 286.7) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(286.7-Temp))*1.049e-09 
            ELSE IF (Temp .ge. 286.7 .AND. Temp .lt. 286.8) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(286.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.8 .AND. Temp .lt. 286.9) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(286.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.9 .AND. Temp .lt. 287.0) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.0 .AND. Temp .lt. 287.1) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.1 .AND. Temp .lt. 287.2) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.2 .AND. Temp .lt. 287.3) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.3 .AND. Temp .lt. 287.4) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.4 .AND. Temp .lt. 287.5) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.5 .AND. Temp .lt. 287.6) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.6 .AND. Temp .lt. 287.7) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.7 .AND. Temp .lt. 287.8) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.8 .AND. Temp .lt. 287.9) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(287.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 287.9 .AND. Temp .lt. 288.0) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(288.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.0 .AND. Temp .lt. 288.1) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(288.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.1 .AND. Temp .lt. 288.2) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(288.2-Temp))*-1.049e-09 
            ELSE IF (Temp .ge. 288.2 .AND. Temp .lt. 288.3) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(288.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.3 .AND. Temp .lt. 288.4) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(288.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.4 .AND. Temp .lt. 288.5) THEN 
                beta = 7.531e-08 + (1.0 - 10.0*(288.5-Temp))*-1.034e-09 
            ELSE IF (Temp .ge. 288.5 .AND. Temp .lt. 288.6) THEN 
                beta = 7.428e-08 + (1.0 - 10.0*(288.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.6 .AND. Temp .lt. 288.7) THEN 
                beta = 7.428e-08 + (1.0 - 10.0*(288.7-Temp))*-1.020e-09 
            ELSE IF (Temp .ge. 288.7 .AND. Temp .lt. 288.8) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(288.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.8 .AND. Temp .lt. 288.9) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(288.9-Temp))*-1.006e-09 
            ELSE IF (Temp .ge. 288.9 .AND. Temp .lt. 289.0) THEN 
                beta = 7.225e-08 + (1.0 - 10.0*(289.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.0 .AND. Temp .lt. 289.1) THEN 
                beta = 7.225e-08 + (1.0 - 10.0*(289.1-Temp))*-9.923e-10 
            ELSE IF (Temp .ge. 289.1 .AND. Temp .lt. 289.2) THEN 
                beta = 7.126e-08 + (1.0 - 10.0*(289.2-Temp))*-9.787e-10 
            ELSE IF (Temp .ge. 289.2 .AND. Temp .lt. 289.3) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(289.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.3 .AND. Temp .lt. 289.4) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(289.4-Temp))*-9.653e-10 
            ELSE IF (Temp .ge. 289.4 .AND. Temp .lt. 289.5) THEN 
                beta = 6.932e-08 + (1.0 - 10.0*(289.5-Temp))*-9.520e-10 
            ELSE IF (Temp .ge. 289.5 .AND. Temp .lt. 289.6) THEN 
                beta = 6.837e-08 + (1.0 - 10.0*(289.6-Temp))*-9.389e-10 
            ELSE IF (Temp .ge. 289.6 .AND. Temp .lt. 289.7) THEN 
                beta = 6.743e-08 + (1.0 - 10.0*(289.7-Temp))*-9.260e-10 
            ELSE IF (Temp .ge. 289.7 .AND. Temp .lt. 289.8) THEN 
                beta = 6.650e-08 + (1.0 - 10.0*(289.8-Temp))*-9.133e-10 
            ELSE IF (Temp .ge. 289.8 .AND. Temp .lt. 289.9) THEN 
                beta = 6.559e-08 + (1.0 - 10.0*(289.9-Temp))*-9.008e-10 
            ELSE IF (Temp .ge. 289.9 .AND. Temp .lt. 290.0) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(290.0-Temp))*-8.884e-10 
            ELSE IF (Temp .ge. 290.0 .AND. Temp .lt. 290.1) THEN 
                beta = 6.380e-08 + (1.0 - 10.0*(290.1-Temp))*-8.762e-10 
            ELSE IF (Temp .ge. 290.1 .AND. Temp .lt. 290.2) THEN 
                beta = 6.292e-08 + (1.0 - 10.0*(290.2-Temp))*-8.642e-10 
            ELSE IF (Temp .ge. 290.2 .AND. Temp .lt. 290.3) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(290.3-Temp))*-1.693e-09 
            ELSE IF (Temp .ge. 290.3 .AND. Temp .lt. 290.4) THEN 
                beta = 6.036e-08 + (1.0 - 10.0*(290.4-Temp))*-8.291e-10 
            ELSE IF (Temp .ge. 290.4 .AND. Temp .lt. 290.5) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(290.5-Temp))*-1.624e-09 
            ELSE IF (Temp .ge. 290.5 .AND. Temp .lt. 290.6) THEN 
                beta = 5.791e-08 + (1.0 - 10.0*(290.6-Temp))*-7.954e-10 
            ELSE IF (Temp .ge. 290.6 .AND. Temp .lt. 290.7) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(290.7-Temp))*-1.558e-09 
            ELSE IF (Temp .ge. 290.7 .AND. Temp .lt. 290.8) THEN 
                beta = 5.556e-08 + (1.0 - 10.0*(290.8-Temp))*-7.630e-10 
            ELSE IF (Temp .ge. 290.8 .AND. Temp .lt. 290.9) THEN 
                beta = 5.479e-08 + (1.0 - 10.0*(290.9-Temp))*-1.495e-09 
            ELSE IF (Temp .ge. 290.9 .AND. Temp .lt. 291.0) THEN 
                beta = 5.330e-08 + (1.0 - 10.0*(291.0-Temp))*-1.454e-09 
            ELSE IF (Temp .ge. 291.0 .AND. Temp .lt. 291.1) THEN 
                beta = 5.185e-08 + (1.0 - 10.0*(291.1-Temp))*-1.414e-09 
            ELSE IF (Temp .ge. 291.1 .AND. Temp .lt. 291.2) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(291.2-Temp))*-1.376e-09 
            ELSE IF (Temp .ge. 291.2 .AND. Temp .lt. 291.3) THEN 
                beta = 4.906e-08 + (1.0 - 10.0*(291.3-Temp))*-1.338e-09 
            ELSE IF (Temp .ge. 291.3 .AND. Temp .lt. 291.4) THEN 
                beta = 4.772e-08 + (1.0 - 10.0*(291.4-Temp))*-1.302e-09 
            ELSE IF (Temp .ge. 291.4 .AND. Temp .lt. 291.5) THEN 
                beta = 4.642e-08 + (1.0 - 10.0*(291.5-Temp))*-1.266e-09 
            ELSE IF (Temp .ge. 291.5 .AND. Temp .lt. 291.6) THEN 
                beta = 4.515e-08 + (1.0 - 10.0*(291.6-Temp))*-1.232e-09 
            ELSE IF (Temp .ge. 291.6 .AND. Temp .lt. 291.7) THEN 
                beta = 4.392e-08 + (1.0 - 10.0*(291.7-Temp))*-1.785e-09 
            ELSE IF (Temp .ge. 291.7 .AND. Temp .lt. 291.8) THEN 
                beta = 4.213e-08 + (1.0 - 10.0*(291.8-Temp))*-1.149e-09 
            ELSE IF (Temp .ge. 291.8 .AND. Temp .lt. 291.9) THEN 
                beta = 4.098e-08 + (1.0 - 10.0*(291.9-Temp))*-1.666e-09 
            ELSE IF (Temp .ge. 291.9 .AND. Temp .lt. 292.0) THEN 
                beta = 3.932e-08 + (1.0 - 10.0*(292.0-Temp))*-1.073e-09 
            ELSE IF (Temp .ge. 292.0 .AND. Temp .lt. 292.1) THEN 
                beta = 3.825e-08 + (1.0 - 10.0*(292.1-Temp))*-1.554e-09 
            ELSE IF (Temp .ge. 292.1 .AND. Temp .lt. 292.2) THEN 
                beta = 3.669e-08 + (1.0 - 10.0*(292.2-Temp))*-1.491e-09 
            ELSE IF (Temp .ge. 292.2 .AND. Temp .lt. 292.3) THEN 
                beta = 3.520e-08 + (1.0 - 10.0*(292.3-Temp))*-1.431e-09 
            ELSE IF (Temp .ge. 292.3 .AND. Temp .lt. 292.4) THEN 
                beta = 3.377e-08 + (1.0 - 10.0*(292.4-Temp))*-1.372e-09 
            ELSE IF (Temp .ge. 292.4 .AND. Temp .lt. 292.5) THEN 
                beta = 3.240e-08 + (1.0 - 10.0*(292.5-Temp))*-1.317e-09 
            ELSE IF (Temp .ge. 292.5 .AND. Temp .lt. 292.6) THEN 
                beta = 3.108e-08 + (1.0 - 10.0*(292.6-Temp))*-1.263e-09 
            ELSE IF (Temp .ge. 292.6 .AND. Temp .lt. 292.7) THEN 
                beta = 2.982e-08 + (1.0 - 10.0*(292.7-Temp))*-1.605e-09 
            ELSE IF (Temp .ge. 292.7 .AND. Temp .lt. 292.8) THEN 
                beta = 2.821e-08 + (1.0 - 10.0*(292.8-Temp))*-1.147e-09 
            ELSE IF (Temp .ge. 292.8 .AND. Temp .lt. 292.9) THEN 
                beta = 2.707e-08 + (1.0 - 10.0*(292.9-Temp))*-1.457e-09 
            ELSE IF (Temp .ge. 292.9 .AND. Temp .lt. 293.0) THEN 
                beta = 2.561e-08 + (1.0 - 10.0*(293.0-Temp))*-1.378e-09 
            ELSE IF (Temp .ge. 293.0 .AND. Temp .lt. 293.1) THEN 
                beta = 2.423e-08 + (1.0 - 10.0*(293.1-Temp))*-1.304e-09 
            ELSE IF (Temp .ge. 293.1 .AND. Temp .lt. 293.2) THEN 
                beta = 2.293e-08 + (1.0 - 10.0*(293.2-Temp))*-9.318e-10 
            ELSE IF (Temp .ge. 293.2 .AND. Temp .lt. 293.3) THEN 
                beta = 2.200e-08 + (1.0 - 10.0*(293.3-Temp))*-1.470e-09 
            ELSE IF (Temp .ge. 293.3 .AND. Temp .lt. 293.4) THEN 
                beta = 2.053e-08 + (1.0 - 10.0*(293.4-Temp))*-1.105e-09 
            ELSE IF (Temp .ge. 293.4 .AND. Temp .lt. 293.5) THEN 
                beta = 1.942e-08 + (1.0 - 10.0*(293.5-Temp))*-1.045e-09 
            ELSE IF (Temp .ge. 293.5 .AND. Temp .lt. 293.6) THEN 
                beta = 1.838e-08 + (1.0 - 10.0*(293.6-Temp))*-1.228e-09 
            ELSE IF (Temp .ge. 293.6 .AND. Temp .lt. 293.7) THEN 
                beta = 1.715e-08 + (1.0 - 10.0*(293.7-Temp))*-9.229e-10 
            ELSE IF (Temp .ge. 293.7 .AND. Temp .lt. 293.8) THEN 
                beta = 1.623e-08 + (1.0 - 10.0*(293.8-Temp))*-1.084e-09 
            ELSE IF (Temp .ge. 293.8 .AND. Temp .lt. 293.9) THEN 
                beta = 1.514e-08 + (1.0 - 10.0*(293.9-Temp))*-1.012e-09 
            ELSE IF (Temp .ge. 293.9 .AND. Temp .lt. 294.0) THEN 
                beta = 1.413e-08 + (1.0 - 10.0*(294.0-Temp))*-9.440e-10 
            ELSE IF (Temp .ge. 294.0 .AND. Temp .lt. 294.1) THEN 
                beta = 1.319e-08 + (1.0 - 10.0*(294.1-Temp))*-1.050e-09 
            ELSE IF (Temp .ge. 294.1 .AND. Temp .lt. 294.2) THEN 
                beta = 1.214e-08 + (1.0 - 10.0*(294.2-Temp))*-8.108e-10 
            ELSE IF (Temp .ge. 294.2 .AND. Temp .lt. 294.3) THEN 
                beta = 1.133e-08 + (1.0 - 10.0*(294.3-Temp))*-9.018e-10 
            ELSE IF (Temp .ge. 294.3 .AND. Temp .lt. 294.4) THEN 
                beta = 1.042e-08 + (1.0 - 10.0*(294.4-Temp))*-6.964e-10 
            ELSE IF (Temp .ge. 294.4 .AND. Temp .lt. 294.5) THEN 
                beta = 9.727e-09 + (1.0 - 10.0*(294.5-Temp))*-7.745e-10 
            ELSE IF (Temp .ge. 294.5 .AND. Temp .lt. 294.6) THEN 
                beta = 8.953e-09 + (1.0 - 10.0*(294.6-Temp))*-8.260e-10 
            ELSE IF (Temp .ge. 294.6 .AND. Temp .lt. 294.7) THEN 
                beta = 8.127e-09 + (1.0 - 10.0*(294.7-Temp))*-6.471e-10 
            ELSE IF (Temp .ge. 294.7 .AND. Temp .lt. 294.8) THEN 
                beta = 7.480e-09 + (1.0 - 10.0*(294.8-Temp))*-5.956e-10 
            ELSE IF (Temp .ge. 294.8 .AND. Temp .lt. 294.9) THEN 
                beta = 6.884e-09 + (1.0 - 10.0*(294.9-Temp))*-6.352e-10 
            ELSE IF (Temp .ge. 294.9 .AND. Temp .lt. 295.0) THEN 
                beta = 6.249e-09 + (1.0 - 10.0*(295.0-Temp))*-5.766e-10 
            ELSE IF (Temp .ge. 295.0 .AND. Temp .lt. 295.1) THEN 
                beta = 5.672e-09 + (1.0 - 10.0*(295.1-Temp))*-5.234e-10 
            ELSE IF (Temp .ge. 295.1 .AND. Temp .lt. 295.2) THEN 
                beta = 5.149e-09 + (1.0 - 10.0*(295.2-Temp))*-5.393e-10 
            ELSE IF (Temp .ge. 295.2 .AND. Temp .lt. 295.3) THEN 
                beta = 4.610e-09 + (1.0 - 10.0*(295.3-Temp))*-4.253e-10 
            ELSE IF (Temp .ge. 295.3 .AND. Temp .lt. 295.4) THEN 
                beta = 4.184e-09 + (1.0 - 10.0*(295.4-Temp))*-4.382e-10 
            ELSE IF (Temp .ge. 295.4 .AND. Temp .lt. 295.5) THEN 
                beta = 3.746e-09 + (1.0 - 10.0*(295.5-Temp))*-3.923e-10 
            ELSE IF (Temp .ge. 295.5 .AND. Temp .lt. 295.6) THEN 
                beta = 3.354e-09 + (1.0 - 10.0*(295.6-Temp))*-3.512e-10 
            ELSE IF (Temp .ge. 295.6 .AND. Temp .lt. 295.7) THEN 
                beta = 3.002e-09 + (1.0 - 10.0*(295.7-Temp))*-3.514e-10 
            ELSE IF (Temp .ge. 295.7 .AND. Temp .lt. 295.8) THEN 
                beta = 2.651e-09 + (1.0 - 10.0*(295.8-Temp))*-2.777e-10 
            ELSE IF (Temp .ge. 295.8 .AND. Temp .lt. 295.9) THEN 
                beta = 2.373e-09 + (1.0 - 10.0*(295.9-Temp))*-2.778e-10 
            ELSE IF (Temp .gt. 296.0) THEN 
                beta = 2.096e-09 
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
                
                ! convert from gC/dm2 h to gC/m2 d for state variable
                BrochP = P
                P = P * 24 * 100
                R = R * 24 * 100            
           
                ! effect on TIC is net of production and maintenance respiration
                ! growth respiration is included in FLMALS
                ! TIC gets converted (lost) to DOC in exudate
                ! in PRIPRO.f it is      STOICH TIC = -1.0 * dPPGREEN = ( PPROD - RESP ) * ALG
                dMALTIC = TotAreMAL * FrBmMALS * (P - R) / (Surf*Depth) 
                
                ! exudate is produced as DOC, E is a fraction of production              
                ! exudation (leakage) gC/(m3 d)
                dMALDOC = TotAreMAL * FrBmMALS * P * E / (Surf*Depth) 
                
                ! uptake into storage gC/(m2 d)
                LocUpC = TotAreMAL * FrBmMALS * (P * (1.0-E) - R) / Surf
                
                ! oxygen 
                ! photosynthesis produces oxygen, respiration consumes                
                dPrMALOXY = 2.67 * dMALTIC
                ! ALKA included in stoich
                
                GrosMALC            = TotAreMAL * FrBmMALS * P /Surf
                RespMALC            = TotAreMAL * FrBmMALS * R /Surf
                ExudMALC            = TotAreMAL * FrBmMALS * P * E /Surf
                PMSA( IPNT( 31)   ) = LocUpC
                PMSA( IPNT( 32)   ) = Itip
                PMSA( IPNT( 33)   ) = Itipu
                PMSA( IPNT( 34)   ) = BrochP
                PMSA( IPNT( 35)   ) = GrosMALC
                PMSA( IPNT( 36)   ) = RespMALC
                PMSA( IPNT( 37)   ) = ExudMALC
                PMSA( IPNT( 38)   ) = beta

                FL ( IdUpMALTIC   ) = dMALTIC
                FL ( IdPrMALDOC   ) = dMALDOC
                FL ( IdPrMALOXY   ) = dPrMALOXY
                
                ! allocate to bottom segment flux address
                FLCREM = (MBotSeg-ISEG)*NOFLUX
                ! storage goes to storage
                ! if no storage, respiration is taken from carbon storage, then structural mass.
                ! fluxes were for whole segment, so convert to /m2
                IF (LocUpC .ge. 0.0) THEN
                  FL(IdStrMALC+FLCREM)= FL(IdStrMALC + FLCREM) + LocUpC
                  FL(IdCanMALS+FLCREM) = 0.0
                ELSE
                    IF (MALC .gt. MALCmin) THEN
                      ! take respiration from storage  
                      FL(IdStrMALC+FLCREM)= FL(IdStrMALC + FLCREM) + 
     &                  LocUpC
                      FL(IdCanMALS+FLCREM) = 0.0  
                    ELSE
                      ! take from structural mass if needed
                      FL(IdStrMALC+FLCREM) = 0.0
                      ! flux is a negative number so this should be a positive number
                      ! thus it is minusing a negative number
                      ! tres confusing...
                      FL(IdCanMALS+FLCREM)= FL(IdCanMALS + FLCREM) -
     &                  LocUpC/CDRatMALS 
                    ENDIF
                      
                ENDIF
            ELSE
                PMSA( IPNT( 31)   ) = 0.0
                PMSA( IPNT( 32)   ) = 0.0
                PMSA( IPNT( 33)   ) = 0.0
                PMSA( IPNT( 34)   ) = 0.0
                PMSA( IPNT( 35)   ) = 0.0
                PMSA( IPNT( 36)   ) = 0.0
                PMSA( IPNT( 37)   ) = 0.0
                PMSA( IPNT( 38)   ) = 0.0                  
            ENDIF
       ENDIF

       IdUpMALTIC   = IdUpMALTIC + NOFLUX
       IdPrMALDOC   = IdPrMALDOC + NOFLUX
       IdPrMALOXY   = IdPrMALOXY + NOFLUX   
       IdStrMALC    = IdStrMALC  + NOFLUX
       IdCanMALS    = IdCanMALS  + NOFLUX       
       IPNT         = IPNT       + INCREM

 9000 CONTINUE

      RETURN
      END
