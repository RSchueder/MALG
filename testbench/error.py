# -*- coding: utf-8 -*-
"""
Created on Mon May  6 15:41:54 2019

@author: schueder
"""

import d3d
import matplotlib.pyplot as plt
import pylab

his1 = d3d.DelwaqHisFile(r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\farm3D.his')
his2 = d3d.DelwaqHisFile(r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\farm3D_error.his')

for sub in his1.subs:
    plt.plot(his1[sub,'Farm2(2)',:], 'y' ,label = 'normal (1)')
    plt.plot(his1[sub,'Farm2(1)',:], 'k' ,label = 'normal (1)')
    
    plt.plot(his2[sub,'Farm2(1)',:], 'b', label = 'error (1)')
    plt.plot(his2[sub,'Farm2(2)',:], 'r', label = 'error (2)')

    plt.legend()
    pylab.savefig((r'd:\projects\IMPAQT\MALG\testbench\tidal_flume_farm\farm3DWQ_NZB\error\%s.png') % sub ,dpi = 100)
    plt.close('all')
    
