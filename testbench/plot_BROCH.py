# -*- coding: utf-8 -*-
"""
Created on Mon Dec 24 00:14:06 2018

@author: rudys
"""

import d3d
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import pylab 
import matplotlib.dates as mdates


def MakeTS(var):
    return pd.Timestamp(var)
plt.close('all')

plt.rc('text', usetex= True)
plt.rc('font', family = 'serif', size = 30)
plt.rcParams["figure.figsize"] = [18,9.93]
xfmt = mdates.DateFormatter('%m-%d')


file = r'd:\projects\IMPAQT\MALG\testbench\broch\broch_col.his'
# file = r'd:\projects\MALG\testbench\broch\broch_col.his'

his = d3d.DelwaqHisFile(file)
seg = 'Seg10'
###############################################################################

#fig, ax = plt.subplots(1,2)
#ax1 = ax[0]
fig = plt.figure(1)
ax1 = fig.add_axes([0.1,0.1,0.8,0.8])               
temp = his['Temp',seg,:]
ax1.plot(his.dates,temp,'k--',label = 'Temperature')
ax1.grid()
ax1.legend(loc = 'upper left')
ax1.xaxis.set_major_formatter(xfmt)

ax2 = ax1.twinx()
no3 = his['NO3',seg,:]
ax2.plot(his.dates,no3*1000.0/14.0,'k-',label = 'NO$_{3}^{-}$')
ax1.set_xlabel('(A)')
ax1.set_ylabel('Temperature [$^{0}$C]')
ax1.set_ylim([2,16])
ax2.set_ylabel('mmol N-NO$_{3}')
ax2.set_ylim([0,8])
ax2.xaxis.set_major_formatter(xfmt)
ax2.legend()
pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\Temp_NO3.png') ,dpi = 300)


fig = plt.figure(2)
ax1 = fig.add_axes([0.1,0.1,0.8,0.8])      
rad = his['Itipu',seg,:]
ax1.plot(his.dates,rad*86400/(1000*1000),'k', label = 'total irradiance')
ax1.set_xlabel('(B)')
ax1.set_ylabel('total irradiance [mol photons m$^{-2}$ d$^{-1}$]')
ax1.grid()
ax1.legend()
ax1.xaxis.set_major_formatter(xfmt)
plt.legend()
pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\irradiance.png') ,dpi = 300)

###############################################################################

for ii in range(0,2):
    fig = plt.figure(3)

    if ii == 0:
        ax = plt.subplot(221)
    else:
        fign = plt.figure(4)
        ax = fign.add_axes([0.1,0.1,0.8,0.8])               
    area = his['LocAreaMAL',seg,:]
    ax.plot(his.dates,area*100.0, 'k', label = 'Model')
    ax.set_xlabel('(A)')
    ax.set_ylabel('Frond area [dm$^{2}$]')
    plt.grid()
    plt.legend()
    ax.set_ylim([0,50])
    ax.xaxis.set_major_formatter(xfmt)
    if ii != 0:
        pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\frond_area.png') ,dpi = 300)
    
    if ii == 0:
        ax = plt.subplot(222)
    else:
        fign = plt.figure(5)
        ax = fign.add_axes([0.1,0.1,0.8,0.8])     
    gross = his['LocGroPS',seg,:] * his['SURF',seg,:]*100/ (60.0000)
    ax.plot(his.dates,gross, 'k', label = 'Model')
    ax.set_ylabel('Gross daily production [dm$^{2}$ d$^{-1}$]')
    plt.grid()
    ax.set_xlabel('(B)')
    ax.set_ylim([0,0.8])
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\production_circle.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'ok',label = 'Sjotun, 1993')
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\production_plus.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'+k',label = 'Sjotun, 1993')
    ax.xaxis.set_major_formatter(xfmt)
    plt.legend()
    if ii != 0:
        pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\production.png') ,dpi = 300)
        
    if ii == 0:
        ax = plt.subplot(223)
    else:
        fign = plt.figure(6)
        ax = fign.add_axes([0.1,0.1,0.8,0.8])       
    MALC = his['MALSCDM',seg,:]
    ax.plot(his.dates,MALC, 'k', label = 'Model')
    ax.set_xlabel('(A)')
    ax.set_ylabel('carbon content [gC gDW$^{-1}$]')
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\carbon_circle.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'ok',label = 'Sjotun, 1993')
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\carbon_plus.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'+k',label = 'Sjotun, 1993')
    ax.xaxis.set_major_formatter(xfmt)    
    plt.legend()
    plt.grid()
    plt.ylim([0.18,0.40])
    if ii != 0:
        pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\carbon_storage.png') ,dpi = 300)
    
    if ii == 0:
        ax = plt.subplot(224)
    else:
        fign = plt.figure(7)
        ax = fign.add_axes([0.1,0.1,0.8,0.8])             
    MALN = his['MALSNDM',seg,:]
    ax.plot(his.dates,MALN, 'k', label = 'Model')
    ax.set_xlabel('(B)')
    ax.set_ylabel('nitrogen content [gN gDW$^{-1}$]')
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\nitrogen_circle.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'ok',label = 'Sjotun, 1993')
    dat = pd.read_csv(r'd:\projects\IMPAQT\MALG\documentation\manual\figures\validation_data\nitrogen_plus.csv')
    ax.plot(dat['time'].apply(MakeTS),dat['val'],'+k',label = 'Sjotun, 1993')
    plt.legend()
    plt.grid()
    ax.set_ylim([0.005,0.03])
    ax.xaxis.set_major_formatter(xfmt)
    if ii != 0:
        pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\nitrogen_storage.png') ,dpi = 300)

###############################################################################

fig = plt.figure(8)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
surf = his['SURF',seg,:]
gross = his['GrosMALC',seg,:] / surf
exud = his['ExudMALC',seg,:] / surf
resp = his['RespMALC',seg,:] / surf

ax.plot(his.dates,gross, 'k-', label = 'gross production')
ax.plot(his.dates,resp, 'k--', label = 'respiration')
ax.plot(his.dates,exud, 'k-.', label = 'exudation')

plt.grid()
plt.legend()

ax.set_ylabel('gC d$^{-1}$')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig((r'd:\projects\IMPAQT\MALG\documentation\manual\figures\carbon_budget.png') ,dpi = 300)

################################################################################
fig ,ax1 = plt.subplots(1,1)
ax2 = ax1.twinx()
# lims = ['LimDenS','LimMALC','LimMALN','LimN','LimP','LimTemS']
lims = ['LimDenS','LimMALN','LimMALC','LimMALP','LimTemS','LimPhoS']
dat = {}
for ll in lims:
    val = his[ll,seg,:]
    dat[ll] = val
    ax1.plot(his.dates,val,label = ll)
ax1.grid()
plt.xlabel('time')
plt.ylabel('limitation factor [-]')
#plt.plot(his.dates,his['LimNutS',seg,:], 'o', label = 'LimNutS')
ax1.grid()
ax1.legend()

LimNut = np.array([np.min([dat['LimMALC'][ind],dat['LimMALN'][ind]]) for ind,val in enumerate(dat['LimMALC'])])
ax2.plot(his.dates, dat['LimDenS'] * dat['LimTemS'] * dat['LimPhoS'] * LimNut, label = 'recalculated growth rate')
mu = his['muMALS',seg,:]
ax2.plot(his.dates,mu,'k--',label = 'specific growth rate')

ax1.set_xlabel('time')
ax1.set_ylabel('growth rate contribution [1/d]')
ax2.set_ylabel('growth rate [1/d]')
#ax2.legend()
