# -*- coding: utf-8 -*-
"""
Created on Mon May  6 15:41:54 2019

@author: schueder
"""

import d3d
import matplotlib.pyplot as plt
import pylab

his1 = d3d.DelwaqHisFile(r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\farm3D_orig.his')
his2 = d3d.DelwaqHisFile(r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\farm3D_LinCor.his')
his3 = d3d.DelwaqHisFile(r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\farm3D_Stretch.his')

for sub in his1.subs:
    plt.plot(his1[sub,'Farm2(1)',:], 'k' ,label = 'normal (1)')
    
    plt.plot(his2[sub,'Farm2(1)',:], 'b', label = 'LinCor (1)')
    plt.plot(his2[sub,'Farm2(2)',:], 'r', label = 'LinCor (2)')


    plt.plot(his3[sub,'Farm2(1)',:], label = 'stretch (1)')
    plt.plot(his3[sub,'Farm2(2)',:], label = 'stretch (2)')
    
    plt.legend()
    pylab.savefig((r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\lenVal\%s.png') % sub ,dpi = 100)
    plt.close('all')
    
