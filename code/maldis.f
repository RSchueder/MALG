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

      SUBROUTINE MALDIS     ( PMSA   , FL     , IPOINT , INCREM, NOSEG ,
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
      INTEGER IPOINT(16)  ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(16)  ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT(16)    !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
!*******************************************************************************
!
!     Type    Name         I/O Description                                        Unit
!
      REAL(4) Surf        ! I  surface of segment                             (m2)
      REAL(4) Depth       ! I  depth of segment                               (m)
      REAL(4) TotalDepth  ! I  total depth water column                       (m)
      REAL(4) LocalDepth  ! I  depth from water surface to bottom of segment  (m)
      REAL(4) MALS        ! I  Macroalgae structural mass                     (gDM/m2)
      REAL(4) MALN        ! I  Macroalgae nitrogen storage mass               (gN/gDM)
      REAL(4) MALP        ! I  Macroalgae phosphorous storage mass            (gP/gDM)
      REAL(4) MALC        ! I  Macroalgae carbon storage mass                 (gC/gDM)
      REAL(4) HmaxMAL     ! I  Maxmimum Length Macroalgae group               (m)
      REAL(4) LinDenMAL   ! I  Linear density of macroalgae group             (g/m3)
      REAL(4) ArDenMAL    ! I  grams per m2 of plant                          (g/m2)
      ! MBotSeg
      REAL(4) FrBmMALS    ! O  Fraction BM per layer macroalgae structural    (-)
      REAL(4) BmLayMALS   ! O  Biomass Layer macroalgae structural            (gDM/m2)
      REAL(4) HactMAL     ! O  Actual Length Macroalgae                       (m)
      REAL(4) AactMAL     ! O  Actual Area Macroalgae                         (m2)
      
      INTEGER IKMRK1
      INTEGER IKMRK2
      
      REAL(4) Z2          !    Height Bottom Segment from Bottom              (m)
      REAL(4) Z1          !    Height Top Segment from Bottom                 (m)
      REAL(4) Z2a         !    Height Bottom Segment from Bottom              (m)
      REAL(4) Z1a         !    Height Top Segment from Bottom                 (m)
      REAL(4) Hact        !    Actual Length Macroalgae - relative to top     (m)
      REAL(4) Aact        !    Actual Area Macroalgae - relative to top       (m)
      REAL(4) Hactd       !    Actual Length Macroalgae - relative to top     (m2)
      REAL(4) Z2ad        !    Height Bottom Segment from Bottom - relative   (-)
      REAL(4) Z1ad        !    Height Top Segment from Bottom - relative      (-)
      REAL(4) absHmaxMAL  !    Absolute maxmimum Length Macroalgae            (m)
      REAL(4) Zm          !    Watersurface to top Macropyte                  (-)
      REAL(4) A           !    Lineair factor A (Ax + B)                      (-)
      REAL(4) B           !    Lineair factor B (Ax + B)                      (-)
      REAL(4) OriginalDepth

c     INTEGER IQ          !    Loop counter
c     INTEGER Ifrom       !    From Segment
c     INTEGER Ito         !    From Segment
c     LOGICAL First

      INTEGER :: LUNREP

      INTEGER MBotSeg     ! Bottom Segment for Macrophyte
!     INTEGER ITopSeg     ! Top    Segment for Macrophyte
!*******************************************************************************


      IPNT = IPOINT
!     Loop over segments
      DO 9000 ISEG = 1 , NOSEG

!        Check on active segments
         CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         IF (IKMRK1.EQ.1) THEN

            Surf        = PMSA( IPNT(  1) )
            Depth       = PMSA( IPNT(  2) )
            TotalDepth  = PMSA( IPNT(  3) )
            LocalDepth  = PMSA( IPNT(  4) )
            HmaxMAL     = PMSA( IPNT(  9) )
            LinDenMAL   = PMSA( IPNT(  10) )
            ArDenMAL    = PMSA( IPNT(  11) )
            ! assigned from MALGRO
            MBotSeg     = NINT(PMSA( IPNT(  12) ))

            ! get biomass from bottom segment
            ! gDM/m2
            MALS = PMSA(IPOINT(5)+(MBOTSEG-1)*INCREM(5))

!           Limit the maximum height of the plants to the water depth
            absHmaxMAL     = min( abs(HmaxMAL), TotalDepth )

            ! actual height is horizontal density divided by length density
            ! Linear density is dependent on seeding density
            ! area is the amount of mass in this segment divided by area density
            
            Hact        = min(MALS/LinDenMAL , TotalDepth - 0.001 )
            Hact        = max(Hact, 0.01)
            Aact        = min(MALS * Surf / ArDenMAL, 0.01)

            Hactd = 1.0 ! Represents the entire length of the plants

            !
            ! Hmax > 0: the macrophytes grow from the bottom upwards
            ! Hmax < 0: the macrophytes grow from the surface downwards
            !
            OriginalDepth = TotalDepth
            if ( HmaxMAL < 0.0 ) then
               TotalDepth = Hact
            endif
              
            Zm = TotalDepth - Hact
            Z1 = LocalDepth - Depth
            Z2 = LocalDepth
            Z1a = TotalDepth - LocalDepth
            Z2a = TotalDepth - LocalDepth + Depth
            ! Ffac = 1 for linear
            A = (MALS / Hact) * (2 - (2)) / Hact
            B = (MALS / Hact) * (1 * (Zm + TotalDepth) -2 * Zm) / Hact

            ! Algae is not in segment:
            If (Zm .GT. Z2) Then
                BmLayMALS = 0
            ! Algae is completely in segment:
            Elseif (Zm . LT. Z1 ) Then
                BmLayMALS = (A/2)  * (Z2**2 -Z1**2) + B * (Z2 -Z1)
            ! Algae is partially in segment
            Else
                BmlayMALS = (A/2)  * (Z2**2 -Zm**2) + B * (Z2 -Zm)
            Endif

            If (MALS .GT. 0) Then
               FrBmMALS = BmLayMALS / MALS
            Else
               If ( iseg .eq. MBotseg ) Then
                  FrBmMALS = 1.0
               Else
                  FrBmMALS = 0.0
               Endif
            Endif

!           Return Outputparameters to delwaq

            PMSA( IPNT(13) ) = FrBmMALS
            PMSA( IPNT(14) ) = BmLayMALS / Depth
            If ( HmaxMAL > 0.0 ) Then
                PMSA( IPNT(15) ) = Hact
            Else
                PMSA( IPNT(15) ) = OriginalDepth
            Endif
            PMSA( IPNT(16) ) = Aact
        ENDIF

        IPNT = IPNT + INCREM

 9000 CONTINUE
!
      RETURN
      END
