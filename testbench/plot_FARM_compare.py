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
xfmt = mdates.DateFormatter('%m-%Y')

clr = ['k','b','r','y']
runs = {'Farm3D' : 'default',
        'Farm3D_FStretch' : 'Stretch factor',
        'Farm3D_nFrond' : 'nFronds = 4',
        'Farm3D_highBiomass' : 'high biomass'}

ls = [rr for rr in runs.keys()]
ls = '_'.join(ls)

printDirectory = 'd:\\projects\\IMPAQT\\_postProcessing\\%s\\' % ls
if not os.path.exists(printDirectory):
    os.makedirs(printDirectory)
seg = 'Farm2'

for rind, rr in enumerate(runs.keys()):

    file = r'd:\projects\IMPAQT\%s\farm3D.his' % rr    
    his = d3d.DelwaqHisFile(file)
    
    ###############################################################################
    
    fig = plt.figure(2)
    ax2 = fig.add_axes([0.1,0.1,0.8,0.8])  
    no3 = his['NO3',seg + '(1)',:]
    ax2.plot(his.dates,no3/14.0,label = runs[rr])
    ax2.set_ylabel('N-NO$_{3}$')
    ax2.xaxis.set_major_formatter(xfmt)
    ax2.legend()
    pylab.savefig((printDirectory + 'NO3.png') ,dpi = 200)
    
    
    ###############################################################################
    
    fign = plt.figure(3)
    ax = fign.add_axes([0.1,0.1,0.8,0.8])     
        
    area = return_malg_par(his, 'LocAreaMAL', seg, segment, column)
    ax.plot(his.dates,area*100.0, color = clr[rind], label = runs[rr])
    ax.set_ylabel('Frond area [dm$^{2}$]') 
    plt.grid()
    plt.legend()
    ax.xaxis.set_major_formatter(xfmt)
    pylab.savefig(printDirectory + 'frond_area.png' ,dpi = 200)
    
    fign = plt.figure(4)
    ax = fign.add_axes([0.1,0.1,0.8,0.8])     
    gross = return_malg_par(his, 'LocGroPS', seg, segment, column)
    ax.plot(his.dates,gross, color = clr[rind], label = runs[rr])
    ax.set_ylabel('Gross daily production [dm$^{2}$ d$^{-1}$]')
    plt.grid()
    ax.set_xlabel('(B)')
    ax.xaxis.set_major_formatter(xfmt)
    plt.legend()
    pylab.savefig(printDirectory + 'production.png' ,dpi = 200)
        
    fign = plt.figure(5)
    ax = fign.add_axes([0.1,0.1,0.8,0.8])       
    MALC = return_malg_par(his, 'MALSCDM', seg, segment, column)
    ax.plot(his.dates,MALC, color = clr[rind], label = runs[rr])
    ax.set_xlabel('(A)')
    ax.set_ylabel('carbon content [gC gDW$^{-1}$]')
    ax.xaxis.set_major_formatter(xfmt)    
    plt.legend()
    plt.grid()
    pylab.savefig(printDirectory + 'carbon_storage.png' ,dpi = 200)
    
    fign = plt.figure(6)
    ax = fign.add_axes([0.1,0.1,0.8,0.8])             
    MALN = return_malg_par(his, 'MALSNDM', seg, segment, column)
    ax.plot(his.dates,MALN, color = clr[rind], label = runs[rr])
    ax.set_xlabel('(B)')
    ax.set_ylabel('nitrogen content [gN gDW$^{-1}$]')
    plt.legend()
    plt.grid()
    ax.xaxis.set_major_formatter(xfmt)
    pylab.savefig(printDirectory + 'nitrogen_storage.png', dpi = 200)
    
    
    ################################################################################
    
    fig = plt.figure(10)
    ax = fig.add_axes([0.1,0.1,0.8,0.8])
    tip= return_malg_par(his, 'TipDepth', seg, segment, column)
    foot = return_malg_par(his, 'FootDepth', seg, segment, column)
    foot = np.zeros([len(foot),1])
    if rind == 0:
        ax.plot(his.dates,foot, 'k--', label = 'water surface')
    ax.plot(his.dates,-tip, color = clr[rind], label = runs[rr])
    
    plt.grid()
    plt.legend()
    ax.set_ylabel('m')
    ax.set_xlabel('time')
    ax.xaxis.set_major_formatter(xfmt)
    pylab.savefig(printDirectory + 'length.png' ,dpi = 200)
    
    fig = plt.figure(11)
    ax = fig.add_axes([0.1,0.1,0.8,0.8])
    dry = his['WdryTot',seg,:]/1000.0
    
    ax.plot(his.dates,dry, color = clr[rind], label = runs[rr])
    
    plt.grid()
    plt.legend()
    ax.set_ylabel('kg')
    ax.set_xlabel('time')
    ax.xaxis.set_major_formatter(xfmt)
    pylab.savefig(printDirectory + 'dry weight.png' ,dpi = 200)
