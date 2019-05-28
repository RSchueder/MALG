# -*- coding: utf-8 -*-
"""
Created on Mon Dec 24 00:14:06 2018

@author: rudys
"""

import os
import d3d
import pylab 
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

def MakeTS(var):
    return pd.Timestamp(var)

def FindLast(var,ss):
    # finds the last instance of a character in a string and returns the index
    ind = 0
    lstInd = ind
    it = 0
    while ind >= 0:
        ind = var.find(ss,ind + it,len(var))
        it = 1
        if ind < 0:
            return lstInd + 1
        lstInd = ind
        
plt.close('all')

plt.rc('text', usetex= True)
plt.rc('font', family = 'serif', size = 30)
plt.rcParams["figure.figsize"] = [18,9.93]
xfmt = mdates.DateFormatter('%m-%d')


file = r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_1frond\farm3D.his'
sep = FindLast(file,"\\")
printDirectory = (file[:sep] + '\\post_processing')
if not os.path.exists(printDirectory):
    os.makedirs(printDirectory)

his = d3d.DelwaqHisFile(file)
seg = 'Farm2'
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
pylab.savefig((printDirectory + 'Temp.png') ,dpi = 700)

fig = plt.figure(2)
ax2 = fig.add_axes([0.1,0.1,0.8,0.8])  
no3 = his['NO3',seg,:]
ax2.plot(his.dates,no3*1000.0/14.0,'k-',label = 'NO$_{3}^{-}$')
ax2.set_ylabel('N-NO$_{3}$')
ax2.xaxis.set_major_formatter(xfmt)
ax2.legend()
pylab.savefig((printDirectory + 'NO3.png') ,dpi = 700)

fig = plt.figure(3)
ax1 = fig.add_axes([0.1,0.1,0.8,0.8])      
rad = his['Itipu',seg,:]
ax1.plot(his.dates,rad*86400/(1000*1000),'k', label = 'total irradiance')
ax1.set_ylabel('total irradiance [mol photons m$^{-2}$ d$^{-1}$]')
ax1.grid()
ax1.legend()
ax1.xaxis.set_major_formatter(xfmt)
plt.legend()
pylab.savefig(printDirectory + 'irradiance.png' ,dpi = 700)

###############################################################################

fign = plt.figure(4)
ax = fign.add_axes([0.1,0.1,0.8,0.8])               
area = his['LocAreaMAL',seg,:]
ax.plot(his.dates,area*100.0, 'k', label = 'Model')
ax.set_ylabel('Frond area [dm$^{2}$]')
plt.grid()
plt.legend()
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'frond_area.png' ,dpi = 700)

fig, ax = plt.subplots(1,4)
fign = plt.figure(4)
ax = fign.add_axes([0.1,0.1,0.8,0.8])
     
gross = his['LocGroPS',seg,:]
ax.plot(his.dates,gross, 'k', label = 'Model')
ax.set_ylabel('Gross daily production [dm$^{2}$ d$^{-1}$]')
plt.grid()
ax.set_xlabel('(B)')
ax.xaxis.set_major_formatter(xfmt)
plt.legend()
pylab.savefig(printDirectory + 'production.png' ,dpi = 700)
    
fign = plt.figure(6)
ax = fign.add_axes([0.1,0.1,0.8,0.8])       
MALC = his['MALSCDM',seg,:]
ax.plot(his.dates,MALC, 'k', label = 'Model')
ax.set_xlabel('(A)')
ax.set_ylabel('carbon content [gC gDW$^{-1}$]')
ax.xaxis.set_major_formatter(xfmt)    
plt.legend()
plt.grid()
pylab.savefig(printDirectory + 'carbon_storage.png' ,dpi = 700)

fign = plt.figure(7)
ax = fign.add_axes([0.1,0.1,0.8,0.8])             
MALN = his['MALSNDM',seg,:]
ax.plot(his.dates,MALN, 'k', label = 'Model')
ax.set_xlabel('(B)')
ax.set_ylabel('nitrogen content [gN gDW$^{-1}$]')
plt.legend()
plt.grid()
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'nitrogen_storage.png', dpi = 700)

###############################################################################

fig = plt.figure(8)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
surf = his['SURF',seg,:]
gross = his['GrosMALC',seg,:]
exud = his['ExudMALC',seg,:]
resp = his['RespMALC',seg,:] 

ax.plot(his.dates,gross, 'k-', label = 'gross production')
ax.plot(his.dates,resp, 'k--', label = 'respiration')
ax.plot(his.dates,exud, 'k-.', label = 'exudation')

plt.grid()
plt.legend()

ax.set_ylabel('gC d$^{-1}$')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'carbon_budget.png' ,dpi = 700)

################################################################################
fig ,ax1 = plt.subplots(1,1)
ax2 = ax1.twinx()
lims = ['LimDenS','LimMALN','LimMALC','LimTemS','LimPhoS']
dat = {}
for ll in lims:
    val = his[ll,seg,:]
    dat[ll] = val
    ax1.plot(his.dates,val,label = ll)
ax1.grid()
ax1.xaxis.set_major_formatter(xfmt)

plt.xlabel('time')
plt.ylabel('limitation factor [-]')
ax1.grid()
ax1.legend()

LimNut = np.array([np.min([dat['LimMALC'][ind],dat['LimMALN'][ind]]) for ind,val in enumerate(dat['LimMALC'])])
ax2.plot(his.dates, dat['LimDenS'] * dat['LimTemS'] * dat['LimPhoS'] * LimNut, label = 'recalculated growth rate')
mu = his['muMALS',seg,:]
ax2.plot(his.dates,mu,'k--',label = 'specific growth rate')

ax1.set_xlabel('time')
ax1.set_ylabel('growth rate contribution [1/d]')
ax2.set_ylabel('growth rate [1/d]')
ax2.legend()
pylab.savefig(printDirectory + 'limitation.png' ,dpi = 700)

################################################################################

fig = plt.figure(10)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
tip= his['TipDepth',seg,:]
foot = his['FootDepth',seg,:]
foot = np.zeros([len(foot),1])

ax.plot(his.dates,foot, 'k--', label = 'water surface')
ax.plot(his.dates,tip, 'k-', label = 'tip of seaweed culture')

plt.grid()
plt.legend()
ax.set_ylabel('m')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'length.png' ,dpi = 700)

fig = plt.figure(11)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
dry = his['Wdry',seg,:]

ax.plot(his.dates,dry, 'k-', label = 'Dry weight')

plt.grid()
plt.legend()
ax.set_ylabel('g')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'dry weight.png' ,dpi = 700)
