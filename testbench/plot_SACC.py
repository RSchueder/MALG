# -*- coding: utf-8 -*-
"""
Created on Mon Dec 24 00:14:06 2018

@author: rudys
"""

import d3d
import numpy as np
import matplotlib.pyplot as plt
plt.close('all')
file = r'd:\projects\IMPAQT\MALG\testbench\broch\broch_col.his'

his = d3d.DelwaqHisFile(file)
seg = 'Seg10'
###############################################################################

fig, ax = plt.subplots(2,1)
ax1 = ax[0]

ax2 = ax1.twinx()
temp = his['Temp',seg,:]
ax1.plot(his.dates,temp,'k--')
ax1.grid()

no3 = his['NO3',seg,:]
ax2.plot(his.dates,no3*1000.0/14.0,'k-')
ax1.set_xlabel('time')
ax1.set_ylabel('Temperature [degC]')
ax1.set_ylim([0,16])
ax2.set_ylabel('mmol N-NO_3')
ax2.set_ylim([0,8])
###############################################################################


rad = his['Itipu',seg,:]
ax[1].plot(his.dates,rad*86400/(1000*1000),'k')
ax[1].set_xlabel('time')
ax[1].set_ylabel('total irradiance [mol photons m^-2 d^-1]')
ax[1].grid()
###############################################################################

plt.figure(2)
plt.subplot(221)
area = his['AreaMAL',seg,:]
plt.plot(his.dates,area*100.0, label = 'Frond Area')
plt.xlabel('time')
plt.ylabel('Frond area [dm^2]')
plt.grid()

plt.subplot(222)

gross = his['LocGroPS',seg,:] * his['SURF',seg,:]*100/ (60.0000)
plt.ylabel('Gross daily production [dm^2 d^-1]')
plt.plot(his.dates,gross)
plt.grid()

plt.legend()

plt.subplot(223)
MALC = his['MALCDM',seg,:]
plt.plot(his.dates,MALC)
plt.xlabel('time')
plt.ylabel('carbon content [gC/gDM]')
plt.legend()
plt.grid()

plt.subplot(224)
MALN = his['MALNDM',seg,:]
plt.plot(his.dates,MALN)
plt.xlabel('time')
plt.ylabel('nitrogen content [gN/gDM]')
plt.legend()
plt.grid()

###############################################################################

plt.figure(3)
surf = his['SURF',seg,:]
gross = his['GrosMALC',seg,:] / surf
resp = his['RespMALC',seg,:] / surf
exud = his['ExudMALC',seg,:] / surf

plt.plot(his.dates,gross, 'g', label = 'gross')
plt.plot(his.dates,resp, 'b', label = 'respiration')
plt.plot(his.dates,exud, 'k', label = 'exudation')
plt.grid()
plt.legend()
plt.ylabel('gC/d')

###############################################################################
plt.figure(4)
lims = ['LimDenS','LimMALC','LimMALN','LimMALP','LimN','LimNutS','LimP','LimPhoS','LimTemS','LimVel']
#lims = ['LimN','LimMALN','LimMALP','LimMALC']

for ll in lims:
    val = his[ll,seg,:]
    plt.plot(his.dates,val,label = ll)
plt.grid()
plt.xlabel('time')
plt.ylabel('limitation factor [-]')
#plt.plot(his.dates,his['LimNutS',seg,:], 'o', label = 'LimNutS')
plt.legend()

daylend = his['daylend',seg,:]
daylenp = his['daylenp',seg,:]
daylenm = his['daylenm',seg,:]
tau = (daylend-daylenp)/daylenm
plt.figure(5)
# plt.plot(his.dates,tau)
photo = 0.85 *(1 + np.sin(tau) * (np.abs(tau))**0.5) + 0.3
plt.plot(his.dates,photo)

###############################################################################

plt.figure(6)
plt.subplot(311)
ph = his['pH',seg,:]
plt.plot(his.dates,ph)
plt.ylabel('pH [-]')
plt.subplot(312)
alka = his['ALKA',seg,:]
plt.plot(his.dates,alka)
plt.ylabel('Alkalinity [mg HCO3-/l]')
plt.subplot(313)
tic = his['TIC',seg,:]
plt.plot(his.dates,tic)
plt.ylabel('Total inorganic carbon [mg C/l]')
plt.xlabel('time')
