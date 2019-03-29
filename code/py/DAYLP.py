# -*- coding: utf-8 -*-
"""
Created on Fri Feb 22 15:33:05 2019

@author: schueder
"""

#     Only constant inputs, so only single calculation of daylength needed to be set to all segments

import numpy as np

import matplotlib.pyplot as plt
plt.close('all')
sin50m = -1.454389765e-2 
e  = 1.721420632e-2
#     Conversion Latitude to rads
latitu  = 52 / 360 * 2 * np.pi
daylengthm = 0.0

daylenda = []
daylenpa = []
#     Conversion time to daynumbers relative to tref
for daynrd in range(1,366):
    #     Computes declination of sun on day DAYNR.
    if daynrd < 0. or  daynrd > 365.:
        declin = 9.9999
    else:
        declin = 6.918e-3 - 3.99912e-1 * np.cos ( e * daynrd) -6.758e-3   * np.cos ( 2.0 * e * daynrd) -2.697e-3   * np.cos ( 3.0 * e * daynrd) +7.0257e-2  * np.sin ( e * daynrd) +9.07e-4    * np.sin ( 2.0 * e * daynrd) +1.480e-3   * np.sin ( 3.0 * e * daynrd)
    
    
    #     Computes daylenth
    
    temp = (( sin50m - np.sin ( declin) * np.sin ( latitu)) /( np.cos ( declin) * np.cos ( latitu)))
    
    if temp > 1.0:
        temp   = 0.0
    elif temp < -1.0:
        temp   = 24.0
    else:
        temp   = 7.639437268 * np.arccos ( temp)
      
    
    daylengthd = temp / 24.0
    daylenda.append(daylengthd)
      
    #     ------------------------------------
      
    daynrp = daynrd - 1
    
    if daynrp == 0:
        daynrp = 365
        
    
    if (( daynrp < 0.) or ( daynrp > 365.)):
        declin = 9.9999e9
    else:
        declin = 6.918e-3 -3.99912e-1 * np.cos ( e * daynrp) -6.758e-3   * np.cos ( 2.0 * e * daynrp) -2.697e-3   * np.cos ( 3.0 * e * daynrp) +7.0257e-2  * np.sin ( e * daynrp) +9.07e-4    * np.sin ( 2.0 * e * daynrp) +1.480e-3   * np.sin ( 3.0 * e * daynrp)
    
    
    #     Computes daylenth
    
    temp = (( sin50m - np.sin ( declin) * np.sin ( latitu)) / ( np.cos ( declin) * np.cos ( latitu)))
    
    if temp > 1.0:
        temp   = 0.0
    elif  temp < -1.0:
        temp   = 24.0
    else:
        temp   = 7.639437268 * np.arccos(temp)
      
    
    daylengthp = temp / 24.0
    daylenpa.append(daylengthp)
      
    #     ------------------------------------
      
    for daynrp in range(1 , 366):
        if (( daynrp < 0.) or ( daynrp > 365.)):
            declin = 9.9999e9
        else:
            declin = 6.918e-3 -3.99912e-1 * np.cos ( e * daynrp) -6.758e-3   * np.cos ( 2.0 * e * daynrp) -2.697e-3   * np.cos ( 3.0 * e * daynrp) +7.0257e-2  * np.sin ( e * daynrp) +9.07e-4    * np.sin ( 2.0 * e * daynrp) +1.480e-3   * np.sin ( 3.0 * e * daynrp)
        
    #     Computes daylenth
    
        temp = (( sin50m - np.sin ( declin) * np.sin ( latitu)) / ( np.cos ( declin) * np.cos ( latitu)))
    
        if  temp > 1.0:
            temp   = 0.0
        elif  temp < -1.0:
            temp   = 24.0
        else:
            temp   = 7.639437268 * np.arccos ( temp)
      
      
        daylengthm = np.max([daylengthm, temp / 24.0])

daylenda = np.array(daylenda)
daylenpa = np.array(daylenpa)

tau = (daylenda - daylenpa) / np.max(daylenda - daylenpa)
a1 = 1.02
a2 = 0.13
photo = a1 * (1+np.sin(tau)*np.abs(tau)**0.5)+a2
plt.plot(photo)
plt.ylim([0.2,2.1])
plt.title(str(np.max(photo) - np.min(photo)))
