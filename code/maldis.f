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
      INTEGER IPOINT(14)  ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(14)  ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT(14)    !    Local work array for the pointering
      INTEGER ISEG        !    Local loop counter for computational element loop
!*******************************************************************************
!
!     Type    Name         I/O Description                                        Unit
!
      REAL(4) Surf        ! I  surface of segment                            (m2)
      REAL(4) Depth       ! I  depth of segment                               (m)
      REAL(4) TotalDepth  ! I  total depth water column                       (m)
      REAL(4) LocalDepth  ! I  depth from water surface to bottom of segment  (m)
      REAL(4) MALS        ! I  Macroalgae structural mass                (gDM/m2)
      REAL(4) MALN        ! I  Macroalgae nitrogen storage mass           (gN/gDM)
      REAL(4) MALP        ! I  Macroalgae phosphorous storage mass        (gP/gDM)
      REAL(4) MALC        ! I  Macroalgae carbon storage mass             (gC/gDM)
      REAL(4) HmaxMAL     ! I  Maxmimum Length Macroalgae group                (m)
      REAL(4) DenMAL      ! I  Linear density of macroalgae group          (g/m3)
      REAL(4) BmLayMAL    ! O  Biomass Layer macroalgae structural        (gDM/m2)
      REAL(4) HactMAL     ! O  Actual Length Macroalgae                       (m)
      REAL(4) Z2          !    Height Bottom Segment from Bottom              (m)
      REAL(4) Z1          !    Height Top Segment from Bottom                 (m)
      REAL(4) Z2a         !    Height Bottom Segment from Bottom              (m)
      REAL(4) Z1a         !    Height Top Segment from Bottom                 (m)
      REAL(4) Hactd       !    Actual Length Macroalgae - relative to top     (-)
      REAL(4) Z2ad        !    Height Bottom Segment from Bottom - relative   (-)
      REAL(4) Z1ad        !    Height Top Segment from Bottom - relative      (-)
      REAL(4) absHmaxMAL  !    Absolute maxmimum Length Macroalgae            (m)
      INTEGER IKMRK1
      INTEGER IKMRK2
      REAL(4) FrBmMALS    ! O  Fraction BM per layer macroalgae structural    (-)
      REAL(4) Zm          !    Watersurface to top Macropyte                  (-)
      REAL(4) A           !    Lineair factor A (Ax + B)                      (-)
      REAL(4) B           !    Lineair factor B (Ax + B)                      (-)
      REAL(4) OriginalDepth

c     INTEGER IQ          !    Loop counter
c     INTEGER Ifrom       !    From Segment
c     INTEGER Ito         !    From Segment
c     LOGICAL First

      INTEGER :: LUNREP

      INTEGER IBotSeg     ! Bottom Segment for Macrophyte
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
            DenMAL      = PMSA( IPNT(  10) )
            ! not sure how this works, need to adjust, why was it = 9 previously?
            IBotSeg     = NINT(PMSA( IPNT(  11) ))

            ! get biomass from bottom segment

            !SM          = max( 1.0e-10, PMSA(IPOINT(5)+(IBOTSEG-1)*INCREM(5)) )
            MALS          = PMSA(IPOINT(5)+(IBOTSEG-1)*INCREM(5))

!           Limit the maximum height of the plants to the water depth
            absHmax     = min( abs(HmaxMAL), TotalDepth )

            ! actual height is horizontal density divided by length density

            Hact        = min( MALS/DenMAL , TotalDepth - 0.001 )
            Hact        = max(Hact,0.01)

            Hactd = 1.0 ! Represents the entire length of the plants

            !
            ! Hmax > 0: the macrophytes grow from the bottom upwards
            ! Hmax < 0: the macrophytes grow from the surface downwards
            !
            OriginalDepth = TotalDepth
            if ( hmax < 0.0 ) then
               TotalDepth = Hact
            endif
              
            Zm = TotalDepth - Hact
            Z1 = LocalDepth - Depth
            Z2 = LocalDepth
            Z1a = TotalDepth - LocalDepth
            Z2a = TotalDepth - LocalDepth + Depth
           
            A = (MALS / Hact) * (2 - (2 * Ffac)) / Hact
            B = (MALS / Hact) * (Ffac * (Zm + TotalDepth) -2 * Zm) / Hact
            write(*,*) 'Zm: ', Zm
            write(*,*) 'Z1: ', Z1
            write(*,*) 'Z2: ', Z2

            ! Macrophyte is not in segment:
            If (Zm .GT. Z2) Then
                BmLaySM = 0
            ! Macropyhte is completely in segment:
            Elseif (Zm . LT. Z1 ) Then
                BmLaySM = (A/2)  * (Z2**2 -Z1**2) + B * (Z2 -Z1)
            ! Macropyhte is partialy in segment: TIP !!!!
            Else
                BmlaySM = (A/2)  * (Z2**2 -Zm**2) + B * (Z2 -Zm)
            ! For the segment IBotSeg, current segment is ITopSeg!!!
                PMSA(IPOINT(14)+(IBotSeg-1)*INCREM(14   )) = ISEG
            Endif
            !
            ! One complication: we need to set the top segment explicitly
            ! if we start at the top
            !
            If ( Hmax < 0.0 ) Then
                CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
                If ( IKMRK2 .EQ. 0 .OR. IKMRK2 .EQ. 1 ) Then
                    PMSA(IPOINT(14)+(IBotSeg-1)*INCREM(14   )) = ISEG
                Endif
            Endif

            If (MALS .GT. 0) Then
               FrBmLay = BmLaySm / MALS
            Else
               If ( iseg .eq. IBotseg ) Then
                  FrBmLay = 1.0
               Else
                  FrBmLay = 0.0
               Endif
            Endif
            write(*,*) 'FrBmLay: ', FrBmLay

!           Return Outputparameters to delwaq

            PMSA( IPNT(11) ) = FrBmLay
            PMSA( IPNT(12) ) = BmLaySM / Depth
            If ( Hmax > 0.0 ) Then
                PMSA( IPNT(13) ) = Hact
            Else
                PMSA( IPNT(13) ) = OriginalDepth
            Endif

        ENDIF

        IPNT = IPNT + INCREM

 9000 CONTINUE
!
      RETURN
      END
