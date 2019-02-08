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

      subroutine dayl   ( pmsa   , fl     , ipoint , increm , noseg  ,
     &                    noflux , iexpnt , iknmrk , noq1   , noq2   ,
     &                    noq3   , noq4   )
!>\file
!>       Daylength calculation in hours

!
!     Description of the module :
!
!        Computes daylength in hours.
!        Formulea 6.2.7 from "Zonnestraling in Nederland",
!        C.A.Velds, Thieme/KNMI, 1992, 1st imp., ISBN 90-5210-140-X
!        General water quality module for DELWAQ:
!
! Name    T   L I/O   Description                                    Units
! ----    --- -  -    -------------------                            -----
! TIME    R*4 1 I  DELWAQ time in scu                              [scu]
! TREF    R*4 1 I  Refernce tim in days                              [d]
! RLAT    R*4 1 I  Latitude, north pos., south neg. [ radians ]   [grad]
!     Logical Units : -

!     Modules called : -

!     Name     Type   Library
!     ------   -----  ------------

      implicit none
      real     pmsa  ( * ) , fl    (*)
      integer  ipoint( * ) , increm(*) , noseg , noflux,
     +         iexpnt(4,*) , iknmrk(*) , noq1, noq2, noq3, noq4

      integer ip1,ip2,ip3,ip4,ip5
      integer in1,in2,in3,in4,in5
      real    time, tref, auxsys
      real    daynrd
      real    daynrp
      double precision latitu, declin, temp, daylengthd, daylengthp, 
      double precision sin50m, e     , pi, daylengthm
      parameter ( sin50m = -1.454389765d-2 )
      parameter ( e  = 1.721420632d-2 )
      parameter ( pi = 3.141592654d0)
      logical  varflg
      integer  iseg

      in1  = increm( 1)
      in2  = increm( 2)
      in3  = increm( 3)
      in4  = increm( 4)
      in5  = increm( 5)
      in6  = increm( 6)
      in6  = increm( 7)

      ip1  = ipoint( 1)
      ip2  = ipoint( 2)
      ip3  = ipoint( 3)
      ip4  = ipoint( 4)
      ip5  = ipoint( 5)
      ip6  = ipoint( 6)
      ip7  = ipoint( 7)

!     ------------------------------------
!     Only constant inputs, so only single calculation of daylength needed to be set to all segments
      time    = pmsa( ip1 )
!     Conversion Latitude to rads
      latitu  = pmsa( ip2 ) / 360 * 2 * pi
      tref    = pmsa( ip3 )
      auxsys  = pmsa( ip4 )

!     Conversion time to daynumbers relative to tref
      daynrd =  mod (time / auxsys + tref, 365.)
!     Computes declination of sun on day DAYNR.
      if (( daynrd .lt. 0.) .or. ( daynrd .gt. 365.)) then
          declin = 9.9999d9
      else
          declin = 6.918d-3 -
     1            3.99912d-1 * dcos ( e * daynr) -
     2            6.758d-3   * dcos ( 2.0d0 * e * daynr) -
     3            2.697d-3   * dcos ( 3.0d0 * e * daynr) +
     4            7.0257d-2  * dsin ( e * daynr) +
     5            9.07d-4    * dsin ( 2.0d0 * e * daynr) +
     6            1.480d-3   * dsin ( 3.0d0 * e * daynr)
      endif

!     Computes daylenth

      temp = (( sin50m - dsin ( declin) * dsin ( latitu)) /
     &                    ( dcos ( declin) * dcos ( latitu)))

      if ( temp .gt. 1.0) then
          temp   = 0.0
      elseif ( temp .lt. -1.0) then
          temp   = 24.0
      else
          temp   = 7.639437268d0 * acos ( temp)
      endif
      daylengthd = temp / 24.0
      
!     ------------------------------------
      
      daynrp = daynrd - 1

      if (( daynrp .lt. 0.) .or. ( daynrp .gt. 365.)) then
            declin = 9.9999d9
      else
          declin = 6.918d-3 -
     1            3.99912d-1 * dcos ( e * daynrp) -
     2            6.758d-3   * dcos ( 2.0d0 * e * daynrp) -
     3            2.697d-3   * dcos ( 3.0d0 * e * daynrp) +
     4            7.0257d-2  * dsin ( e * daynrp) +
     5            9.07d-4    * dsin ( 2.0d0 * e * daynrp) +
     6            1.480d-3   * dsin ( 3.0d0 * e * daynrp)
      endif

!     Computes daylenth

      temp = (( sin50m - dsin ( declin) * dsin ( latitu)) /
     &                    ( dcos ( declin) * dcos ( latitu)))

      if ( temp .gt. 1.0) then
          temp   = 0.0
      elseif ( temp .lt. -1.0) then
          temp   = 24.0
      else
          temp   = 7.639437268d0 * acos ( temp)
      endif
      daylengthp = temp / 24.0

      pmsa (ip5) = daylengthd
      pmsa (ip6) = daylengthp
      
!     ------------------------------------
      
      DO 9000 daynrp = 1 , 365
          if (( daynrp .lt. 0.) .or. ( daynrp .gt. 365.)) then
                declin = 9.9999d9
          else
              declin = 6.918d-3 -
         1            3.99912d-1 * dcos ( e * daynrp) -
         2            6.758d-3   * dcos ( 2.0d0 * e * daynrp) -
         3            2.697d-3   * dcos ( 3.0d0 * e * daynrp) +
         4            7.0257d-2  * dsin ( e * daynrp) +
         5            9.07d-4    * dsin ( 2.0d0 * e * daynrp) +
         6            1.480d-3   * dsin ( 3.0d0 * e * daynrp)
          endif

    !     Computes daylenth

          temp = (( sin50m - dsin ( declin) * dsin ( latitu)) /
         &                    ( dcos ( declin) * dcos ( latitu)))

          if ( temp .gt. 1.0) then
              temp   = 0.0
          elseif ( temp .lt. -1.0) then
              temp   = 24.0
          else
              temp   = 7.639437268d0 * acos ( temp)
          endif
          daylengthm = max(daylengthm,temp / 24.0)
      9000 CONTINUE
      
 !     ------------------------------------
     
      ip1   = ip1   + in1
      ip2   = ip2   + in2
      ip3   = ip3   + in3
      ip4   = ip4   + in4
      ip5   = ip5   + in5
      ip6   = ip6   + in6
      ip7   = ip7   + in7

 9000 continue

      return
      end
