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
from per_Segment_per_Column import segment, column

def MakeTS(var):
    return pd.Timestamp(var)

def FindLast(var,ss):
    '''
    finds the last instance of a character in a string and returns the index
    '''
    ind = 0
    lstInd = ind
    it = 0
    while ind >= 0:
        ind = var.find(ss,ind + it,len(var))
        it = 1
        if ind < 0:
            return lstInd + 1
        lstInd = ind

def return_malg_par(his, sub, colname, segment, column):
    '''
    returns the correct value for a MALG model output based on if the parameter
    is equivalent throughout the column or needs to be summed across all non-
    zero segments
    col name is the name all segments in a column share
    '''
    print('processing: ' + sub)
    if sub in segment.keys():
        series = [np.zeros(len(his.dates))]
        # needs to be summed across all non-zero segments
        collocs = [ll for ll in his.locs if colname in ll and ll != colname]
        found = False
        flag = False
        for loc in collocs:     
            print('Checking: ' + loc)
            data = his[sub, loc, :]

            if np.max(data) > 0:
                # if there was biomass in this segment at one time
                print('adding to sum')
                found = True
                series.append(data) 
            else:
                print('point omitted')
                if found:
                    # if some data was already found, and no data in this
                    # segment, there will not be data in the next segments
                    print('no need to check additional segments')
                    flag = True     
            if flag:
                break
        if loc == collocs[-1]:
            print('no non-zero segment found for ' + sub)

        series = np.sum(np.array(series), axis = 0)
        
    elif sub in column.keys():
        # only the segment that always has biomass in it must be checked
        flag = False
        collocs = [ll for ll in his.locs if colname in ll and ll != colname]
        for loc in collocs:
            print('Checking: ' + loc)
            data = his[sub, loc, :]
            if sub == 'TipDepth':
                data = data * -1.0
            if np.min(data) > 0:     
                # if this segment always had biomass
                series = data
                print('representative point found')
                flag = True
            else:
                print('point omitted')
            if flag:
                break
        if loc == collocs[-1]:
            print('WARNING: no non-zero segment found for ' + sub)
            series = np.zeros(len(his.dates)) * np.nan
           

    else:
        print(sub + ': Unknown sub!')
        series = np.zeros(len(his.dates)) * np.nan
        
    return series
            
plt.close('all')

plt.rc('text', usetex= True)
plt.rc('font', family = 'serif', size = 30)
plt.rcParams["figure.figsize"] = [18,9.93]
xfmt = mdates.DateFormatter('%m-%y')


file = r'd:\projects\IMPAQT\Farm3D\farm3D.his'
sep = FindLast(file,"\\")
printDirectory = (file[:sep] + '\\post_processing\\')
if not os.path.exists(printDirectory):
    os.makedirs(printDirectory)

his = d3d.DelwaqHisFile(file)
seg = 'Farm2'
surf = his['SURF',seg + '(1)',:]
###############################################################################

fig = plt.figure(1)
ax1 = fig.add_axes([0.1,0.1,0.8,0.8])               
temp = his['Temp',seg + '(1)',:]
ax1.plot(his.dates,temp,'k--',label = 'Temperature')
ax1.grid()
ax1.legend(loc = 'upper left')
ax1.xaxis.set_major_formatter(xfmt)
pylab.savefig((printDirectory + 'Temp.png') ,dpi = 200)

fig = plt.figure(2)
ax2 = fig.add_axes([0.1,0.1,0.8,0.8])  
no3 = his['NO3',seg + '(1)',:]
ax2.plot(his.dates,no3/14.0,'k-',label = 'NO$_{3}^{-}$')
ax2.set_ylabel('N-NO$_{3}$')
ax2.xaxis.set_major_formatter(xfmt)
ax2.legend()
pylab.savefig((printDirectory + 'NO3.png') ,dpi = 200)


###############################################################################

fign = plt.figure()
ax = fign.add_axes([0.1,0.1,0.8,0.8])     
    
area = return_malg_par(his, 'SpecArea', seg, segment, column)
ax.plot(his.dates,area, 'k', label = 'Model')
ax.set_ylabel('Frond area [dm$^{2}$]')
plt.grid()
plt.legend()
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'frond_area.png' ,dpi = 200)

fign = plt.figure()
ax = fign.add_axes([0.1,0.1,0.8,0.8])     
gross = return_malg_par(his, 'LocGroPS', seg, segment, column)
ax.plot(his.dates,gross * surf, 'k', label = 'Model')
ax.set_ylabel('Gross daily production [dm$^{2}$ d$^{-1}$]')
plt.grid()
ax.set_xlabel('(B)')
ax.xaxis.set_major_formatter(xfmt)
plt.legend()
pylab.savefig(printDirectory + 'production.png' ,dpi = 200)
    
fign = plt.figure()
ax = fign.add_axes([0.1,0.1,0.8,0.8])       
MALC = return_malg_par(his, 'MALSCDM', seg, segment, column)
ax.plot(his.dates,MALC, 'k', label = 'Model')
ax.set_xlabel('(A)')
ax.set_ylabel('carbon content [gC gDW$^{-1}$]')
ax.xaxis.set_major_formatter(xfmt)    
plt.legend()
plt.grid()
pylab.savefig(printDirectory + 'carbon_storage.png' ,dpi = 200)

fign = plt.figure()
ax = fign.add_axes([0.1,0.1,0.8,0.8])             
MALN = return_malg_par(his, 'MALSNDM', seg, segment, column)
ax.plot(his.dates,MALN, 'k', label = 'Model')
ax.set_xlabel('(B)')
ax.set_ylabel('nitrogen content [gN gDW$^{-1}$]')
plt.legend()
plt.grid()
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'nitrogen_storage.png', dpi = 200)

###############################################################################

fig = plt.figure(8)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
gross = return_malg_par(his, 'GrosMALC', seg, segment, column)
exud = return_malg_par(his, 'ExudMALC', seg, segment, column)
resp = return_malg_par(his, 'RespMALC', seg, segment, column)

ax.plot(his.dates,gross * surf, 'k-', label = 'gross production')
ax.plot(his.dates,resp * surf, 'k--', label = 'respiration')
ax.plot(his.dates,exud * surf, 'k-.', label = 'exudation')

plt.grid()
plt.legend()

ax.set_ylabel('gC d$^{-1}$')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'carbon_budget.png' ,dpi = 200)

################################################################################

fig = plt.figure(10)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
tip= return_malg_par(his, 'TipDepth', seg, segment, column)
foot = return_malg_par(his, 'FootDepth', seg, segment, column)
foot = np.zeros([len(foot),1])

ax.plot(his.dates,foot, 'k--', label = 'water surface')
ax.plot(his.dates,-tip, 'k-', label = 'tip of seaweed culture')

plt.grid()
plt.legend()
ax.set_ylabel('m')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'length.png' ,dpi = 200)

fig = plt.figure(11)
ax = fig.add_axes([0.1,0.1,0.8,0.8])
dry = his['WdryTot',seg,:]/1000.0

ax.plot(his.dates,dry, 'k-', label = 'Dry weight')

plt.grid()
plt.legend()
ax.set_ylabel('kg')
ax.set_xlabel('time')
ax.xaxis.set_major_formatter(xfmt)
pylab.savefig(printDirectory + 'dry weight.png' ,dpi = 200)
