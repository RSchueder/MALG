      SUBROUTINE FLMALN     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'FLMALN' :: FLMALN
C

C*******************************************************************************
C
      IMPLICIT NONE
C
C     Type    Name         I/O Description
C
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT(27)   ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(27)   ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 27)   !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
C
C*******************************************************************************
C
C     Type    Name         I/O Description                                        Unit
C
      REAL(4) MALS        ! I  MacroALgae structural mass                          (gDM/m2)
      REAL(4) MALN        ! I  MacroALgae Nitrogen storage                         (gN/m2)
      REAL(4) MALP        ! I  MacroALgae Phosphorous storage                      (gP/m2)
      REAL(4) NO3         ! I  Nitrate                                             (gN/m3)
      REAL(4) NH4         ! I  Ammonium                                            (gN/m3)
      REAL(4) PO4         ! I  Phosphate                                           (gP/m3)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                    (-)
      REAL(4) ArDenMAL    ! I grams per m2 surface area of plant (Broch)           (gDM/m2)
      REAL(4) MALNmin     ! I  minimal N in nitrogen storage                       (gN/gDM)
      REAL(4) MALNmax     ! I  maximum N in nitrogen storage                       (gN/gDM)
      REAL(4) MALPmin	    ! I  minimum P in storage	                             (gP/gDM)
      REAL(4) MALPmax     ! I	 maximum P in storage	                             (gP/gDM)
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                  (gC/gDM)
      REAL(4) NCRatMALS   ! I  Nitrogen to carbon ratio in MALS                    (gN/gC)
      REAL(4) PCRatMALS	! I	 P:C ratio in structural mass	                     (gP/gDM)
      REAL(4) KsN		    ! I  half saturation N uptake                            (gN/m3)
      REAL(4) Ksp	        ! I	 half saturation P uptake	                         (gP/m3)
      REAL(4) JNmax	    ! I  maximum N uptake rate                               (gN/m2 d)
      REAL(4) JPmax	    ! I  maximum p uptake rate                               (gP/m2 d)
      REAL(4) Vel         ! I	 velocity                                            (m/s)
      REAL(4) Vel65	    ! I  current speed at which J = 0.65Jmax                 (m/s)
      
      ! REAL(4) MBotSeg     ! I 
      REAL(4) Surf        ! I  horizontal surface area of a DELWAQ segment         (m2)
      REAL(4) DELT        ! I  timestep for processes                              (d)
      REAL(4) Depth       ! I  depth of segment                                    (m)
      
      REAL(4) LimVel      ! O  velocity limitation MALN                            (-)
      REAL(4) LocUpN      ! O  local uptake of N by MALN                           (gN/m3/d)
      REAL(4) LocUpP      ! O  local uptake of P by MALP                           (gP/m3/d)

      REAL(4) dUpMALNO3   ! F  NO3 uptake MALN                                     (gN/m3/d)
      REAL(4) dUpMALNH4   ! F  NH4 uptake MALN                                     (gN/m3/d)
      REAL(4) dUpMALPO4   ! F  PO4 uptake MALP                                     (gP/m3/d)

      
      INTEGER IdUpMALNO3 !    Pointer to the NO3 uptake
      INTEGER IdUpMALNH4 !    Pointer to the NH4 uptake
      INTEGER IdUpMALPO4 !    Pointer to the PO4 uptake

      INTEGER IKMRK1
      INTEGER IKMRK2
      INTEGER MBotSeg
      
      REAL(4) LimN
      REAL(4) LimP
C
C*******************************************************************************
C
      IPNT        = IPOINT
     
      IdUpMALNO3 = 1
      IdUpMALNH4 = 2
      IdUpMALPO4 = 3 
       
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG

         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         
         ! if active
         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF (FrBmMALS > 0.0) THEN
              
                ! take from this segment
                NO3	    =	PMSA( IPNT(4) )
                NH4	    =	PMSA( IPNT(5) )
                PO4       =   PMSA( IPNT(6) )
                FrBmMALS	=	PMSA( IPNT(7) )
                ArDenMAL	=	PMSA( IPNT(8) )
                
                MALNmin	=	PMSA( IPNT(9) )
                MALNmax	=	PMSA( IPNT(10) )
                MALPmin	=	PMSA( IPNT(11) )
                MALPmax	=	PMSA( IPNT(12) )
                CDRatMALS	=	PMSA( IPNT(13) )
                NCRatMALS	=	PMSA( IPNT(14) )
                PCRatMALS	=	PMSA( IPNT(15) )
                Ksn	    =	PMSA( IPNT(16) )
                Ksp	    =	PMSA( IPNT(17) )
                JNmax	    =	PMSA( IPNT(18) )
                JPmax	    =	PMSA( IPNT(19) )
                Vel	    =	PMSA( IPNT(20) )
                Vel65	    =	PMSA( IPNT(21) )
                Surf	    =	PMSA( IPNT(23) )
                DELT	    =	PMSA( IPNT(24) )
                Depth	    =	PMSA( IPNT(25) )

                MBotSeg    = nint(PMSA( IPNT( 22) ))
                !IF (MBotSeg .le. 0)
                !  CALL DHERR2('MBotSeg',PMSA( IPNT( 22) ),ISEG,'FLMALN')

                ! need to take from bottom segment
                MALS       = PMSA( IPNT(1)+(MBotSeg-1)*INCREM( 1) )
                MALN       = PMSA( IPNT(2)+(MBotSeg-1)*INCREM( 2) )
                MALP       = PMSA( IPNT(3)+(MBotSeg-1)*INCREM( 3) )
                
                ! need to convert substances of gN/m2 to gN/gDM
                ! to be consistent with constants from Broch
                ! this line shows how we assume the entire plant will have the
                ! same abundance of nitrogen and carbon stores
                ! along the length
                MALN = MALN / MALS ! gN/m2 to gN/gDM
                MALP = MALP / MALS ! gP/m2 to gP/gDM
                ! since the storage is relative the amount of DM,
                ! we calculate how much DM there is in this segment
                MALS = MALS * FrBmMALS
                
                ! check input

!                IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
!                IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
                
                ! velocity limitation
                LimVel = 1 - exp(-Vel/Vel65)
                ! nitrogen hunger will be the same along length
                ! nutrient abundance will not be
                LimN = (MALNmax - MALN)/(MALNmax - MALNmin)
                IF (LimN .lt. 0.0) THEN
                    LimN = 0.0
                ENDIF
                LimP = (MALPmax - MALP)/(MALPmax - MALPmin)
                IF (LimP .lt. 0.0) THEN
                    LimP = 0.0
                ENDIF
                LimP = 1.0
                
                ! max rate is gN/m2 plant day, but m2 is m2 of plant
                ! not segment
                ! we try to achieve gN/m3 water d
                ! Broch achieves gN/gDM day
                ! we multimply this by MALS * area density (g/m2)
                                
                IF (LimN .gt. 0.0 .AND. LimP .gt. 0.0) THEN
                  LocUpN = (MALS/ArDenMAL) * LimVel * JNmax * 
     &             (NO3/(Ksn + NO3)) * LimN / Depth
                  LocUpP = (MALS/ArDenMAL) * LimVel * JPmax * 
     &             (PO4/(Ksp + PO4)) * LimP / Depth
                ELSE
                    LocUpN = 0.0
                    LocUpP = 0.0
                ENDIF
                
                dUpMALNO3 = LocUpN 
                ! can not take up NH4 at the moment, Broch ignores this
                dUpMALNH4 = 0.0
                dUpMALPO4 = LocUpP 

                FL ( IdUpMALNO3 ) = dUpMALNO3
                FL ( IdUpMALNH4 ) = dUpMALNH4
                FL ( IdUpMALPO4 ) = dUpMALPO4 
     
                PMSA( IPNT( 25)   ) =  LimVel		
                PMSA( IPNT( 26)   ) =  LocUpN	
                PMSA( IPNT( 27)   ) =  LocUpP		
                
            ENDIF
         ENDIF

         IdUpMALNO3  = IdUpMALNO3 + NOFLUX
         IdUpMALNH4  = IdUpMALNH4 + NOFLUX
         IdUpMALPO4  = IdUpMALPO4 + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
