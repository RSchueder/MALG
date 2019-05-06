!!  Copyright (C)  Stichting Deltares, 2012-2019.
!!
!!  This program is free software: you can redistribute it and/or modify
!!  it under the terms of the GNU General Public License version 3,
!!  as published by the Free Software Foundation.
!!
!!  This program is distributed in the hope that it will be useful,
!!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
!!  GNU General Public License for more details.
!!
!!  You should have received a copy of the GNU General Public License
!!  along with this program. If not, see <http://www.gnu.org/licenses/>.
!!
!!  contact: delft3d.support@deltares.nl
!!  Stichting Deltares
!!  P.O. Box 177
!!  2600 MH Delft, The Netherlands
!!
!!  All indications and logos of, and references to registered trademarks
!!  of Stichting Deltares remain the property of Stichting Deltares. All
!!  rights reserved.

      SUBROUTINE HRVMAL     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
      !DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'HRVMAL' :: HRVMAL 

!
!*******************************************************************************
!
      IMPLICIT NONE
!
!     Type    Name         I/O Description
!
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT( 13) ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM( 13) ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 13)   !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
      INTEGER CSEG        !    Local loop counter for computational element loop

!
!*******************************************************************************
!
!     Type    Name         I/O Description                                        Unit
!
      REAL(4) MALS        ! I  MacroALgae Structural biomass                       (gDM/m2)
      REAL(4) MALN        ! I  MacroALgae Nitrogen storage                         (gN/gDM)
      REAL(4) MALP        ! I  MacroALgae phosphorous storage                      (gP/gDM)
      REAL(4) MALC        ! I  MacroALgae carbon storage                           (gC/gDM)
      REAL(4) K0HrvMALS   ! Zero order harvesting rate of MALS                     (gC/m2/d)
      REAL(4) K1HrvMALS   ! First order harvesting rate of MALS                    (1/d)
      REAL(4) Volume
      REAL(4) Depth
      REAL(4) DELT
      
      REAL(4) dHrvMALS
      REAL(4) dHrvMALN
      REAL(4) dHrvMALP
      REAL(4) dHrvMALC
      
      INTEGER IdHrvMALS !    Pointer 
      INTEGER IdHrvMALN !    Pointer 
      INTEGER IdHrvMALP !    Pointer
      INTEGER IdHrvMALC !    Pointer 

      INTEGER MBotSeg

      INTEGER IKMRK1, IKMRK2
           
      IPNT        = IPOINT

      IdHrvMALS = 1 
      IdHrvMALN = 2 
      IdHrvMALP = 3 
      IdHrvMALC = 4 
   
      DO 9000 ISEG = 1,NOSEG
        CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
           IF ((IKMRK2.EQ.0).OR.(IKMRK2.EQ.3)) THEN
               
              MALS      = PMSA(IPNT(1)  )       
              MALN      = PMSA(IPNT(2)  )          
              MALP      = PMSA(IPNT(3)  )          
              MALC      = PMSA(IPNT(4)  )     
              K0HrvMALS = PMSA(IPNT(5)  )     
              K1HrvMALS = PMSA(IPNT(6)  )     
              Depth     = PMSA(IPNT(7) )    
              DELT      = PMSA(IPNT(8) )
              IF (MALS .gt. 0.0) THEN
                  ! gDM/m2/d
                  !! conditional for not extracting mass beyond available source
                  dHrvMALS  = K0HrvMALS + MALS * K1HrvMALS
                  IF ( MALS .GT. dHrvMALS*DELT ) THEN
                  ELSE
                      dHrvMALS = 0.0
                  ENDIF
              
                  ! gN/m2 / gDM m2 * gDM/m2 d
                  ! = gN /m2 d
                  dHrvMALN  = dHrvMALS * MALN/MALS
                  dHrvMALP  = dHrvMALS * MALP/MALS
                  dHrvMALC  = dHrvMALS * MALC/MALS
              
                  FL ( IdHrvMALS ) = dHrvMALS
                  FL ( IdHrvMALN ) = dHrvMALN
                  FL ( IdHrvMALP ) = dHrvMALP  
                  FL ( IdHrvMALC ) = dHrvMALC
              ELSE
                  FL ( IdHrvMALS ) = 0.0
                  FL ( IdHrvMALN ) = 0.0
                  FL ( IdHrvMALP ) = 0.0  
                  FL ( IdHrvMALC ) = 0.0                      
                
              ENDIF
                
              IdHrvMALS = IdHrvMALS + NOFLUX
              IdHrvMALN = IdHrvMALN + NOFLUX
              IdHrvMALP = IdHrvMALP + NOFLUX
              IdHrvMALC = IdHrvMALC + NOFLUX
         
              IPNT     = IPNT     + INCREM      
              
           END IF
           
          

 9000 CONTINUE

      RETURN
      END
      

      
      
     