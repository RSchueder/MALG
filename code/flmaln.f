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
      REAL(4) MALN        ! I  MacroALgae Nitrogen storage                         (gN/gDM)
      REAL(4) MALP        ! I  MacroALgae Phosphorous storage                         (gN/gDM)
      REAL(4) NO3         ! I  Nitrate                                             (gN/m3)
      REAL(4) NH4         ! I  Ammonium                                            (gN/m3)
      REAL(4) PO4         ! I  Phosphate                                            (gP/m3)
      REAL(4) FrBmMALS    ! I  Fraction of MALS in this segment                    (-)
      REAL(4) MALNmin     ! I  minimal N in nitrogen storage                       (gN/gDM)
      REAL(4) MALNmax     ! I  maximum N in nitrogen storage                       (gN/gDM)
      REAL(4) MALPmin	    ! I  minimum P in storage	                              gP/gDM
      REAL(4) MALPmax     ! I	 maximum P in storage	                              gP/gDM
      REAL(4) CDRatMALS   ! I  Carbon to dry matter ratio in MALS                  (gC/gDM)
      REAL(4) NCRatMALS   ! I  Nitrogen to carbon ratio in MALS                    (gN/gC)
      REAL(4) PCRatMALS	! I	 P:C ratio in structural mass	                      gP/gDM
      REAL(4) KsN		    ! I  half saturation N uptake                            (gN/m3)
      REAL(4) Ksp	        ! I	 half saturation P uptake	                          gP/m3
      REAL(4) JNmax	    ! I  maximum N uptake rate                               (gN/dm day)
      REAL(4) JPmax	    ! I  maximum p uptake rate                               (gP/dm day)
      REAL(4) Vel         ! I	 velocity                                            (m/s)
      REAL(4) Vel65	    ! I  current speed at which J = 0.65Jmax                 (m/s)
      REAL(4) MBotSeg     ! I 
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
      
      REAL(4) LimN
      REAL(4) LimP
C
C*******************************************************************************
C
      IPNT        = IPOINT
     
      IdUpMALNO3 = 1
      IdUpMALNH4 = 2
       
      ! do all segments
      DO 9000 ISEG = 1 , NOSEG

         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         
         ! if active
         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)

            IF (FrBmMALS > 0.0) THEN
                ! need to take from bottom segment
              
               
                ! take from this segment
                NO3	    =	PMSA( IPNT(3) )
                NH4	    =	PMSA( IPNT(4) )
                PO4       =   PMSA( IPNT(5) )
                FrBmMALS	=	PMSA( IPNT(6) )
                MALNmin	=	PMSA( IPNT(7) )
                MALNmax	=	PMSA( IPNT(8) )
                MALPmin	=	PMSA( IPNT(9) )
                MALPmax	=	PMSA( IPNT(10) )
                CDRatMALS	=	PMSA( IPNT(11) )
                NCRatMALS	=	PMSA( IPNT(12) )
                PCRatMALS	=	PMSA( IPNT(13) )
                Ksn	    =	PMSA( IPNT(14) )
                Ksp	    =	PMSA( IPNT(15) )
                JNmax	    =	PMSA( IPNT(16) )
                JPmax	    =	PMSA( IPNT(17) )
                Vel	    =	PMSA( IPNT(18) )
                Vel65	    =	PMSA( IPNT(19) )
                Surf	    =	PMSA( IPNT(21) )
                DELT	    =	PMSA( IPNT(22) )
                Depth	    =	PMSA( IPNT(23) )

                MBotSeg    = nint(PMSA( IPNT( 20) ))
                IF (MBotSeg .le. 0)
     j            CALL DHERR2('IBotSeg',PMSA( IPNT( 20) ),ISEG,'COVMAC')

              ! need to take from bottom segment
                MALN       = PMSA( IPNT(1)+(IBotSeg-1)*INCREM( 1) )
                MALP       = PMSA( IPNT(2)+(IBotSeg-1)*INCREM( 2) )
                ! check input

!                IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
!                IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
              
                ! MALN in this segment is the same as all segments in this column
                ! thus taking from the bottom is fine
                
                ! velocity limitation
                LimVel = 1 - exp(-Vel/Vel65)
                LimN = (MALNmax - MALN)/(MALNmax - MALNmin)
                LimP = (MALPmax - MALP)/(MALPmax - MALPmin)
                LimP = 1.0
                IF (LimN .gt. 0.0 .AND. LimP .gt. 0.0) THEN
                  LocUpN = LimVel * JNmax * (NO3/(Ksn + NO3)) * LimN 
                  LocUpP = LimVel * JPmax * (PO4/(Ksp + PO4)) * LimP 
                ELSE
                    LocUpN = 0.0
                    LocUpP = 0.0
                ENDIF
                
                dUpMALNO3 = LocUpN
                dUpMALNH4 = 0.0
                dUpMALPO4 = LocUpP

                FL ( IdUpMALNO3 ) = dUpMALNO3
                FL ( IdUpMALNH4 ) = dUpMALNH4
                FL ( IdUpMALPO4 ) = dUpMALPO4 
     
                PMSA( IPNT( 23)   ) =  LimVel		
                PMSA( IPNT( 24)   ) =  LocUpN	
                PMSA( IPNT( 25)   ) =  LocUpP		
                
            ENDIF
         ENDIF

         IdUpMALNO3  = IdUpMALNO3 + NOFLUX
         IdUpMALNH4  = IdUpMALNH4 + NOFLUX
         IdUpMALPO4  = IdUpMALPO4 + NOFLUX

         IPNT        = IPNT        + INCREM

 9000 CONTINUE

      RETURN
      END
