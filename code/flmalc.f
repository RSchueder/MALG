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
      REAL(4) MALC        ! I  MacroALgae carbon storage                           (gC/gDM)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                    (-)
      REAL(4) MALCmin     ! I  minimal C in carbon storage                         (gC/gDM
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                  (gC/gDM)
      REAL(4) AStruct     ! I  area per structural mass                            (m2/gC)
      REAL(4) Temp	    ! I  Water temperature
      REAL(4) R1          ! I 
      REAL(4) R2          ! I 
      REAL(4) Tr1         ! I	 reference temperature 1 for respiration
      REAL(4) Tr2	        ! I  reference temperature 2 for respiration
      REAL(4) P1          ! I  Reference photosynthetic rate at T1
      REAL(4) P2          ! I  Reference photosynthetic rate at T2
      REAL(4) Tp1         ! I  temperature for reference photosynthetic rate 1
      REAL(4) Tp2         ! I  temperature for reference photosynthetic rate 1
      REAL(4) Tap	        ! I  Arrhenius temperature for photosynthesis
      REAL(4) Taph        ! I	 Arrhenius temperature for photosynthesis at high end
      REAL(4) Tapl        ! I	 Arrhenius temperature for photosynthesis at low end
      REAL(4) Tar         ! I	 Arrhenius temperature for respiration
      REAL(4) Rad       	! I  irradiation at the segment upper boundary           (W/m2)
      REAL(4) ExtVl       ! I  total extinction coefficient of visible light       (1/m)
      REAL(4) alpha       ! I	 photosynthetic efficiency gC dm-2 d-1 (umol photons m-2 s-1)-1
      REAL(4) Isat        ! I	 light intensity where photosynthesis is at max (umol photons m-2 s-1)	
      REAL(4) exuMALC     ! I exudation parameter (gC/g)
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment         (m2)
      REAL(4) DELT        ! I  timestep for processes                              (d)
      REAL(4) Depth       ! I  depth of segment                                    (m)
      REAL(4) LocalDepth  ! I  depth of segment below surface                      (m)

      REAL(4) LocUpC      ! O
      
      REAL(4) dMALTIC   ! F  HCO3 uptake MALN                                     (gC/m3/d)
      REAL(4) dMALDOC   ! F  Exudate MALN                                     (gC/m3/d)
      REAL(4) dMALOXY   ! F  OXY production                                     (gC/m3/d)

      INTEGER IdUpMALTIC !   
      INTEGER IdPrMALDOC !   
      INTEGER IdPrMALOXY !   
      
      REAL(4) I       	
      REAL(4) P	        
      REAL(4) Ps      
      REAL(4) Pmax
      REAL(4) beta
      real(4) R
      real(4) E
      REAL(4) Tpl
      REAL(4) Tph

      INTEGER IKMRK1
      INTEGER IKMRK2
C
C*******************************************************************************
C
      IPNT        = IPOINT
     
      IdUpMALTIC   = 1
      IdPrMALDOC   = 2
      IdPrMALOXY   = 2
      
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG
         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         ! if active
         IF (IKMRK1.EQ.1) THEN
            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF (FrBmMALS > 0.0) THEN
                ! need to take from bottom segment
                MALS      =  PMSA( IPNT(  1) )
                MALC       = PMSA( IPNT(  2) )
                ! take from current segment
                FrBmMALS   = PMSA( IPNT(  3) )
                MALCmin    = PMSA( IPNT(  4) )
                CDRatMALS  = PMSA( IPNT(  5) ) 
                AStruct    = PMSA( IPNT(  6) )
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
                Surf       = PMSA( IPNT(  25) )
                DELT       = PMSA( IPNT(  26) )
                Depth      = PMSA( IPNT(  27) )
                LocalDepth = PMSA( IPNT(  28) )
              
                ! check input

!                IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
!               IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
              
                ! find amount of mass in this segment 
               
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
                I = I * 4.57
                
                Pmax = P1 * exp((Tap/Tp1) - (Tap/Temp))/
     &           (1 + exp((Tapl/Temp) - (Tapl/Tpl)) + 
     &           exp((Taph/Tph) - (Taph/Temp)))
                
                ! solve for beta using newton's method
                beta = 1e-9
!                DO 1200 iter = 1, 10
!                  Pmax = (alpha*Isat/ln(1+alpha/beta) * 
!     &            (alpha/(alpha+beta)) * 
!     &             (beta/(alpha+beta))**(beta/alpha)
                  
                Ps = alpha*Isat/LOG(1+alpha/beta)               
                P = Ps * (1-exp(alpha*I/Ps))*exp(beta*I/Ps)
                
                ! respiration
                
                R = R1 * exp(Tar/Tr1 - Tar/Temp)
               
                ! exudation
                E = 1-exp(exuMALC*(MALCmin - MALC))
                
                
                dMALTIC = P - R 

                ! exudate is produced as DOC
                dMALDOC = P*E
                
                ! uptake
                LocUpC = P * (1-E) - R
                ! because TIC gets converted to DOC in exudate
                
                ! oxygen 
                ! photosynthesis produces oxygen, respiration consumes
                
                dMALOXY   = 2.67 * (P - R)

                FL ( IdUpMALTIC   ) = dMALTIC
                FL ( IdPrMALDOC   ) = dMALDOC
                FL ( IdPrMALOXY   ) = dMALOXY


                PMSA( IPNT( 29)   ) =  LocUpC
                
            ENDIF
            ENDIF
            
         IdUpMALTIC   = IdUpMALTIC + NOFLUX
         IdPrMALDOC   = IdPrMALDOC + NOFLUX
         IdPrMALOXY   = IdPrMALOXY + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
