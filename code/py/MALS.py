# -*- coding: utf-8 -*-
"""
Created on Thu Feb 21 19:25:51 2019

MALG - macroalgae module in python
for testing purposes only

@author: schueder
"""
import numpy as np

FrBmMALS   = 0.5
MALNmin    = 0.01
MALPmin    = 0.001
MALCmin    = 0.01
Latitude   = 52
daylengthd = 1
daylengthp = 1
daylengthm = 1
Temp       = 15
m_1        = 0.109
m_2        = 0.03
HactMAL    = 2
AactMAL    = 0.22
MALS0      = 0.06
a_1        = 0.85
a_2        = 0.3
mrtMAL     = 0.22
CDRatMALS  = 0.2
NCRatMALS  = 0.05
PCRatMALS  = 0.005
FrPOC1MALS = 0.75
FrPOC2MALS = 0.25
MBotSeg    = 1
Surf       = 2
DELT       = 1
Depth      = 1



# need to take from bottom segment
MALS       = 10
MALN       = 1
MALP       = 0.1
MALC       = 2
# mass in this water column

# need to convert substances of gN/m2 to gN/gDM
# to be consistent with constants from Broch
# gN/m2 to gN/gDM

MALN = MALN / MALS # gN/m2 to gN/gDM
MALP = MALP / MALS # gP/m2 to gP/gDM
MALC = MALC / MALS # gC/m2 to gC/gDM

# check input

#                IF (SURF .LT. 1E-20) CALL DHERR2('SURF'   ,SURF   ,ISEG,'MACROP')
#                IF (DEPTH.LT. 1E-20) CALL DHERR2('DEPTH'  ,DEPTH  ,ISEG,'MACROP')
  
# find amount of mass in this segment (gDM/m2)
   
MALS = MALS * FrBmMALS 
lengthLoc = HactMAL * FrBmMALS
areaLoc = AactMAL * FrBmMALS
   
# density limitation
# based on how this model is made it makes sense to make the
# density limitation based on length rather than fatness

# As the algae grow, as in the sw grows, their surface area increases because they get fatter
# So in the model the g/m2 is analogous to the length of the plant. 
# In our model they will not get fatter but they will get longer. 
# however, although the area is proportional to the length,
# we must not calculate it using the length. We calculate it using
# the mass and an indepentent area density ArDenMAL
# length came from the amount of mass compared to the Linear density
# area came from the amount of mass compared to the area density
  
# formulation in Broch
# LimDen = MIN((m_1 * exp(-(MALS/MALS0)**2)) + m_2, 1.0)
# formulation here
# if the plant is too big overall then all segments suffer

LimDen=np.min([(m_1 * np.exp(-(AactMAL/MALS0)**2)) + m_2, 1.0])

# temperature limitation

if Temp > -1.8 and Temp < 10.0 :
    LimTemp = 0.08 * Temp + 0.2
elif  Temp >= 10.0 and Temp <= 15.0 :
    LimTemp   = 1.0
elif  Temp > 15.0 and Temp <= 19.0 :
    LimTemp = 19.0/4.0 - Temp/4.0
elif  Temp > 19.0:
    LimTemp= 0.0
   
# photoperiod limitation

DL = (daylengthd - daylengthp) /daylengthm           
LimPho = a_1 * (1 + np.sin(DL * np.abs(DL)**0.5)) + a_2
   
# decay
# decay is calculated as a percent of the total frond decay
# this superfluous because the next 2 lines will be the same for all
# segments in this column
coeff = np.exp(mrtMAL*AactMAL)
# not stated in paper but this has to be per day
# it looks unitless in paper
mrt = 10e-6*coeff/(1 + 10e-6*(coeff - 1 ))
# gDM per day per m3
# local decay
dDecayMALS = MALS * mrt * FrBmMALS/Depth
   
# production organic material

dPrPOC1MAL = (dDecayMALS*CDRatMALS)*FrPOC1MALS 
dPrPOC2MAL = (dDecayMALS*CDRatMALS)*FrPOC2MALS 

dPrPON1MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*FrPOC1MALS
dPrPON2MAL = (dDecayMALS*CDRatMALS*NCRatMALS)*FrPOC2MALS

dPrPOP1MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*FrPOC1MALS
dPrPOP2MAL = (dDecayMALS*CDRatMALS*PCRatMALS)*FrPOC2MALS

# growth
# mortality products are produced regardless 

Clim = 1-MALCmin/MALC
Nlim = 1-MALNmin/MALN
Plim = 1-MALPmin/MALP
NutLim = np.min([Nlim,Clim,Plim])

mu = LimDen * LimPho * LimTemp * NutLim
if mu > 0.0 :
    # gDM per day per m3
    dGrowMALS = MALS * (mu)/Depth
else:
    dGrowMALS = 0.0


   
# uptake from storage
if dGrowMALS > 0.0:
    # gN/m3 d
    TotN = MALS*(MALN+(CDRatMALS*NCRatMALS))
    dNtrMALS=mu*TotN/Depth
    # gP/m3 d
    TotP = MALS*(MALP+CDRatMALS*PCRatMALS)
    dPtrMALS=mu*TotP/Depth
    # gC/m3 d
    TotC = MALS*(MALC+CDRatMALS)
    dCtrMALS=mu*TotC/Depth       
else:
    dNtrMALS=0.0
    dPtrMALS=0.0
    dCtrMALS=0.0

# gDM/m3 d
LocGroS = dGrowMALS - dDecayMALS
LocGroN = dNtrMALS
LocGroP = dPtrMALS
LocGroC = dCtrMALS