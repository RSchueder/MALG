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

      SUBROUTINE COVMAC     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
     +                        NOFLUX , IEXPNT , IKNMRK , NOQ1  , NOQ2  ,
     +                        NOQ3   , NOQ4   )
!
!*******************************************************************************
!
      IMPLICIT NONE
!
!     Type    Name         I/O Description
!
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT( 22) ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM( 22) ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT( 22)   !    Local work array for the pointering
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
!     REAL(4) MBotSeg     ! I  Macroalgae bottom segment
      REAL(4) LocGroS     ! I  local growth of MALS                                (gDM/m3/d)
      REAL(4) LocGroN     ! I  local growth of MALN                                (gN/m3/d)
      REAL(4) LocGroP     ! I  local growth of MALP                                (gP/m3/d)
      REAL(4) LocGroC     ! I  local growth of MALC      
!     REAL(4) MBotSeg     ! O  Macroalgae bottom segment
      
      REAL(4) dMALS
      REAL(4) dMALN
      REAL(4) dMALP
      REAL(4) dMALC
      
      INTEGER IdGrMALS !    Pointer to growth
      INTEGER IdGrMALN !    Pointer to growth
      INTEGER IdGrMALP !    Pointer to growth
      INTEGER IdGrMALC !    Pointer to growth

      INTEGER IQ              !        Loop counter
      INTEGER Ifrom           !        From Segment
      INTEGER Ito             !        From Segment
      LOGICAL First           !        is the first time
      INTEGER MBotSeg         !        Bottom Segment for Macrophyte

      INTEGER IKMRK1, IKMRK2
      DATA    FIRST /.TRUE./
      SAVE    FIRST
!
!*******************************************************************************
!     Initialise variable indicating BOTTOM SEGMENT
      ! If this is the first time doing this, i.e. the first segment and 
      ! first time step
      ! 5 is mbotseg in input
      ! 13 is mbotseg in ourput
      IF (FIRST) THEN
      
          ! local array point assignment
          ! normall we do the entire array, but now we only do it for the
          ! 21st element? This is weird because I thought IPOINT was 
          ! a pointer for the first element of a given segment in the PMSA array
          ! this only makes sense if the IPOINT is a local segment pointer
          ! unless this is not a scalar, but a vector!
          ! do not see how it could be a vector as PMSA(IPNT(x)) is assigned to a scalar value
          IPNT(10) = IPOINT(10)
          ! for all segs
          DO ISEG = 1,NOSEG
              ! assign IbotSeg output for all segs = -1, therefore invalid
             PMSA( IPNT(10) ) = -1
             CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
             ! if it is a bottom seg, its ibot seg is itself
             IF ((IKMRK2.EQ.0).OR.(IKMRK2.EQ.3)) THEN
                PMSA( IPNT( 10) ) = ISEG
             ENDIF
             IPNT(10) = IPNT(10) + INCREM(10)
          ENDDO
              
    !     Loop to find bottom segment for water segments
          ! for the length of all exchanges, to length of all horizontal exchanges + 1, decreasinf by 1
          ! this means for the number of vertical exchanges!
          DO IQ = NOQ1+NOQ2+NOQ3, NOQ1 + NOQ2 +1, -1
             Ifrom  = IEXPNT(1,IQ)
             Ito    = IEXPNT(2,IQ)
             if (ifrom.gt.0.and.ito.gt.0) then
                MBotSeg = nint(PMSA(IPOINT(21)+(ITO-1)*INCREM(21)))
                IF ( MBotSeg .GT.0 ) THEN
                   PMSA(IPOINT(10)+(IFROM-1)*INCREM(10)) = real(MBotSeg)
                ENDIF
             endif
          ENDDO
      ! so for every segment, if it is a bottom segment, grab the fluxes from
      ! all segments whose Ibotseg is = to the current botseg. save these pointers
      ! as an array and for each time step loop through these segments and grab
      ! the local fluxes 
      END If
      
      IdGrMALS = 1 
      IdGrMALN = 2 
      IdGrMALP = 3 
      IdGrMALC = 4 
          
        ! right now I do not know how to save an array to be stored later (only a value)
        ! so I do this every time step, will be much to time intensive!
      DO 9000 ISEG = 1,NOSEG
        CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
           IF ((IKMRK2.EQ.0).OR.(IKMRK2.EQ.3)) THEN
              dMALS = 0.0
              dMALN = 0.0
              dMALP = 0.0
              dMALC = 0.0
              DO 1220 CSEG = 1, NOSEG
                  CALL DHKMRK(2,IKNMRK(CSEG),IKMRK2)
                  MBotSeg    = nint(PMSA( IPNT( 5) ))
                  IF (MBotSeg .eq. CSEG) THEN
                      LocGroS  =  PMSA( IPNT( 6))   
                      LocGroN  =  PMSA( IPNT( 7))       
                      LocGroP  =  PMSA( IPNT( 8))      
                      LocGroC  =  PMSA( IPNT( 9))   
                      
                      dMALS = dMALS + LocGroS
                      dMALN = dMALN + LocGroN
                      dMALP = dMALP + LocGroP
                      dMALC = dMALC + LocGroC
                  END IF
 1220 CONTINUE
              FL ( IdGrMALS ) = dMALS
              FL ( IdGrMALN ) = dMALN
              FL ( IdGrMALP ) = dMALP  
              FL ( IdGrMALC ) = dMALC 
              
              IdgrMALS = IdGrMALS + NOFLUX
              IdgrMALN = IdGrMALN + NOFLUX
              IdgrMALP = IdGrMALP + NOFLUX
              IdgrMALC = IdGrMALC + NOFLUX

              IPNT        = IPNT        + INCREM
          END IF
 9000 CONTINUE

      RETURN
      END
      

      
      
     