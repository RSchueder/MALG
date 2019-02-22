# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 15:58:51 2019

@author: schueder
"""
import numpy as np

NO3	    = 1
NH4	    = 1
PO4       = 1  
FrBmMALS = 0.5	
ArDenMAL =  60	
MALNmin	=	0.01
MALNmax	=	0.1
MALPmin	=	0.001
MALPmax	=	0.01
CDRatMALS = 	0.2
NCRatMALS = 	0.05
PCRatMALS = 	0.005
Ksn	    = 0.123
Ksp	    = 0.336
JNmax	    = 0.33
JPmax	    = 0.7432
Vel	    = 0.05
Vel65	    = 0.03
Surf	    = 2
DELT	    =1
Depth	    =1

MBotSeg    = 10
#IF (MBotSeg .le. 0)
#  CALL DHERR2('MBotSeg',PMSA( IPNT( 22) ),ISEG,'FLMALN')

# need to take from bottom segment
MALS       = 10
MALN       =2
MALP       = 1

# need to convert substances of gN/m2 to gN/gDM
# to be consistent with constants from Broch
# this line shows how we assume the entire plant will have the
# same abundance of nitrogen and carbon stores
# along the length
MALN = MALN / MALS # gN/m2 to gN/gDM
MALP = MALP / MALS # gP/m2 to gP/gDM
# since the storage is relative the amount of DM,
# we calculate how much DM there is in this segment
MALS = MALS * FrBmMALS

# check input

# IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
# IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')

# velocity limitation
LimVel = 1 - np.exp(-Vel/Vel65)
# nitrogen hunger will be the same along length
# nutrient abundance will not be
LimN = (MALNmax - MALN)/(MALNmax - MALNmin)
if LimN < 0.0:
    LimN = 0.0
LimP = (MALPmax - MALP)/(MALPmax - MALPmin)
if LimP < 0.0:
    LimP = 0.0
LimP = 1.0

# max rate is gN/m2 plant day, but m2 is m2 of plant
# not segment
# we try to achieve gN/m3 water d
# Broch achieves gN/gDM day
# we multimply this by MALS * area density (g/m2)
                
if LimN > 0.0 and LimP > 0.0:
    LocUpN = (MALS/ArDenMAL) * LimVel * JNmax * (NO3/(Ksn + NO3)) * LimN / Depth
    LocUpP = (MALS/ArDenMAL) * LimVel * JPmax * (PO4/(Ksp + PO4)) * LimP / Depth
else:
    LocUpN = 0.0
    LocUpP = 0.0


dUpMALNO3 = LocUpN 
# can not take up NH4 at the moment, Broch ignores this
dUpMALNH4 = 0.0
dUpMALPO4 = LocUpP 