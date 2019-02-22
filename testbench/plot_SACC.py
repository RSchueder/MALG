# -*- coding: utf-8 -*-
"""
Created on Mon Dec 24 00:14:06 2018

@author: rudys
"""

import d3d
import numpy as np
import matplotlib.pyplot as plt

file = r'c:\Google Drive\Deltares\IMPAQT\column\col-hyd-wq\SACC_COL_gui.his'
#file = r'c:\Google Drive\Deltares\IMPAQT\column\col\SACC_COL_simple.his'

his = d3d.DelwaqHisFile(file)

for sub in his.subs:
    if 'SM01' in sub:
        dat = his[sub,seg,:]
        if np.min(dat) == 0:
            plt.plot(his.dates,dat, label = sub)
    plt.legend()
plt.close('all')

param = 'LocalDepth'
for ii in range(1,11):
    seg =  'Seg' + str(ii)
    plt.scatter(ii,his[param,seg,0])
    plt.text(ii,his[param,seg,0],str(ii))
    plt.xlabel('segment number')
    plt.ylabel('local depth [m]')
    