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
      !DEC$ ATTRIBUTES DLLEXPORT, ALIAS: 'MALDIS' :: MALDIS 

!
!*******************************************************************************
!
      IMPLICIT NONE
!
!     Type    Name         I/O Description
!
      REAL(4) PMSA(*)     !I/O Process Manager System Array, window of routine to process library
      REAL(4) FL(*)       ! O  Array of fluxes made by this process in mass/volume/time
      INTEGER IPOINT(17)  ! I  Array of pointers in PMSA to get and store the data
      INTEGER INCREM(17)  ! I  Increments in IPOINT for segment loop, 0=constant, 1=spatially varying
      INTEGER NOSEG       ! I  Number of computational elements in the whole model schematisation
      INTEGER NOFLUX      ! I  Number of fluxes, increment in the FL array
      INTEGER IEXPNT(4,*) ! I  From, To, From-1 and To+1 segment numbers of the exchange surfaces
      INTEGER IKNMRK(*)   ! I  Active-Inactive, Surface-water-bottom, see manual for use
      INTEGER NOQ1        ! I  Nr of exchanges in 1st direction, only horizontal dir if irregular mesh
      INTEGER NOQ2        ! I  Nr of exchanges in 2nd direction, NOQ1+NOQ2 gives hor. dir. reg. grid
      INTEGER NOQ3        ! I  Nr of exchanges in 3rd direction, vertical direction, pos. downward
      INTEGER NOQ4        ! I  Nr of exchanges in the bottom (bottom layers, specialist use only)
      INTEGER IPNT(17)    !    Local work array for the pointering
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
      REAL(4) FootDepth   ! I  location of frond attachment in the water col  (m)
      REAL(4) LmaxMAL     ! I  Maxmimum Length Macroalgae group               (m)
      REAL(4) LinDenMAL   ! I  Linear density of macroalgae group             (g/m3)
      REAL(4) ArDenMAL    ! I  grams per m2 of plant                          (g/m2)
      INTEGER MBotSeg     ! I/O Bottom Segment for Macrophyte      
      REAL(4) FrBmMALS    ! O  Fraction BM per layer macroalgae structural    (-)
      REAL(4) BmLayMALS   ! O  Biomass Layer macroalgae structural            (gDM/m2)
      REAL(4) LenMAL      ! O  Actual Length Macroalgae                       (m)
      REAL(4) AreMAL      ! O  Actual Area Macroalgae                         (m2)
      REAL(4) TipDepth    ! O  Distance from frond water surface to frond tip (m)
      REAL(4) SwGroDir    ! Switch to grow up or down
      
      INTEGER IKMRK1
      INTEGER IKMRK2
      
      REAL(4) Z2          !    Height Bottom of Segment from Top              (m)
      REAL(4) Z1          !    Height Top of Segment from Top                 (m)
      REAL(4) Length      !    Actual Length Macroalgae                       (m)
      REAL(4) Area        !    Actual Area Macroalgae                         (m)
      REAL(4) Zm          !    referenc point to tip Macropyte                (-)
      REAL(4) B           !    Linear factor B (Ax + B)                       (-)

      INTEGER :: LUNREP

      INTEGER IQ              !        Loop counter
      INTEGER Ifrom           !        From Segment
      INTEGER Ito             !        From Segment
      LOGICAL First           !        is the first time

!*******************************************************************************
      DATA    FIRST /.TRUE./
      SAVE    FIRST
!
!*******************************************************************************
      IF (FIRST) THEN 
          IPNT(17) = IPOINT(17)
          ! for all segs
          DO 9001 ISEG = 1,NOSEG
             ! assign MbotSeg output for all segs = -1, therefore initially invalid
             PMSA( IPNT(17) ) = -1
             CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2)
             ! if it is a bottom seg, its mbot seg is itself
             IF ((IKMRK2.EQ.0).OR.(IKMRK2.EQ.3)) THEN
                PMSA( IPNT( 17) ) = ISEG
             ENDIF
             IPNT(17) = IPNT(17) + INCREM(17)
9001      CONTINUE
              
          ! Now all bottom segs have identified themselves as the Mbotseg
          ! Loop to find bottom segment for attribute 1&2 water segments
          ! for the number of vertical exchanges, which is equal to all non attribute 3 segments
          DO 9005 IQ = NOQ1+NOQ2+NOQ3, NOQ1 + NOQ2 +1, -1
             Ifrom  = IEXPNT(1,IQ)
             Ito    = IEXPNT(2,IQ)
             if (ifrom.gt.0.and.ito.gt.0) then
                MBotSeg = nint(PMSA(IPOINT(17)+(ITO-1)*INCREM(17)))
                IF ( MBotSeg .GT.0 ) THEN
                   PMSA(IPOINT(17)+(IFROM-1)*INCREM(17)) = real(MBotSeg)
                ENDIF
             ENDIF
9005      CONTINUE  
      ENDIF

!*******************************************************************************    

      IPNT = IPOINT
!     Loop over segments
      DO 9000 ISEG = 1 , NOSEG

!        Check on active segments
        CALL DHKMRK(1,IKNMRK(ISEG),IKMRK1)
         
         ! if active
         IF (IKMRK1.EQ.1) THEN

            CALL DHKMRK(2,IKNMRK(ISEG),IKMRK2) 
            
            Surf        = PMSA( IPNT(  1) )
            Depth       = PMSA( IPNT(  2) )
            TotalDepth  = PMSA( IPNT(  3) )
            LocalDepth  = PMSA( IPNT(  4) )
            FootDepth   = PMSA( IPNT(  6) )
            LmaxMAL     = PMSA( IPNT(  7) )
            SWGroDir    = PMSA( IPNT(  8) )
            LinDenMAL   = PMSA( IPNT(  9) )
            ArDenMAL    = PMSA( IPNT(  10) )

            MBotSeg     = NINT(PMSA( IPNT(  11) ))
       
            ! get biomass from bottom segment
            ! gDM/m2
            
            MALS = PMSA(IPNT(5)+(MBotSeg-ISEG)*INCREM(5))
            IF (MALS .gt. 0.0) THEN
                IF (FootDepth .lt. -998.0) Then
                    ! user prescribed no foot depth, 
                    ! so root at either surface or bed depending on LmaxMAL
                    IF (SwGroDir .lt. 0.0) THEN
                        FootDepth = 0.0
                    ELSE
                        FootDepth = TotalDepth
                    ENDIF
                    LmaxMAL   = min( abs(LmaxMAL), TotalDepth)
                ELSE
                    LmaxMAL   = min( abs(LmaxMAL), TotalDepth-FootDepth)
                ENDIF

                ! Limit the maximum height of the plants to the water depth
                ! Lmax is the maximum length of the plant considering the space in the water column available after removing the FootDepth
                ! actual height is horizontal density divided by length density
                ! linear density is dependent on seeding density
                ! area is the amount of mass in this segment divided by area density
            
                LenMAL        = min(MALS/LinDenMAL,abs(LmaxMAL))
                LenMAL        = max(LenMAL, 0.01)
                AreMAL        = max(MALS * Surf / ArDenMAL, 1.0d-7)
               
                Z1 = LocalDepth - Depth
                Z2 = LocalDepth
                
                ! Zm is the position of tip from reference datum
                ! for SwGroDir < 0 this is top down
                ! for SwGroDir > 0 this is bottom up
              
                if ( SwGroDir < 0.0 ) Then
                    TipDepth = MIN(TotalDepth,LenMAL + FootDepth)
                    ! position of tip from reference datum
                    Zm = LenMAL + FootDepth
                    B = MALS/LenMAL
                    If (Zm .LT. Z1) Then
                        ! Algae is not in segment, segment too deep, below tip
                        BmLayMALS = 0
                    Elseif (Zm . GT. Z2 ) Then
                        ! could be completely in this segment, above rooting depth, or rooted in this segment
                        if (Z1 .GT. FootDepth) Then
                          BmLayMALS = B * (Z2 -Z1)
                        elseif (Z2 .lt. FootDepth) Then
                            BMLayMALS = 0.0
                        else
                          BmlayMALS = B * (Z2-FootDepth)
                        endif    
                    ! Algae tip is partially in segment
                    Else
                        BmlayMALS = B * (Zm-Z1)
                    Endif                    
                else
                    TipDepth = MAX(0.0,FootDepth - LenMAL)
                    ! position of tip from reference datum
                    Zm = FootDepth - LenMAL
                    B = MALS / LenMAL 
                    ! Algae is not in segment:
                    If (Zm .GT. Z2) Then
                        ! algae not in segment, segment too shallow, above tip
                        BmLayMALS = 0
                    Elseif (Zm . LT. Z1 ) Then
                        ! could be completely in this segment, below rooting depth, or rooted in this segment
                      if (Z2 .lt. FootDepth) Then
                          BmLayMALS = B * (Z2 -Z1)
                      elseif (Z1 .gt. FootDepth) Then
                          BmLayMALS = 0.0
                      else
                          BmLayMALS = B * (FootDepth - Z1)
                      endif                      
                    ! Algae tip is partially in segment
                    Else
                        BmlayMALS = B * (Z2 -Zm)
                    Endif
                endif
              
                If (BmLayMALS .GT. 0) Then
                    FrBmMALS = BmLayMALS / MALS
                Else
                    ! beware, this used to have a safety net to ensure some segment had an FrBmMALS > 0.0
                    ! this had to be removed in order to allow segments other than the bottom segment
                    ! to be the rooteing segment
                    ! now no initial biomass means no growth ever
                    FrBmMALS = 0.0
                Endif

                PMSA( IPNT(12) ) = FrBmMALS
                PMSA( IPNT(13) ) = BmLayMALS / Depth
                PMSA( IPNT(14) ) = LenMAL
                PMSA( IPNT(15) ) = AreMAL
                PMSA( IPNT(16) ) = -TipDepth ! negative to have it look proper in a graph
                PMSA( IPNT(17) ) = MBotSeg
            ELSE
               ! There is no biomass in the mbotseg
                PMSA( IPNT(12) ) = 0.0
                PMSA( IPNT(13) ) = 0.0
                PMSA( IPNT(14) ) = 0.0
                PMSA( IPNT(15) ) = 0.0
                PMSA( IPNT(16) ) = 0.0
                PMSA( IPNT(17) ) = MBotSeg
            ENDIF
        ENDIF
         
        IPNT = IPNT + INCREM

 9000 CONTINUE
!
      RETURN
      END
