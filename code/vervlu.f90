subroutine vervlu ( pmsa   , fl     , ipoint , increm , noseg  , &
                    noflux , iexpnt , iknmrk , noq1   , noq2   , &
                    noq3   , noq4   )

!**********************************************************************
!     +----------------------------------------+
!     |    D E L F T   H Y D R A U L I C S     |
!     |    WAter Resources and Environment     |
!     +----------------------------------------+
!
!***********************************************************************
!
!     Project : STANDAARDISATIE PROCES FORMULES T721.80 / T1014
!     Author  : Jan van Beek, Pascal Boderie
!     Date    : 930324             Version : 0.01 for T1020
!
!     History :
!
!     Date    Author          Description
!     ------  --------------  -----------------------------------
!     930326  Jan Van Beek    Create first version
!     930702  Pascal Boderie  Create version without Kl and Kg calc.
!                             correction calculation of NG
!***********************************************************************
!
!     Description of the module :
!
!        General water quality module for DELWAQ:
!        Calculation of the volatilization flux of organic micro
!        pollutants
!
! Name    T   L I/O   Description                                    Uni
! ----    --- -  -    -------------------                             --
! ATMC    R*4 1 I  Concentration OMV in atmosphere                [g.m3]
! CONC    R*4 1 I  Total concentration OMV in water               [g.m3]
! C1      R*4 1 I  Constant in temperature dependance of Henrys
!                  value represents delta S0 (entropy) / R           [-]
! C2      R*4 1 L  Constant in temperature dependence of Henrys
!                  value represents delta H0 (enthalpy) / R          [-]
! DEPTH   R*4 1 I  Depth                                             [m]
! E       R*4 1 LC Natural logaritmic                                [-]
! FDIS    R*4 1 I  Fraction omive free dissolved                     [-]
! FL      R*4 1 O  Calculated volatilizatioin flux              [g/m3/d]
! H0TREF  R*4 1 I  Henrys constant at reference temperature  [Pa.m3\mol]
! H2TREF  R*4 1 L  Dimensionless Henry at Tref
!                  on a basis of moelfraction      [molefracG/molefracL]
! H1TEMP  R*4 1 I  Dimensionless Henry at any TEMP     [mol/m3/(mol.m3)]
! KL      R*4 1 I  Mass transport coefficient liquid phase         [m/d]
! KG      R*4 1 I  Mass transport coefficient gas phase            [m/d]
! KV      R*4 1 O  volatilization rate constant                    [m/d]
! KELVIN  R*4 1 LC absolute temperature reference                    [-]
! NG      R*4 1 L  amount moles in 1m3 gas                     [mole/m3]
! NL      R*4 1 LC amount moles in 1m3 water                   [mole/m3]
! P       R*4 1 LC atmospheric pressure                             [Pa]
! R       R*4 1 LC universal gas constant                  [Pa.m3/mol/K]
! TREF    R*4 1 I  Reference temperature for H0                  [gradC]
! TEMP    R*4 1 I  Temperature                                   [gradC]
!-----------------------------------------------------------------------

!     Logical Units : -

!     Modules called : -

!     Name     Type   Library
!     ------   -----  ------------
    implicit real (a-h,j-z)

    real     pmsa  ( * ) , fl    (*)
    integer  ipoint( * ) , increm(*) , noseg , noflux, &
             iexpnt(4,*) , iknmrk(*) , noq1, noq2, noq3, noq4
!
!   Local declarations, constants in source
!
    parameter ( e      =     2.718  , &
                kelvin =   273.15   , &
                nl     = 55510.     , &
                p      =     1.01e+5, &
                r      =     8.314    )
!
    ip1  = ipoint( 1)
    ip2  = ipoint( 2)
    ip3  = ipoint( 3)
    ip4  = ipoint( 4)
    ip5  = ipoint( 5)
    ip6  = ipoint( 6)
    ip7  = ipoint( 7)
    ip8  = ipoint( 8)
    ip9  = ipoint( 9)
    ip10 = ipoint(10)
    ip11 = ipoint(11)
!
    iflux = 0
    do iseg = 1 , noseg
!!      call dhkmrk(1,iknmrk(iseg),ikmrk1)
!!      if (ikmrk1.eq.1) then
        if (btest(iknmrk(iseg),0)) then
            call dhkmrk(2,iknmrk(iseg),ikmrk2)
            if ((ikmrk2.eq.0).or.(ikmrk2.eq.1)) then
!
!
!     Map PMSA on local variables
!
                conc   = max ( 0.0, pmsa(ip1 ) )
                atmc   = pmsa(ip2 )
                kl     = pmsa(ip3 )
                kg     = pmsa(ip4 )
                h0tref = pmsa(ip5 )
                tref   = pmsa(ip6 )
                c1     = pmsa(ip7 )
                temp   = pmsa(ip8 )
                depth  = pmsa(ip9 )
!
!
!     Error messages
                if (h0tref .lt. 1e-30)  call errsys ('h0tref in vervlu =<0', 1 )
                if ( temp .le. -kelvin) call &
                                 errsys ('temp in VERVLU < 0 deg kelvin', 1 )
                if (kl .lt. 1e-30) call errsys ('kl in VERVLU zero', 1 )
                if (kg .lt. 1e-30) call errsys ('kg in VERVLU zero', 1 )
!
!   Calculation of temperarure dependence of Henry
                h2tref = h0tref * nl / p
!
                c2     = ( kelvin + tref ) * ( log(h2tref) - c1 )
!
                ng     = p / ( r * (kelvin + temp) )
!
                h1temp = ng/nl * e**(c2/(kelvin + temp) + c1 )
!
!   Calculation of volatilization rate constant
!
                kv     = 1./(1./kl + 1./(h1temp*kg))
!
!   Calculation of volatilization flux
!
                fl (1 + iflux) = (conc - atmc / h1temp ) * kv / depth
!
!   Output
                pmsa(ip10) = kv
                pmsa(ip11) = h1temp
!
            endif
        endif
!
        iflux = iflux + noflux
        ip1   = ip1   + increm (  1 )
        ip2   = ip2   + increm (  2 )
        ip3   = ip3   + increm (  3 )
        ip4   = ip4   + increm (  4 )
        ip5   = ip5   + increm (  5 )
        ip6   = ip6   + increm (  6 )
        ip7   = ip7   + increm (  7 )
        ip8   = ip8   + increm (  8 )
        ip9   = ip9   + increm (  9 )
        ip10  = ip10  + increm ( 10 )
        ip11  = ip11  + increm ( 11 )
!
    enddo
!
!
    return
end subroutine
