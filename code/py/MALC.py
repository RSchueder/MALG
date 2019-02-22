# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 16:14:59 2019

@author: schueder
"""
import matplotlib.pyplot as plt
import numpy as np
FrBmMALS   = 0.2
MALCmin    = 0.01
CDRatMALS  = 0.2
ArDenMAL   = 60
Temp	   =  15
R1         = 0.668
R2         = 1.3
Tr1        = 285
Tr2	   =  290
P1         = 2.928 
P2         = 3.456
Tp1        = 283
Tp2        = 288
Tap	        =  1694
Taph       = 25924
Tapl       = 27774
Tar        = 11033
Rad        =	50
ExtVl	   =  1
alpha      = 0.09
Isat       = 44.0
exuMALC    = 0.5
Surf       = 2
DELT       = 1
Depth      = 1
LocalDepth = 9

alpha0 = 0.0000375
Tpl = 283
Tph = 303


#IF (MBotSeg .le. 0) THEN
#  CALL DHERR2('MBotSeg',PMSA( IPNT( 27) ),ISEG,'FLMALS')
#END IF

# need to take from bottom segment
MALS       = 10
MALC       = 2
# check input


# need to convert substances of gC/m2 to gC/gDM
# to be consistent with constants from Broch
# this line shows how we assume the entire plant will have the
# same abundance of nitrogen and carbon stores
# along the length
MALC = MALC / MALS # gC/m2 to gC/gDM
# since the storage is relative the amount of DM,
# we calculate how much DM there is in this segment
MALS = MALS * FrBmMALS

# gross photosynthesis

# integrate the radiation decay function between z2 (local depth, botom)
# and m1 (Localdepth - segment depth, top)
# Radiation at top is Rad
I = -Rad/(ExtVl * Depth) * (np.exp(-ExtVl * LocalDepth) - np.exp(-ExtVl * (LocalDepth - Depth)))
# need to convert to correct units
# 1 W/m2 = 4.57 umol photons m-2 s-1
# assumption is data supplied consistent with saturation value
I = I * 4.57
Isat = Isat * 4.57
Temp = Temp + 273
#P1 = P1/2400
# g/dm h
PmaxT= P1 * np.exp((Tap/Tp1) - (Tap/Temp))/(1 + np.exp((Tapl/Temp) - (Tapl/Tpl)) + np.exp((Taph/Tph) - (Taph/Temp)))

# solve for beta using newton's method
beta = 1e-7
#beta = np.logspace(-9,-5, num = 1000)
#for beta in np.logspace(-9,-5, num = 1000):
#    PmaxB = alpha0*Isat/np.log(1+alpha0/beta) * (alpha0/(alpha0+beta)) *  (beta/(alpha0+beta))**(beta/alpha0)
#    if abs(1-(PmaxB/PmaxT)) < 0.1:
#        Pmax = PmaxB
#        beta0 = beta
        
#(0.0000375*200/np.log(1+0.0000375/x)) * (0.0000375/(0.0000375+x)) * (x/(0.0000375+x))^(x/0.0000375))
  
Ps = alpha*Isat/np.log(1+alpha0/beta)  

P = Ps * (1-np.exp(-alpha*I/Ps))*np.exp(-beta*I/Ps)

# all rates will as per the paper yield rates
# of gC/gDM day
# multiply by MALS and divide by depth to get gC/m3 d

# respiration gC/m3 d
R = R1 * np.exp(Tar/Tr1 - Tar/Temp)

# exudation gC/m3 d

E = 1-np.exp(exuMALC*(MALCmin - MALC))

# effect on TIC is net of production and maintenance respiration
# growth respiration is included in FLMALS
# TIC gets converted (lost) to DOC in exudate

dMALTIC = ((MALS/ArDenMAL)/Depth) * (P - R) 

# exudate is produced as DOC, E is a fraction of production

dMALDOC = ((MALS/ArDenMAL)/Depth) * P * E 

# uptake into storage
LocUpC = ((MALS/ArDenMAL)/Depth) * P * (1-E) - R