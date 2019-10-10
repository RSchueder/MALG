# -*- coding: utf-8 -*-
"""
Created on Thu Jan 17 15:33:34 2019

linux-ify or windows-ify a deltashell set of files

ex.

conv = 'windows'
mod1 = 'T02'
mod2 = 'T03'

@author: schueder
"""
import glob
import os
import sys

if len(sys.argv) == 4:
    conv = sys.argv[1]
    mod1 = sys.argv[2]
    mod2 = sys.argv[3]
    accept = True

elif len(sys.argv) == 2:
    conv = sys.argv[1]
    mod1 = ''
    mod2 = ''
    accept = True
else:
    print('ERROR: must pass either 1 or 3 arguments')
    accept = False

if accept:
    print('converting to %s' % conv)
    if mod1 != mod2:
        print('changing references from hydrodynamic model %s to %s' % (mod1, mod2))

    for file in glob.glob('includes_deltashell/*tmp.inc'):
        os.remove(file)

    if conv == 'windows':
        for file in glob.glob('includes_deltashell/*.inc'):
            shrt = file.replace('.inc','')
            os.rename(file,shrt + 'tmp.inc')
            with open(shrt + 'tmp.inc','r') as of:
                with open(file,'w') as nf:
                    for line in of.readlines():
                        nf.write(line.replace('/p/','P:/').replace(mod1,mod2))
            os.remove(shrt + 'tmp.inc')
                
    if conv == 'linux':
        for file in glob.glob('includes_deltashell/*.inc'):
            shrt = file.replace('.inc','')
            os.rename(file,shrt + 'tmp.inc')
            with open(shrt + 'tmp.inc','r') as of:
                with open(file,'w') as nf:
                    for line in of.readlines():
                        nf.write(line.replace('P:/','/p/').replace(mod1,mod2))
            os.remove(shrt + 'tmp.inc')
    print('finished')