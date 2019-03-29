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
      INTEGER IPOINT(37)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(37)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 37)   !    Local work array for the pointering
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
                !Temp = 273.0 + 12.0
                !I = 10.0
                
                Tpl = 271.0
                Tph = 296.0
                alpha0 = alpha
                ! gC/(dm2 hr) because of units of P1
                ! this does not matter because it was pre calculated in MATLAB
                Pmax = P1 * exp((Tap/Tp1) - (Tap/Temp))/
     &           (1 + exp((Tapl/Temp) - (Tapl/Tpl)) + 
     &           exp((Taph/Tph) - (Taph/Temp)))
                
                ! solve for beta using newton's method
                ! for the moment we do not do this due to complexity of the expression
                ! instead we plot Pmax as a function of T
                ! and Pmax as a function of beta
                ! and for the given T, calculate the Pmax, and find the beta associated with that,
                ! specifying it in this conditional series
            IF (Temp .lt. 271.0) THEN 
                beta = 1.788e-12 
            ELSE IF (Temp .ge. 271.0 .AND. Temp .lt. 271.1) THEN 
                beta = 2.543e-12 + (1.0 - 10.0*(271.1-Temp))*1.075e-12 
            ELSE IF (Temp .ge. 271.1 .AND. Temp .lt. 271.2) THEN 
                beta = 3.619e-12 + (1.0 - 10.0*(271.2-Temp))*1.321e-12 
            ELSE IF (Temp .ge. 271.2 .AND. Temp .lt. 271.3) THEN 
                beta = 4.940e-12 + (1.0 - 10.0*(271.3-Temp))*1.803e-12 
            ELSE IF (Temp .ge. 271.3 .AND. Temp .lt. 271.4) THEN 
                beta = 6.743e-12 + (1.0 - 10.0*(271.4-Temp))*2.461e-12 
            ELSE IF (Temp .ge. 271.4 .AND. Temp .lt. 271.5) THEN 
                beta = 9.204e-12 + (1.0 - 10.0*(271.5-Temp))*3.102e-12 
            ELSE IF (Temp .ge. 271.5 .AND. Temp .lt. 271.6) THEN 
                beta = 1.231e-11 + (1.0 - 10.0*(271.6-Temp))*3.809e-12 
            ELSE IF (Temp .ge. 271.6 .AND. Temp .lt. 271.7) THEN 
                beta = 1.611e-11 + (1.0 - 10.0*(271.7-Temp))*4.988e-12 
            ELSE IF (Temp .ge. 271.7 .AND. Temp .lt. 271.8) THEN 
                beta = 2.110e-11 + (1.0 - 10.0*(271.8-Temp))*6.532e-12 
            ELSE IF (Temp .ge. 271.8 .AND. Temp .lt. 271.9) THEN 
                beta = 2.763e-11 + (1.0 - 10.0*(271.9-Temp))*7.811e-12 
            ELSE IF (Temp .ge. 271.9 .AND. Temp .lt. 272.0) THEN 
                beta = 3.544e-11 + (1.0 - 10.0*(272.0-Temp))*9.085e-12 
            ELSE IF (Temp .ge. 272.0 .AND. Temp .lt. 272.1) THEN 
                beta = 4.453e-11 + (1.0 - 10.0*(272.1-Temp))*1.259e-11 
            ELSE IF (Temp .ge. 272.1 .AND. Temp .lt. 272.2) THEN 
                beta = 5.712e-11 + (1.0 - 10.0*(272.2-Temp))*1.317e-11 
            ELSE IF (Temp .ge. 272.2 .AND. Temp .lt. 272.3) THEN 
                beta = 7.028e-11 + (1.0 - 10.0*(272.3-Temp))*1.801e-11 
            ELSE IF (Temp .ge. 272.3 .AND. Temp .lt. 272.4) THEN 
                beta = 8.830e-11 + (1.0 - 10.0*(272.4-Temp))*2.035e-11 
            ELSE IF (Temp .ge. 272.4 .AND. Temp .lt. 272.5) THEN 
                beta = 1.087e-10 + (1.0 - 10.0*(272.5-Temp))*2.230e-11 
            ELSE IF (Temp .ge. 272.5 .AND. Temp .lt. 272.6) THEN 
                beta = 1.310e-10 + (1.0 - 10.0*(272.6-Temp))*2.688e-11 
            ELSE IF (Temp .ge. 272.6 .AND. Temp .lt. 272.7) THEN 
                beta = 1.578e-10 + (1.0 - 10.0*(272.7-Temp))*3.240e-11 
            ELSE IF (Temp .ge. 272.7 .AND. Temp .lt. 272.8) THEN 
                beta = 1.902e-10 + (1.0 - 10.0*(272.8-Temp))*3.905e-11 
            ELSE IF (Temp .ge. 272.8 .AND. Temp .lt. 272.9) THEN 
                beta = 2.293e-10 + (1.0 - 10.0*(272.9-Temp))*4.139e-11 
            ELSE IF (Temp .ge. 272.9 .AND. Temp .lt. 273.0) THEN 
                beta = 2.707e-10 + (1.0 - 10.0*(273.0-Temp))*4.886e-11 
            ELSE IF (Temp .ge. 273.0 .AND. Temp .lt. 273.1) THEN 
                beta = 3.195e-10 + (1.0 - 10.0*(273.1-Temp))*5.768e-11 
            ELSE IF (Temp .ge. 273.1 .AND. Temp .lt. 273.2) THEN 
                beta = 3.772e-10 + (1.0 - 10.0*(273.2-Temp))*5.895e-11 
            ELSE IF (Temp .ge. 273.2 .AND. Temp .lt. 273.3) THEN 
                beta = 4.362e-10 + (1.0 - 10.0*(273.3-Temp))*7.873e-11 
            ELSE IF (Temp .ge. 273.3 .AND. Temp .lt. 273.4) THEN 
                beta = 5.149e-10 + (1.0 - 10.0*(273.4-Temp))*8.047e-11 
            ELSE IF (Temp .ge. 273.4 .AND. Temp .lt. 273.5) THEN 
                beta = 5.954e-10 + (1.0 - 10.0*(273.5-Temp))*7.891e-11 
            ELSE IF (Temp .ge. 273.5 .AND. Temp .lt. 273.6) THEN 
                beta = 6.743e-10 + (1.0 - 10.0*(273.6-Temp))*1.054e-10 
            ELSE IF (Temp .ge. 273.6 .AND. Temp .lt. 273.7) THEN 
                beta = 7.796e-10 + (1.0 - 10.0*(273.7-Temp))*1.033e-10 
            ELSE IF (Temp .ge. 273.7 .AND. Temp .lt. 273.8) THEN 
                beta = 8.830e-10 + (1.0 - 10.0*(273.8-Temp))*1.170e-10 
            ELSE IF (Temp .ge. 273.8 .AND. Temp .lt. 273.9) THEN 
                beta = 1.000e-09 + (1.0 - 10.0*(273.9-Temp))*1.325e-10 
            ELSE IF (Temp .ge. 273.9 .AND. Temp .lt. 274.0) THEN 
                beta = 1.133e-09 + (1.0 - 10.0*(274.0-Temp))*1.238e-10 
            ELSE IF (Temp .ge. 274.0 .AND. Temp .lt. 274.1) THEN 
                beta = 1.256e-09 + (1.0 - 10.0*(274.1-Temp))*1.665e-10 
            ELSE IF (Temp .ge. 274.1 .AND. Temp .lt. 274.2) THEN 
                beta = 1.423e-09 + (1.0 - 10.0*(274.2-Temp))*1.555e-10 
            ELSE IF (Temp .ge. 274.2 .AND. Temp .lt. 274.3) THEN 
                beta = 1.578e-09 + (1.0 - 10.0*(274.3-Temp))*1.725e-10 
            ELSE IF (Temp .ge. 274.3 .AND. Temp .lt. 274.4) THEN 
                beta = 1.751e-09 + (1.0 - 10.0*(274.4-Temp))*1.913e-10 
            ELSE IF (Temp .ge. 274.4 .AND. Temp .lt. 274.5) THEN 
                beta = 1.942e-09 + (1.0 - 10.0*(274.5-Temp))*2.123e-10 
            ELSE IF (Temp .ge. 274.5 .AND. Temp .lt. 274.6) THEN 
                beta = 2.154e-09 + (1.0 - 10.0*(274.6-Temp))*1.864e-10 
            ELSE IF (Temp .ge. 274.6 .AND. Temp .lt. 274.7) THEN 
                beta = 2.341e-09 + (1.0 - 10.0*(274.7-Temp))*2.558e-10 
            ELSE IF (Temp .ge. 274.7 .AND. Temp .lt. 274.8) THEN 
                beta = 2.597e-09 + (1.0 - 10.0*(274.8-Temp))*2.247e-10 
            ELSE IF (Temp .ge. 274.8 .AND. Temp .lt. 274.9) THEN 
                beta = 2.821e-09 + (1.0 - 10.0*(274.9-Temp))*2.441e-10 
            ELSE IF (Temp .ge. 274.9 .AND. Temp .lt. 275.0) THEN 
                beta = 3.065e-09 + (1.0 - 10.0*(275.0-Temp))*2.652e-10 
            ELSE IF (Temp .ge. 275.0 .AND. Temp .lt. 275.1) THEN 
                beta = 3.331e-09 + (1.0 - 10.0*(275.1-Temp))*2.881e-10 
            ELSE IF (Temp .ge. 275.1 .AND. Temp .lt. 275.2) THEN 
                beta = 3.619e-09 + (1.0 - 10.0*(275.2-Temp))*3.131e-10 
            ELSE IF (Temp .ge. 275.2 .AND. Temp .lt. 275.3) THEN 
                beta = 3.932e-09 + (1.0 - 10.0*(275.3-Temp))*3.402e-10 
            ELSE IF (Temp .ge. 275.3 .AND. Temp .lt. 275.4) THEN 
                beta = 4.272e-09 + (1.0 - 10.0*(275.4-Temp))*2.743e-10 
            ELSE IF (Temp .ge. 275.4 .AND. Temp .lt. 275.5) THEN 
                beta = 4.546e-09 + (1.0 - 10.0*(275.5-Temp))*3.933e-10 
            ELSE IF (Temp .ge. 275.5 .AND. Temp .lt. 275.6) THEN 
                beta = 4.940e-09 + (1.0 - 10.0*(275.6-Temp))*3.172e-10 
            ELSE IF (Temp .ge. 275.6 .AND. Temp .lt. 275.7) THEN 
                beta = 5.257e-09 + (1.0 - 10.0*(275.7-Temp))*4.548e-10 
            ELSE IF (Temp .ge. 275.7 .AND. Temp .lt. 275.8) THEN 
                beta = 5.712e-09 + (1.0 - 10.0*(275.8-Temp))*3.667e-10 
            ELSE IF (Temp .ge. 275.8 .AND. Temp .lt. 275.9) THEN 
                beta = 6.078e-09 + (1.0 - 10.0*(275.9-Temp))*3.903e-10 
            ELSE IF (Temp .ge. 275.9 .AND. Temp .lt. 276.0) THEN 
                beta = 6.469e-09 + (1.0 - 10.0*(276.0-Temp))*4.153e-10 
            ELSE IF (Temp .ge. 276.0 .AND. Temp .lt. 276.1) THEN 
                beta = 6.884e-09 + (1.0 - 10.0*(276.1-Temp))*4.420e-10 
            ELSE IF (Temp .ge. 276.1 .AND. Temp .lt. 276.2) THEN 
                beta = 7.326e-09 + (1.0 - 10.0*(276.2-Temp))*3.103e-10 
            ELSE IF (Temp .ge. 276.2 .AND. Temp .lt. 276.3) THEN 
                beta = 7.636e-09 + (1.0 - 10.0*(276.3-Temp))*4.903e-10 
            ELSE IF (Temp .ge. 276.3 .AND. Temp .lt. 276.4) THEN 
                beta = 8.127e-09 + (1.0 - 10.0*(276.4-Temp))*5.218e-10 
            ELSE IF (Temp .ge. 276.4 .AND. Temp .lt. 276.5) THEN 
                beta = 8.648e-09 + (1.0 - 10.0*(276.5-Temp))*3.664e-10 
            ELSE IF (Temp .ge. 276.5 .AND. Temp .lt. 276.6) THEN 
                beta = 9.015e-09 + (1.0 - 10.0*(276.6-Temp))*5.788e-10 
            ELSE IF (Temp .ge. 276.6 .AND. Temp .lt. 276.7) THEN 
                beta = 9.594e-09 + (1.0 - 10.0*(276.7-Temp))*4.064e-10 
            ELSE IF (Temp .ge. 276.7 .AND. Temp .lt. 276.8) THEN 
                beta = 1.000e-08 + (1.0 - 10.0*(276.8-Temp))*6.421e-10 
            ELSE IF (Temp .ge. 276.8 .AND. Temp .lt. 276.9) THEN 
                beta = 1.064e-08 + (1.0 - 10.0*(276.9-Temp))*4.508e-10 
            ELSE IF (Temp .ge. 276.9 .AND. Temp .lt. 277.0) THEN 
                beta = 1.109e-08 + (1.0 - 10.0*(277.0-Temp))*4.699e-10 
            ELSE IF (Temp .ge. 277.0 .AND. Temp .lt. 277.1) THEN 
                beta = 1.156e-08 + (1.0 - 10.0*(277.1-Temp))*7.424e-10 
            ELSE IF (Temp .ge. 277.1 .AND. Temp .lt. 277.2) THEN 
                beta = 1.231e-08 + (1.0 - 10.0*(277.2-Temp))*5.213e-10 
            ELSE IF (Temp .ge. 277.2 .AND. Temp .lt. 277.3) THEN 
                beta = 1.283e-08 + (1.0 - 10.0*(277.3-Temp))*5.433e-10 
            ELSE IF (Temp .ge. 277.3 .AND. Temp .lt. 277.4) THEN 
                beta = 1.337e-08 + (1.0 - 10.0*(277.4-Temp))*5.664e-10 
            ELSE IF (Temp .ge. 277.4 .AND. Temp .lt. 277.5) THEN 
                beta = 1.394e-08 + (1.0 - 10.0*(277.5-Temp))*5.903e-10 
            ELSE IF (Temp .ge. 277.5 .AND. Temp .lt. 277.6) THEN 
                beta = 1.453e-08 + (1.0 - 10.0*(277.6-Temp))*6.154e-10 
            ELSE IF (Temp .ge. 277.6 .AND. Temp .lt. 277.7) THEN 
                beta = 1.514e-08 + (1.0 - 10.0*(277.7-Temp))*6.414e-10 
            ELSE IF (Temp .ge. 277.7 .AND. Temp .lt. 277.8) THEN 
                beta = 1.578e-08 + (1.0 - 10.0*(277.8-Temp))*6.686e-10 
            ELSE IF (Temp .ge. 277.8 .AND. Temp .lt. 277.9) THEN 
                beta = 1.645e-08 + (1.0 - 10.0*(277.9-Temp))*3.448e-10 
            ELSE IF (Temp .ge. 277.9 .AND. Temp .lt. 278.0) THEN 
                beta = 1.680e-08 + (1.0 - 10.0*(278.0-Temp))*7.115e-10 
            ELSE IF (Temp .ge. 278.0 .AND. Temp .lt. 278.1) THEN 
                beta = 1.751e-08 + (1.0 - 10.0*(278.1-Temp))*7.417e-10 
            ELSE IF (Temp .ge. 278.1 .AND. Temp .lt. 278.2) THEN 
                beta = 1.825e-08 + (1.0 - 10.0*(278.2-Temp))*3.825e-10 
            ELSE IF (Temp .ge. 278.2 .AND. Temp .lt. 278.3) THEN 
                beta = 1.863e-08 + (1.0 - 10.0*(278.3-Temp))*7.893e-10 
            ELSE IF (Temp .ge. 278.3 .AND. Temp .lt. 278.4) THEN 
                beta = 1.942e-08 + (1.0 - 10.0*(278.4-Temp))*8.227e-10 
            ELSE IF (Temp .ge. 278.4 .AND. Temp .lt. 278.5) THEN 
                beta = 2.024e-08 + (1.0 - 10.0*(278.5-Temp))*4.243e-10 
            ELSE IF (Temp .ge. 278.5 .AND. Temp .lt. 278.6) THEN 
                beta = 2.067e-08 + (1.0 - 10.0*(278.6-Temp))*8.755e-10 
            ELSE IF (Temp .ge. 278.6 .AND. Temp .lt. 278.7) THEN 
                beta = 2.154e-08 + (1.0 - 10.0*(278.7-Temp))*4.516e-10 
            ELSE IF (Temp .ge. 278.7 .AND. Temp .lt. 278.8) THEN 
                beta = 2.200e-08 + (1.0 - 10.0*(278.8-Temp))*9.318e-10 
            ELSE IF (Temp .ge. 278.8 .AND. Temp .lt. 278.9) THEN 
                beta = 2.293e-08 + (1.0 - 10.0*(278.9-Temp))*4.806e-10 
            ELSE IF (Temp .ge. 278.9 .AND. Temp .lt. 279.0) THEN 
                beta = 2.341e-08 + (1.0 - 10.0*(279.0-Temp))*9.916e-10 
            ELSE IF (Temp .ge. 279.0 .AND. Temp .lt. 279.1) THEN 
                beta = 2.440e-08 + (1.0 - 10.0*(279.1-Temp))*5.114e-10 
            ELSE IF (Temp .ge. 279.1 .AND. Temp .lt. 279.2) THEN 
                beta = 2.491e-08 + (1.0 - 10.0*(279.2-Temp))*5.222e-10 
            ELSE IF (Temp .ge. 279.2 .AND. Temp .lt. 279.3) THEN 
                beta = 2.543e-08 + (1.0 - 10.0*(279.3-Temp))*1.077e-09 
            ELSE IF (Temp .ge. 279.3 .AND. Temp .lt. 279.4) THEN 
                beta = 2.651e-08 + (1.0 - 10.0*(279.4-Temp))*5.557e-10 
            ELSE IF (Temp .ge. 279.4 .AND. Temp .lt. 279.5) THEN 
                beta = 2.707e-08 + (1.0 - 10.0*(279.5-Temp))*5.673e-10 
            ELSE IF (Temp .ge. 279.5 .AND. Temp .lt. 279.6) THEN 
                beta = 2.763e-08 + (1.0 - 10.0*(279.6-Temp))*1.171e-09 
            ELSE IF (Temp .ge. 279.6 .AND. Temp .lt. 279.7) THEN 
                beta = 2.880e-08 + (1.0 - 10.0*(279.7-Temp))*6.038e-10 
            ELSE IF (Temp .ge. 279.7 .AND. Temp .lt. 279.8) THEN 
                beta = 2.941e-08 + (1.0 - 10.0*(279.8-Temp))*6.164e-10 
            ELSE IF (Temp .ge. 279.8 .AND. Temp .lt. 279.9) THEN 
                beta = 3.002e-08 + (1.0 - 10.0*(279.9-Temp))*6.293e-10 
            ELSE IF (Temp .ge. 279.9 .AND. Temp .lt. 280.0) THEN 
                beta = 3.065e-08 + (1.0 - 10.0*(280.0-Temp))*6.425e-10 
            ELSE IF (Temp .ge. 280.0 .AND. Temp .lt. 280.1) THEN 
                beta = 3.130e-08 + (1.0 - 10.0*(280.1-Temp))*6.560e-10 
            ELSE IF (Temp .ge. 280.1 .AND. Temp .lt. 280.2) THEN 
                beta = 3.195e-08 + (1.0 - 10.0*(280.2-Temp))*1.354e-09 
            ELSE IF (Temp .ge. 280.2 .AND. Temp .lt. 280.3) THEN 
                beta = 3.331e-08 + (1.0 - 10.0*(280.3-Temp))*6.981e-10 
            ELSE IF (Temp .ge. 280.3 .AND. Temp .lt. 280.4) THEN 
                beta = 3.400e-08 + (1.0 - 10.0*(280.4-Temp))*7.127e-10 
            ELSE IF (Temp .ge. 280.4 .AND. Temp .lt. 280.5) THEN 
                beta = 3.472e-08 + (1.0 - 10.0*(280.5-Temp))*7.277e-10 
            ELSE IF (Temp .ge. 280.5 .AND. Temp .lt. 280.6) THEN 
                beta = 3.544e-08 + (1.0 - 10.0*(280.6-Temp))*7.429e-10 
            ELSE IF (Temp .ge. 280.6 .AND. Temp .lt. 280.7) THEN 
                beta = 3.619e-08 + (1.0 - 10.0*(280.7-Temp))*7.585e-10 
            ELSE IF (Temp .ge. 280.7 .AND. Temp .lt. 280.8) THEN 
                beta = 3.695e-08 + (1.0 - 10.0*(280.8-Temp))*7.744e-10 
            ELSE IF (Temp .ge. 280.8 .AND. Temp .lt. 280.9) THEN 
                beta = 3.772e-08 + (1.0 - 10.0*(280.9-Temp))*7.906e-10 
            ELSE IF (Temp .ge. 280.9 .AND. Temp .lt. 281.0) THEN 
                beta = 3.851e-08 + (1.0 - 10.0*(281.0-Temp))*8.072e-10 
            ELSE IF (Temp .ge. 281.0 .AND. Temp .lt. 281.1) THEN 
                beta = 3.932e-08 + (1.0 - 10.0*(281.1-Temp))*8.241e-10 
            ELSE IF (Temp .ge. 281.1 .AND. Temp .lt. 281.2) THEN 
                beta = 4.014e-08 + (1.0 - 10.0*(281.2-Temp))*8.414e-10 
            ELSE IF (Temp .ge. 281.2 .AND. Temp .lt. 281.3) THEN 
                beta = 4.098e-08 + (1.0 - 10.0*(281.3-Temp))*8.590e-10 
            ELSE IF (Temp .ge. 281.3 .AND. Temp .lt. 281.4) THEN 
                beta = 4.184e-08 + (1.0 - 10.0*(281.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 281.4 .AND. Temp .lt. 281.5) THEN 
                beta = 4.184e-08 + (1.0 - 10.0*(281.5-Temp))*8.771e-10 
            ELSE IF (Temp .ge. 281.5 .AND. Temp .lt. 281.6) THEN 
                beta = 4.272e-08 + (1.0 - 10.0*(281.6-Temp))*8.954e-10 
            ELSE IF (Temp .ge. 281.6 .AND. Temp .lt. 281.7) THEN 
                beta = 4.362e-08 + (1.0 - 10.0*(281.7-Temp))*9.142e-10 
            ELSE IF (Temp .ge. 281.7 .AND. Temp .lt. 281.8) THEN 
                beta = 4.453e-08 + (1.0 - 10.0*(281.8-Temp))*9.334e-10 
            ELSE IF (Temp .ge. 281.8 .AND. Temp .lt. 281.9) THEN 
                beta = 4.546e-08 + (1.0 - 10.0*(281.9-Temp))*9.529e-10 
            ELSE IF (Temp .ge. 281.9 .AND. Temp .lt. 282.0) THEN 
                beta = 4.642e-08 + (1.0 - 10.0*(282.0-Temp))*9.729e-10 
            ELSE IF (Temp .ge. 282.0 .AND. Temp .lt. 282.1) THEN 
                beta = 4.739e-08 + (1.0 - 10.0*(282.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 282.1 .AND. Temp .lt. 282.2) THEN 
                beta = 4.739e-08 + (1.0 - 10.0*(282.2-Temp))*9.933e-10 
            ELSE IF (Temp .ge. 282.2 .AND. Temp .lt. 282.3) THEN 
                beta = 4.838e-08 + (1.0 - 10.0*(282.3-Temp))*1.014e-09 
            ELSE IF (Temp .ge. 282.3 .AND. Temp .lt. 282.4) THEN 
                beta = 4.940e-08 + (1.0 - 10.0*(282.4-Temp))*1.035e-09 
            ELSE IF (Temp .ge. 282.4 .AND. Temp .lt. 282.5) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(282.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 282.5 .AND. Temp .lt. 282.6) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(282.6-Temp))*1.057e-09 
            ELSE IF (Temp .ge. 282.6 .AND. Temp .lt. 282.7) THEN 
                beta = 5.149e-08 + (1.0 - 10.0*(282.7-Temp))*1.079e-09 
            ELSE IF (Temp .ge. 282.7 .AND. Temp .lt. 282.8) THEN 
                beta = 5.257e-08 + (1.0 - 10.0*(282.8-Temp))*1.102e-09 
            ELSE IF (Temp .ge. 282.8 .AND. Temp .lt. 282.9) THEN 
                beta = 5.367e-08 + (1.0 - 10.0*(282.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 282.9 .AND. Temp .lt. 283.0) THEN 
                beta = 5.367e-08 + (1.0 - 10.0*(283.0-Temp))*1.125e-09 
            ELSE IF (Temp .ge. 283.0 .AND. Temp .lt. 283.1) THEN 
                beta = 5.479e-08 + (1.0 - 10.0*(283.1-Temp))*1.149e-09 
            ELSE IF (Temp .ge. 283.1 .AND. Temp .lt. 283.2) THEN 
                beta = 5.594e-08 + (1.0 - 10.0*(283.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 283.2 .AND. Temp .lt. 283.3) THEN 
                beta = 5.594e-08 + (1.0 - 10.0*(283.3-Temp))*1.173e-09 
            ELSE IF (Temp .ge. 283.3 .AND. Temp .lt. 283.4) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(283.4-Temp))*1.197e-09 
            ELSE IF (Temp .ge. 283.4 .AND. Temp .lt. 283.5) THEN 
                beta = 5.831e-08 + (1.0 - 10.0*(283.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 283.5 .AND. Temp .lt. 283.6) THEN 
                beta = 5.831e-08 + (1.0 - 10.0*(283.6-Temp))*1.222e-09 
            ELSE IF (Temp .ge. 283.6 .AND. Temp .lt. 283.7) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(283.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 283.7 .AND. Temp .lt. 283.8) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(283.8-Temp))*1.248e-09 
            ELSE IF (Temp .ge. 283.8 .AND. Temp .lt. 283.9) THEN 
                beta = 6.078e-08 + (1.0 - 10.0*(283.9-Temp))*1.274e-09 
            ELSE IF (Temp .ge. 283.9 .AND. Temp .lt. 284.0) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(284.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.0 .AND. Temp .lt. 284.1) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(284.1-Temp))*1.301e-09 
            ELSE IF (Temp .ge. 284.1 .AND. Temp .lt. 284.2) THEN 
                beta = 6.336e-08 + (1.0 - 10.0*(284.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.2 .AND. Temp .lt. 284.3) THEN 
                beta = 6.336e-08 + (1.0 - 10.0*(284.3-Temp))*1.328e-09 
            ELSE IF (Temp .ge. 284.3 .AND. Temp .lt. 284.4) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(284.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.4 .AND. Temp .lt. 284.5) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(284.5-Temp))*1.356e-09 
            ELSE IF (Temp .ge. 284.5 .AND. Temp .lt. 284.6) THEN 
                beta = 6.604e-08 + (1.0 - 10.0*(284.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.6 .AND. Temp .lt. 284.7) THEN 
                beta = 6.604e-08 + (1.0 - 10.0*(284.7-Temp))*1.384e-09 
            ELSE IF (Temp .ge. 284.7 .AND. Temp .lt. 284.8) THEN 
                beta = 6.743e-08 + (1.0 - 10.0*(284.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 284.8 .AND. Temp .lt. 284.9) THEN 
                beta = 6.743e-08 + (1.0 - 10.0*(284.9-Temp))*1.413e-09 
            ELSE IF (Temp .ge. 284.9 .AND. Temp .lt. 285.0) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(285.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.0 .AND. Temp .lt. 285.1) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(285.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.1 .AND. Temp .lt. 285.2) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(285.2-Temp))*1.443e-09 
            ELSE IF (Temp .ge. 285.2 .AND. Temp .lt. 285.3) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.3 .AND. Temp .lt. 285.4) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.4 .AND. Temp .lt. 285.5) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(285.5-Temp))*1.473e-09 
            ELSE IF (Temp .ge. 285.5 .AND. Temp .lt. 285.6) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(285.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.6 .AND. Temp .lt. 285.7) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(285.7-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.7 .AND. Temp .lt. 285.8) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(285.8-Temp))*1.504e-09 
            ELSE IF (Temp .ge. 285.8 .AND. Temp .lt. 285.9) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(285.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 285.9 .AND. Temp .lt. 286.0) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(286.0-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.0 .AND. Temp .lt. 286.1) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(286.1-Temp))*1.536e-09 
            ELSE IF (Temp .ge. 286.1 .AND. Temp .lt. 286.2) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(286.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.2 .AND. Temp .lt. 286.3) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(286.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.3 .AND. Temp .lt. 286.4) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(286.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.4 .AND. Temp .lt. 286.5) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(286.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 286.5 .AND. Temp .lt. 286.6) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(286.6-Temp))*1.568e-09 
            ELSE IF (Temp .ge. 286.6 .AND. Temp .lt. 286.7) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(286.7-Temp))*0.000e+00 
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
                beta = 7.636e-08 + (1.0 - 10.0*(288.2-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.2 .AND. Temp .lt. 288.3) THEN 
                beta = 7.636e-08 + (1.0 - 10.0*(288.3-Temp))*-1.568e-09 
            ELSE IF (Temp .ge. 288.3 .AND. Temp .lt. 288.4) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(288.4-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.4 .AND. Temp .lt. 288.5) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(288.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.5 .AND. Temp .lt. 288.6) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(288.6-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.6 .AND. Temp .lt. 288.7) THEN 
                beta = 7.480e-08 + (1.0 - 10.0*(288.7-Temp))*-1.536e-09 
            ELSE IF (Temp .ge. 288.7 .AND. Temp .lt. 288.8) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(288.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.8 .AND. Temp .lt. 288.9) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(288.9-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 288.9 .AND. Temp .lt. 289.0) THEN 
                beta = 7.326e-08 + (1.0 - 10.0*(289.0-Temp))*-1.504e-09 
            ELSE IF (Temp .ge. 289.0 .AND. Temp .lt. 289.1) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(289.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.1 .AND. Temp .lt. 289.2) THEN 
                beta = 7.176e-08 + (1.0 - 10.0*(289.2-Temp))*-1.473e-09 
            ELSE IF (Temp .ge. 289.2 .AND. Temp .lt. 289.3) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(289.3-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.3 .AND. Temp .lt. 289.4) THEN 
                beta = 7.028e-08 + (1.0 - 10.0*(289.4-Temp))*-1.443e-09 
            ELSE IF (Temp .ge. 289.4 .AND. Temp .lt. 289.5) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(289.5-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.5 .AND. Temp .lt. 289.6) THEN 
                beta = 6.884e-08 + (1.0 - 10.0*(289.6-Temp))*-1.413e-09 
            ELSE IF (Temp .ge. 289.6 .AND. Temp .lt. 289.7) THEN 
                beta = 6.743e-08 + (1.0 - 10.0*(289.7-Temp))*-1.384e-09 
            ELSE IF (Temp .ge. 289.7 .AND. Temp .lt. 289.8) THEN 
                beta = 6.604e-08 + (1.0 - 10.0*(289.8-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 289.8 .AND. Temp .lt. 289.9) THEN 
                beta = 6.604e-08 + (1.0 - 10.0*(289.9-Temp))*-1.356e-09 
            ELSE IF (Temp .ge. 289.9 .AND. Temp .lt. 290.0) THEN 
                beta = 6.469e-08 + (1.0 - 10.0*(290.0-Temp))*-1.328e-09 
            ELSE IF (Temp .ge. 290.0 .AND. Temp .lt. 290.1) THEN 
                beta = 6.336e-08 + (1.0 - 10.0*(290.1-Temp))*0.000e+00 
            ELSE IF (Temp .ge. 290.1 .AND. Temp .lt. 290.2) THEN 
                beta = 6.336e-08 + (1.0 - 10.0*(290.2-Temp))*-1.301e-09 
            ELSE IF (Temp .ge. 290.2 .AND. Temp .lt. 290.3) THEN 
                beta = 6.206e-08 + (1.0 - 10.0*(290.3-Temp))*-1.274e-09 
            ELSE IF (Temp .ge. 290.3 .AND. Temp .lt. 290.4) THEN 
                beta = 6.078e-08 + (1.0 - 10.0*(290.4-Temp))*-1.248e-09 
            ELSE IF (Temp .ge. 290.4 .AND. Temp .lt. 290.5) THEN 
                beta = 5.954e-08 + (1.0 - 10.0*(290.5-Temp))*-1.222e-09 
            ELSE IF (Temp .ge. 290.5 .AND. Temp .lt. 290.6) THEN 
                beta = 5.831e-08 + (1.0 - 10.0*(290.6-Temp))*-1.197e-09 
            ELSE IF (Temp .ge. 290.6 .AND. Temp .lt. 290.7) THEN 
                beta = 5.712e-08 + (1.0 - 10.0*(290.7-Temp))*-1.173e-09 
            ELSE IF (Temp .ge. 290.7 .AND. Temp .lt. 290.8) THEN 
                beta = 5.594e-08 + (1.0 - 10.0*(290.8-Temp))*-1.149e-09 
            ELSE IF (Temp .ge. 290.8 .AND. Temp .lt. 290.9) THEN 
                beta = 5.479e-08 + (1.0 - 10.0*(290.9-Temp))*-1.125e-09 
            ELSE IF (Temp .ge. 290.9 .AND. Temp .lt. 291.0) THEN 
                beta = 5.367e-08 + (1.0 - 10.0*(291.0-Temp))*-2.181e-09 
            ELSE IF (Temp .ge. 291.0 .AND. Temp .lt. 291.1) THEN 
                beta = 5.149e-08 + (1.0 - 10.0*(291.1-Temp))*-1.057e-09 
            ELSE IF (Temp .ge. 291.1 .AND. Temp .lt. 291.2) THEN 
                beta = 5.043e-08 + (1.0 - 10.0*(291.2-Temp))*-1.035e-09 
            ELSE IF (Temp .ge. 291.2 .AND. Temp .lt. 291.3) THEN 
                beta = 4.940e-08 + (1.0 - 10.0*(291.3-Temp))*-2.007e-09 
            ELSE IF (Temp .ge. 291.3 .AND. Temp .lt. 291.4) THEN 
                beta = 4.739e-08 + (1.0 - 10.0*(291.4-Temp))*-9.729e-10 
            ELSE IF (Temp .ge. 291.4 .AND. Temp .lt. 291.5) THEN 
                beta = 4.642e-08 + (1.0 - 10.0*(291.5-Temp))*-9.529e-10 
            ELSE IF (Temp .ge. 291.5 .AND. Temp .lt. 291.6) THEN 
                beta = 4.546e-08 + (1.0 - 10.0*(291.6-Temp))*-1.848e-09 
            ELSE IF (Temp .ge. 291.6 .AND. Temp .lt. 291.7) THEN 
                beta = 4.362e-08 + (1.0 - 10.0*(291.7-Temp))*-8.954e-10 
            ELSE IF (Temp .ge. 291.7 .AND. Temp .lt. 291.8) THEN 
                beta = 4.272e-08 + (1.0 - 10.0*(291.8-Temp))*-1.736e-09 
            ELSE IF (Temp .ge. 291.8 .AND. Temp .lt. 291.9) THEN 
                beta = 4.098e-08 + (1.0 - 10.0*(291.9-Temp))*-1.666e-09 
            ELSE IF (Temp .ge. 291.9 .AND. Temp .lt. 292.0) THEN 
                beta = 3.932e-08 + (1.0 - 10.0*(292.0-Temp))*-1.598e-09 
            ELSE IF (Temp .ge. 292.0 .AND. Temp .lt. 292.1) THEN 
                beta = 3.772e-08 + (1.0 - 10.0*(292.1-Temp))*-7.744e-10 
            ELSE IF (Temp .ge. 292.1 .AND. Temp .lt. 292.2) THEN 
                beta = 3.695e-08 + (1.0 - 10.0*(292.2-Temp))*-1.501e-09 
            ELSE IF (Temp .ge. 292.2 .AND. Temp .lt. 292.3) THEN 
                beta = 3.544e-08 + (1.0 - 10.0*(292.3-Temp))*-1.440e-09 
            ELSE IF (Temp .ge. 292.3 .AND. Temp .lt. 292.4) THEN 
                beta = 3.400e-08 + (1.0 - 10.0*(292.4-Temp))*-1.382e-09 
            ELSE IF (Temp .ge. 292.4 .AND. Temp .lt. 292.5) THEN 
                beta = 3.262e-08 + (1.0 - 10.0*(292.5-Temp))*-1.326e-09 
            ELSE IF (Temp .ge. 292.5 .AND. Temp .lt. 292.6) THEN 
                beta = 3.130e-08 + (1.0 - 10.0*(292.6-Temp))*-1.888e-09 
            ELSE IF (Temp .ge. 292.6 .AND. Temp .lt. 292.7) THEN 
                beta = 2.941e-08 + (1.0 - 10.0*(292.7-Temp))*-1.195e-09 
            ELSE IF (Temp .ge. 292.7 .AND. Temp .lt. 292.8) THEN 
                beta = 2.821e-08 + (1.0 - 10.0*(292.8-Temp))*-1.147e-09 
            ELSE IF (Temp .ge. 292.8 .AND. Temp .lt. 292.9) THEN 
                beta = 2.707e-08 + (1.0 - 10.0*(292.9-Temp))*-1.633e-09 
            ELSE IF (Temp .ge. 292.9 .AND. Temp .lt. 293.0) THEN 
                beta = 2.543e-08 + (1.0 - 10.0*(293.0-Temp))*-1.034e-09 
            ELSE IF (Temp .ge. 293.0 .AND. Temp .lt. 293.1) THEN 
                beta = 2.440e-08 + (1.0 - 10.0*(293.1-Temp))*-1.472e-09 
            ELSE IF (Temp .ge. 293.1 .AND. Temp .lt. 293.2) THEN 
                beta = 2.293e-08 + (1.0 - 10.0*(293.2-Temp))*-9.318e-10 
            ELSE IF (Temp .ge. 293.2 .AND. Temp .lt. 293.3) THEN 
                beta = 2.200e-08 + (1.0 - 10.0*(293.3-Temp))*-1.327e-09 
            ELSE IF (Temp .ge. 293.3 .AND. Temp .lt. 293.4) THEN 
                beta = 2.067e-08 + (1.0 - 10.0*(293.4-Temp))*-1.247e-09 
            ELSE IF (Temp .ge. 293.4 .AND. Temp .lt. 293.5) THEN 
                beta = 1.942e-08 + (1.0 - 10.0*(293.5-Temp))*-1.172e-09 
            ELSE IF (Temp .ge. 293.5 .AND. Temp .lt. 293.6) THEN 
                beta = 1.825e-08 + (1.0 - 10.0*(293.6-Temp))*-1.101e-09 
            ELSE IF (Temp .ge. 293.6 .AND. Temp .lt. 293.7) THEN 
                beta = 1.715e-08 + (1.0 - 10.0*(293.7-Temp))*-1.035e-09 
            ELSE IF (Temp .ge. 293.7 .AND. Temp .lt. 293.8) THEN 
                beta = 1.611e-08 + (1.0 - 10.0*(293.8-Temp))*-9.722e-10 
            ELSE IF (Temp .ge. 293.8 .AND. Temp .lt. 293.9) THEN 
                beta = 1.514e-08 + (1.0 - 10.0*(293.9-Temp))*-9.136e-10 
            ELSE IF (Temp .ge. 293.9 .AND. Temp .lt. 294.0) THEN 
                beta = 1.423e-08 + (1.0 - 10.0*(294.0-Temp))*-1.133e-09 
            ELSE IF (Temp .ge. 294.0 .AND. Temp .lt. 294.1) THEN 
                beta = 1.310e-08 + (1.0 - 10.0*(294.1-Temp))*-7.901e-10 
            ELSE IF (Temp .ge. 294.1 .AND. Temp .lt. 294.2) THEN 
                beta = 1.231e-08 + (1.0 - 10.0*(294.2-Temp))*-9.798e-10 
            ELSE IF (Temp .ge. 294.2 .AND. Temp .lt. 294.3) THEN 
                beta = 1.133e-08 + (1.0 - 10.0*(294.3-Temp))*-9.018e-10 
            ELSE IF (Temp .ge. 294.3 .AND. Temp .lt. 294.4) THEN 
                beta = 1.042e-08 + (1.0 - 10.0*(294.4-Temp))*-8.300e-10 
            ELSE IF (Temp .ge. 294.4 .AND. Temp .lt. 294.5) THEN 
                beta = 9.594e-09 + (1.0 - 10.0*(294.5-Temp))*-7.639e-10 
            ELSE IF (Temp .ge. 294.5 .AND. Temp .lt. 294.6) THEN 
                beta = 8.830e-09 + (1.0 - 10.0*(294.6-Temp))*-7.031e-10 
            ELSE IF (Temp .ge. 294.6 .AND. Temp .lt. 294.7) THEN 
                beta = 8.127e-09 + (1.0 - 10.0*(294.7-Temp))*-6.471e-10 
            ELSE IF (Temp .ge. 294.7 .AND. Temp .lt. 294.8) THEN 
                beta = 7.480e-09 + (1.0 - 10.0*(294.8-Temp))*-5.956e-10 
            ELSE IF (Temp .ge. 294.8 .AND. Temp .lt. 294.9) THEN 
                beta = 6.884e-09 + (1.0 - 10.0*(294.9-Temp))*-6.782e-10 
            ELSE IF (Temp .ge. 294.9 .AND. Temp .lt. 295.0) THEN 
                beta = 6.206e-09 + (1.0 - 10.0*(295.0-Temp))*-4.941e-10 
            ELSE IF (Temp .ge. 295.0 .AND. Temp .lt. 295.1) THEN 
                beta = 5.712e-09 + (1.0 - 10.0*(295.1-Temp))*-5.627e-10 
            ELSE IF (Temp .ge. 295.1 .AND. Temp .lt. 295.2) THEN 
                beta = 5.149e-09 + (1.0 - 10.0*(295.2-Temp))*-5.073e-10 
            ELSE IF (Temp .ge. 295.2 .AND. Temp .lt. 295.3) THEN 
                beta = 4.642e-09 + (1.0 - 10.0*(295.3-Temp))*-4.573e-10 
            ELSE IF (Temp .ge. 295.3 .AND. Temp .lt. 295.4) THEN 
                beta = 4.184e-09 + (1.0 - 10.0*(295.4-Temp))*-4.122e-10 
            ELSE IF (Temp .ge. 295.4 .AND. Temp .lt. 295.5) THEN 
                beta = 3.772e-09 + (1.0 - 10.0*(295.5-Temp))*-4.414e-10 
            ELSE IF (Temp .ge. 295.5 .AND. Temp .lt. 295.6) THEN 
                beta = 3.331e-09 + (1.0 - 10.0*(295.6-Temp))*-3.281e-10 
            ELSE IF (Temp .ge. 295.6 .AND. Temp .lt. 295.7) THEN 
                beta = 3.002e-09 + (1.0 - 10.0*(295.7-Temp))*-3.514e-10 
            ELSE IF (Temp .ge. 295.7 .AND. Temp .lt. 295.8) THEN 
                beta = 2.651e-09 + (1.0 - 10.0*(295.8-Temp))*-3.103e-10 
            ELSE IF (Temp .ge. 295.8 .AND. Temp .lt. 295.9) THEN 
                beta = 2.341e-09 + (1.0 - 10.0*(295.9-Temp))*-2.739e-10 
            ELSE IF (Temp .gt. 296.0) THEN 
                beta = 2.067e-09 
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
                
                GrosMALC            = areaLoc * P 
                RespMALC            = areaLoc * R 
                ExudMALC            = areaLoc * P * E 
                PMSA( IPNT( 30)   ) = LocUpC
                PMSA( IPNT( 31)   ) = Itip
                PMSA( IPNT( 32)   ) = Itipu
                PMSA( IPNT( 33)   ) = BrochP
                PMSA( IPNT( 34)   ) = GrosMALC
                PMSA( IPNT( 35)   ) = RespMALC
                PMSA( IPNT( 36)   ) = ExudMALC
                PMSA( IPNT( 37)   ) = beta

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
