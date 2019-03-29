# -*- coding: utf-8 -*-
"""
Created on Wed Mar 27 17:18:20 2019

@author: rudys
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
plt.close('all')
def make2(var):
    val = var
    if len(str(var)) == 1:
        val = '0' + str(var)
    return val
force = pd.read_excel(r'd:\projects\MALG\testbench\broch\forcing.xlsx')

const = 'W/m2'

interval = np.arange(0,400,1/24)
delt = force['Date'] - force['Date'].iloc[0]
dt = [int(ii.days) for ii in delt]

x = np.array([dt,np.array(force[const])])
val = np.interp(interval,x.T[:,0],x.T[:,1])

hourly = [force['Date'].iloc[0] + pd.Timedelta(days = ii) for ii in interval]
ind = [ii.hour < 6 for ii in hourly]
val[ind] = 0.0
ind = [ii.hour > 18 for ii in hourly]
val[ind] = 0.0

plt.plot(interval,val)
with open(r'd:\projects\MALG\testbench\broch\RadSurf_hourly.prn','w') as rad:
    for ind,hh in enumerate(hourly):
        month = make2(hh.month)
        day = make2(hh.day)
        hour = make2(hh.hour)
        rad.write('%i/%s/%s-%s:00:00   %.3f\n' % (hh.year+18,month,day,hour,val[ind]))

plt.plot(hourly,val)