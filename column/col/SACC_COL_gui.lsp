 Deltares, DELWAQ Version 5.08.00.62905M, Jan 02 2019, 14:52:21
 Execution start: 2019/01/02 17:51:38 
                                                                                
 found -p command line switch                                                   

 Info: This processes definition file does not contain standard names and units for NetCDF files.

 
 Using process definition file : c:\Deltares\repos\Delft3D\src\bin\x64\dwaq\default\proc_def
 Version number                :       5.08
 Serial                        : 2018052301
 


 Model :                                                    
                                                            


 Run   :                                                    
                    T0: 2019.01.02 00:00:00  (scu=       1s)


# scanning input for old process definitions
 found only_active constant                                                     
 only activated processes are switched on                                       
 
total number of substances with fractions :  0
# Determining which processes can be switched on                                                    
                                                                                                    
 Input for [pH_carb             ] Integrated calculation of pH, carbonate system                    
   Process is activated                                                                             
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
   Process is activated                                                                             
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
   Process is activated                                                                             
                                                                                                    
 Input for [MaxMacro            ] maximum biomass macrophytes                                       
   Process is activated                                                                             
                                                                                                    
 Input for [Coverage            ] coverage by macrophytes                                           
   Process is activated                                                                             
                                                                                                    
 Input for [Salinchlor          ] Conversion of salinity into chloride or vv                        
   Process is activated                                                                             
                                                                                                    
 Input for [ResTim              ] Residence time                                                    
   Process is activated                                                                             
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
   Process is activated                                                                             
                                                                                                    
 Input for [MACDIS01            ] Submerged Macrophyte 1 Distibution function                       
   Process is activated                                                                             
                                                                                                    
 Input for [pH_simp             ] Simple calculation of pH                                          
   Process is activated                                                                             
                                                                                                    
 Input for [SpecCarb            ] Speciation of carbonate in solution                               
   Process is activated                                                                             
                                                                                                    
 Input for [ExtMacroVl          ] Extinction of light by macrophytes                                
   Process is activated                                                                             
                                                                                                    
 Input for [Extinc_VLG          ] Extinction of visible-light (370-680nm) DLWQ-G                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
   Process is activated                                                                             
                                                                                                    
 Input for [SaturCO2            ] Saturation concentration carbon dioxide                           
   Process is activated                                                                             
                                                                                                    
 Input for [RearCO2             ] Reaeration of carbon dioxide                                      
   Process is activated                                                                             
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
   Process is activated                                                                             
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
   Process is activated                                                                             
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
   Process is activated                                                                             
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
   Process is activated                                                                             
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
   Process is activated                                                                             
                                                                                                    
 Input for [DecMedium           ] Mineralization medium decomp. detritus POC2                       
   Process is activated                                                                             
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
   Process is activated                                                                             
                                                                                                    
 Input for [NH3free             ] Calculation conc. unionized ammonia                               
   Process is activated                                                                             
                                                                                                    
 Input for [Rad_SM01            ] Light efficiency function submerged macrophyt 1                   
   Process is activated                                                                             
                                                                                                    
 Input for [MACNUTSM01          ] Nutrient limitation function for macrophyte SM01                  
   Process is activated                                                                             
                                                                                                    
 Input for [MacroPhyt1          ] Macrophyte production species 1                                   
   Process is activated                                                                             
                                                                                                    
 Input for [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                     
   Process is activated                                                                             
                                                                                                    
                                                                                                    
# determinig the processes to model the substances.                                                 
                                                                                                    
-fluxes for [Continuity          ]                                                                  
 no fluxes found                                                                                    
-dispersion for [Continuity          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Continuity          ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [cTR1                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [cTR1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [cTR1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [OXY                 ]                                                                  
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dREAROXY            ] reaeration flux of dissolved oxygen                             
   from proces [RearOXY             ] Reaeration of oxygen                                          
   process is switched on.                                                                          
 found flux  [dOxCon              ] mineralisation flux oxidised with DO                            
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dOXYprSM01          ] OXY production by SM01                                          
   from proces [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                 
   process is switched on.                                                                          
-dispersion for [OXY                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [OXY                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Salinity            ]                                                                  
 no fluxes found                                                                                    
-dispersion for [Salinity            ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Salinity            ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NH4                 ]                                                                  
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPON2            ] mineralization flux PON2 to NH4                                 
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dNH4upEM01          ] NH4 uptake by EM01                                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dNH4upSM01          ] NH4 uptake by SM01                                              
   from proces [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                 
   process is switched on.                                                                          
-dispersion for [NH4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NH4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NO3                 ]                                                                  
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dNiDen              ] mineralisation flux oxidised with nitrate                       
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dNO3upEM01          ] NO3 uptake by EM01                                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dNO3upSM01          ] NO3 uptake by SM01                                              
   from proces [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                 
   process is switched on.                                                                          
-dispersion for [NO3                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NO3                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PO4                 ]                                                                  
 found flux  [dMinPOP1            ] mineralization flux POP1 to PO4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOP2            ] mineralization flux POP2 to PO4                                 
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dPO4upEM01          ] PO4 uptake by EM01                                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dPO4upSM01          ] PO4 uptake by SM01                                              
   from proces [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                 
   process is switched on.                                                                          
-dispersion for [PO4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PO4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [TIC                 ]                                                                  
 found flux  [dREARCO2            ] reaeration flux of CO2                                          
   from proces [RearCO2             ] Reaeration of carbon dioxide                                  
   process is switched on.                                                                          
 found flux  [dOxCon              ] mineralisation flux oxidised with DO                            
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dNiDen              ] mineralisation flux oxidised with nitrate                       
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dFeRed              ] mineralisation flux oxid. with iron                             
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dSuRed              ] mineralisation flux oxid. with sulphate                         
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dMetGenCO2          ] min. flux conv. methanogenese into CO2                          
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dCO2upSM01          ] CO2 uptake by SM01                                              
   from proces [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                 
   process is switched on.                                                                          
-dispersion for [TIC                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [TIC                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Alka                ]                                                                  
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dNiDen              ] mineralisation flux oxidised with nitrate                       
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dFeRed              ] mineralisation flux oxid. with iron                             
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
-dispersion for [Alka                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Alka                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC1                ]                                                                  
 found flux  [dCnvPPOC1           ] conversion flux POC1 to POC2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPOC1           ] conversion flux POC1 to DOC                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOC1G           ] mineralization flux POC1 to CO2                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dPrPOC1M01          ] POC1 production macrophyt 1                                     
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [POC1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC2                ]                                                                  
 found flux  [dCnvPPOC1           ] conversion flux POC1 to POC2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvPPOC2           ] conversion flux POC2 to POC3                                    
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dCnvDPOC2           ] conversion flux POC2 to DOC                                     
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dMinPOC2G           ] mineralization flux POC2 to CO2                                 
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dPrPOC2M01          ] POC2 production macrophyt 1                                     
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [POC2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON1                ]                                                                  
 found flux  [dCnvPPON1           ] conversion flux PON1 to PON2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPON1           ] conversion flux PON1 to DON                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dPrPON1M01          ] PON1 production macrophyt 1                                     
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [PON1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON2                ]                                                                  
 found flux  [dCnvPPON1           ] conversion flux PON1 to PON2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvPPON2           ] conversion flux PON2 to PON3                                    
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dCnvDPON2           ] conversion flux PON2 to DON                                     
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dMinPON2            ] mineralization flux PON2 to NH4                                 
   from proces [DecMedium           ] Mineralization medium decomp. detritus POC2                   
   process is switched on.                                                                          
 found flux  [dPrPON2M01          ] PON2 production macrophyt 1                                     
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [PON2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [SM01                ]                                                                  
 found flux  [dGrowSM01           ] growth of SM01 species                                          
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dDecaySM01          ] decay of SM01 species                                           
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [SM01                ]                                                              
 no dispersions found                                                                               
-velocity for [SM01                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [RH01                ]                                                                  
 found flux  [dCtEMtRH01          ] translocation of C from EM to RH01                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dCtSMtRH01          ] translocation of C from SM to RH01                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dCtRHtEM01          ] translocation of C from RH to EM01                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
 found flux  [dCtRHtSM01          ] translocation of C from RH to SM01                              
   from proces [MacroPhyt1          ] Macrophyte production species 1                               
   process is switched on.                                                                          
-dispersion for [RH01                ]                                                              
 no dispersions found                                                                               
-velocity for [RH01                ]                                                                
 no velocity found                                                                                  
                                                                                                    
# locating processes for requested output                                                           
                                                                                                    
# determining the input for the processes (in reversed order)                                       
                                                                                                    
 Input for [SM01_Upt3D          ] Macrophyte module uptake 3D flux distribution                     
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [NH4S12              ] NH4 in S12 pore water                                                 
       using default value: -1.00000                                                                
       [LocSedDept          ] Sediment layer depth to bottom of segment                             
       Using output from proces [TotDepth            ]                                              
       [IBotSeg             ] Bottom segment number                                                 
       Using output from proces [Coverage            ]                                              
       [FrBmSM01            ] Fraction Biomass Layer macrophyte submerged 01                        
       Using output from proces [MACDIS01            ]                                              
       [RootDeSM01          ] Rooting depth SM01                                                    
       using default value: 0.100000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [PO4S12              ] PO4 in S12 pore water                                                 
       using default value: -1.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   5                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   7                                                                       
       [DisCO2              ] concentration of dissolved carbon dioxide                             
       Using output from proces [pH_carb             ]                                              
       [DisH2CO3            ] concentration of dissolved true H2CO3                                 
       Using output from proces [SpecCarb            ]                                              
       [DisHCO3             ] concentration of dissolved HCO3(-)                                    
       Using output from proces [pH_carb             ]                                              
       [PrfNH4SM01          ] ammonium preferency over nitrate SM01                                 
       using default value:  1.00000                                                                
       [NH4CrSM01           ] critical NH4 concentration for uptake SM01                            
       using default value: 0.100000E-01                                                            
       [FrootNSM01          ] fraction root uptake nitrogen SM01                                    
       Using output from proces [MACNUTSM01          ]                                              
       [FrootPSM01          ] fraction root uptake phosphorus SM01                                  
       Using output from proces [MACNUTSM01          ]                                              
       [CDINSM01W           ] average water concentration DIN for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CPO4SM01W           ] average water concentration PO4 for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CCO2SM01            ] average concentration CO2+H2CO3 for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CHCO3SM01           ] average concentration HCO3 for SM01                                   
       Using output from proces [MACNUTSM01          ]                                              
       [CDINSM01B           ] average sediment concentration DIN for SM01                           
       Using output from proces [MACNUTSM01          ]                                              
       [CPO4SM01B           ] average sediment concentration PO4 for SM01                           
       Using output from proces [MACNUTSM01          ]                                              
       [dNupSM01            ] uptake flux nitrogen SM01                                             
       Using flux from proces [MacroPhyt1          ]                                                
       [dPupSM01            ] uptake flux phosphorus SM01                                           
       Using flux from proces [MacroPhyt1          ]                                                
       [dSM01OXY            ] oxygen production SM01                                                
       Using flux from proces [MacroPhyt1          ]                                                
       [dSM01CO2            ] CO2 uptake SM01                                                       
       Using flux from proces [MacroPhyt1          ]                                                
                                                                                                    
 Input for [MacroPhyt1          ] Macrophyte production species 1                                   
       [EM01                ] macrophyt emerged 01                                                  
       using default value:  0.00000                                                                
       [SM01                ] macrophyt submerged 01                                                
       Using substance nr  14                                                                       
       [RH01                ] macrophyt rhizome 01                                                  
       Using substance nr  15                                                                       
       [NRH01               ] nitrogen content macrophyt rhizome 01                                 
       using default value:  0.00000                                                                
       [PRH01               ] phosphorus content macrophyt rhizome 01                               
       using default value:  0.00000                                                                
       [MaxEM01             ] maximum biomass for macrophyt emerged 01                              
       Using output from proces [MaxMacro            ]                                              
       [MaxSM01             ] maximum biomass for macrophyt submerged 01                            
       Using output from proces [MaxMacro            ]                                              
       [PPmaxEM01           ] potential growth rate macrophyt emerged 01                            
       using default value:  0.00000                                                                
       [PPmaxSM01           ] potential growth rate macrophyt submerged 01                          
       Using constant nr 44 with value: 0.120000                                                    
       [EM01thresh          ] threshold biomass EM01 in growth                                      
       using default value:  0.00000                                                                
       [SM01thresh          ] threshold biomass SM01 in growth                                      
       Using constant nr 45 with value:  1.00000                                                    
       [RH01min             ] minimal biomass RH01                                                  
       Using constant nr 46 with value:  1.00000                                                    
       [NRH01min            ] minimal NRH01                                                         
       Using constant nr 47 with value:  0.00000                                                    
       [PRH01min            ] minimal PRH01                                                         
       Using constant nr 48 with value:  0.00000                                                    
       [NH4crEM01           ] critical NH4 conc. macrophyt emerged 01                               
       using default value:  0.00000                                                                
       [NO3crEM01           ] critical NO3 conc. macrophyt emerged 01                               
       using default value:  0.00000                                                                
       [PO4crEM01           ] critical PO4 conc. macrophyt emerged 01                               
       using default value:  0.00000                                                                
       [CO2crSM01           ] critical CO2 conc. macrophyt submerged 01                             
       Using constant nr 49 with value: 0.100000E-01                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   5                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   7                                                                       
       [LimNutSM01          ] nutrient limitation function SM01 <0-1>                               
       Using output from proces [MACNUTSM01          ]                                              
       [LimRadSM01          ] radiation limitation function SM01 <0-1>                              
       Using output from proces [Rad_SM01            ]                                              
       [MinDLEM01           ] minimal daylength for growth EM01                                     
       using default value:  0.00000                                                                
       [OptDLEM01           ] daylength for growth saturation EM01                                  
       using default value: 0.580000                                                                
       [MinDLSM01           ] minimal daylength for growth EM01                                     
       Using constant nr 50 with value:  0.00000                                                    
       [OptDLSM01           ] daylength for growth saturation EM01                                  
       Using constant nr 51 with value:  0.00000                                                    
       [DayL                ] daylength <0-1>                                                       
       using default value: 0.580000                                                                
       [TcritEM01           ] critical temperature for growth EM01                                  
       using default value:  0.00000                                                                
       [TcPMxEM01           ] temperature coefficient for growth EM01                               
       using default value:  1.06000                                                                
       [TcritSM01           ] critical temperature for growth SM01                                  
       Using constant nr 52 with value:  11.0000                                                    
       [TcPMxSM01           ] temperature coefficient for growth SM01                               
       Using constant nr 53 with value:  1.09000                                                    
       [MnTempSM01          ] depth/biomass-averaged temperature for SM01                           
       Using constant nr 75 with value:  20.0000                                                    
       [K1DecaEM01          ] first order autumn decay rate EM01                                    
       using default value:  0.00000                                                                
       [TcDecaEM01          ] temperature coefficient for decay EM01                                
       using default value:  1.06000                                                                
       [K1DecaSM01          ] first order autumn decay rate SM01                                    
       Using constant nr 54 with value: 0.770000E-01                                                
       [TcDecaSM01          ] temperature coefficient for decay SM01                                
       Using constant nr 55 with value:  1.07000                                                    
       [FrEMtoRH01          ] fraction EM that becomes RH01                                         
       using default value: 0.500000                                                                
       [FrSMtoRH01          ] fraction SM that becomes RH01                                         
       Using constant nr 56 with value:  0.00000                                                    
       [NCRatEM01           ] N:C ratio EM01                                                        
       using default value: 0.200000                                                                
       [PCRatEM01           ] P:C ratio EM01                                                        
       using default value: 0.200000E-01                                                            
       [NCRatSM01           ] N:C ratio SM01                                                        
       Using constant nr 57 with value: 0.205600                                                    
       [PCRatSM01           ] P:C ratio SM01                                                        
       Using constant nr 58 with value: 0.200000E-01                                                
       [NCRatRH01           ] N:C ratio RH01                                                        
       Using constant nr 59 with value: 0.205600                                                    
       [PCRatRH01           ] P:C ratio RH01                                                        
       Using constant nr 60 with value: 0.200000E-01                                                
       [FrPOC1EM01          ] fraction of decay EM01 that becomes POC1                              
       using default value:  1.00000                                                                
       [FrPOC2EM01          ] fraction of decay EM01 that becomes POC2                              
       using default value:  0.00000                                                                
       [FrPOC3EM01          ] fraction of decay EM01 that becomes POC3                              
       using default value:  0.00000                                                                
       [FrPOC1SM01          ] fraction of decay SM01 that becomes POC1                              
       Using constant nr 61 with value: 0.200000                                                    
       [FrPOC2SM01          ] fraction of decay SM01 that becomes POC2                              
       Using constant nr 62 with value: 0.300000                                                    
       [FrPOC3SM01          ] fraction of decay SM01 that becomes POC3                              
       Using constant nr 63 with value: 0.500000                                                    
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [MACNUTSM01          ] Nutrient limitation function for macrophyte SM01                  
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [LocalDepth          ] depth from water surface to bottom of segment                         
       Using output from proces [TotDepth            ]                                              
       [LocSedDept          ] Sediment layer depth to bottom of segment                             
       Using output from proces [TotDepth            ]                                              
       [NH4S12              ] NH4 in S12 pore water                                                 
       using default value: -1.00000                                                                
       [PO4S12              ] PO4 in S12 pore water                                                 
       using default value: -1.00000                                                                
       [IBotSeg             ] Bottom segment number                                                 
       Using output from proces [Coverage            ]                                              
       [FrBmSM01            ] Fraction Biomass Layer macrophyte submerged 01                        
       Using output from proces [MACDIS01            ]                                              
       [RootDeSM01          ] Rooting depth SM01                                                    
       using default value: 0.100000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   5                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [PO4                 ] Ortho-Phosphate (PO4)                                                 
       Using substance nr   7                                                                       
       [DisCO2              ] concentration of dissolved carbon dioxide                             
       Using output from proces [pH_carb             ]                                              
       [DisH2CO3            ] concentration of dissolved true H2CO3                                 
       Using output from proces [SpecCarb            ]                                              
       [DisHCO3             ] concentration of dissolved HCO3(-)                                    
       Using output from proces [pH_carb             ]                                              
       [PrfNH4SM01          ] ammonium preferency over nitrate SM01                                 
       using default value:  1.00000                                                                
       [KMDINSM01W          ] half-saturation value N SM01 in water                                 
       using default value: 0.500000E-02                                                            
       [KMPSM01W            ] half-saturation value P SM01 in water                                 
       using default value: 0.100000E-02                                                            
       [KMCO2SM01           ] half-saturation value CO2 + H2CO3 SM01                                
       using default value: -1.00000                                                                
       [KMHCO3SM01          ] half-saturation value HCO3 SM01                                       
       using default value: -1.00000                                                                
       [KMDINSM01B          ] half-saturation value N SM01 in bottom                                
       using default value: 0.500000E-02                                                            
       [KMPSM01B            ] half-saturation value P SM01 in bottom                                
       using default value: 0.100000E-02                                                            
       [CDINSM01W           ] average water concentration DIN for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CPO4SM01W           ] average water concentration PO4 for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CCO2SM01            ] average concentration CO2+H2CO3 for SM01                              
       Using output from proces [MACNUTSM01          ]                                              
       [CHCO3SM01           ] average concentration HCO3 for SM01                                   
       Using output from proces [MACNUTSM01          ]                                              
       [CDINSM01B           ] average sediment concentration DIN for SM01                           
       Using output from proces [MACNUTSM01          ]                                              
       [CPO4SM01B           ] average sediment concentration PO4 for SM01                           
       Using output from proces [MACNUTSM01          ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
                                                                                                    
 Input for [Rad_SM01            ] Light efficiency function submerged macrophyt 1                   
       [ITopSeg01           ] Tip segment number S01                                                
       Using output from proces [MACDIS01            ]                                              
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using constant nr 72 with value:  50.0000                                                    
       [HactSM01            ] Actual Height SM 01                                                   
       Using output from proces [MACDIS01            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [LocalDepth          ] depth from water surface to bottom of segment                         
       Using output from proces [TotDepth            ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [RadSatSM01          ] total radiation growth saturation SM01                                
       Using constant nr 43 with value:  1.00000                                                    
                                                                                                    
 Input for [NH3free             ] Calculation conc. unionized ammonia                               
       [NH3_sw              ] NH3 calculation method (1=Reprofunc, 2=Millero)                       
       using default value:  2.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   5                                                                       
       [pH                  ] pH                                                                    
       Using output from proces [pH_carb             ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [KNH3rf1a            ] K NH3/NH4 repro-function 1 coeff a                                    
       using default value: -10.0510                                                                
       [KNH3rf1b            ] K NH3/NH4 repro-function 1 coeff b                                    
       using default value: 0.320000E-01                                                            
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [FeIIIpa             ] particulate amorphous oxidizing iron                                  
       using default value:  0.00000                                                                
       [SO4                 ] sulphate (SO4)                                                        
       using default value:  0.00000                                                                
       [f_minPOC1           ] mineralization flux POC1                                              
       Using output from proces [DecFast             ]                                              
       [f_minPOC2           ] mineralization flux POC2                                              
       Using output from proces [DecMedium           ]                                              
       [f_minPOC3           ] mineralization flux POC3                                              
       using default value:  0.00000                                                                
       [f_minPOC4           ] mineralization flux POC4                                              
       using default value:  0.00000                                                                
       [f_minPOC5           ] mineralization flux POC5 submerged                                    
       using default value:  0.00000                                                                
       [f_minDOC            ] mineralization flux DOC                                               
       using default value:  0.00000                                                                
       [KsOxCon             ] half saturation constant for DO limitation                            
       using default value:  2.00000                                                                
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       using default value: 0.500000                                                                
       [KsFeRed             ] half saturation constant for Fe limitation                            
       using default value:  2.00000                                                                
       [KsSuRed             ] half saturation constant for SO4 limitation                           
       using default value:  2.00000                                                                
       [KsOxDenInh          ] half saturation constant for oxygen inhib.                            
       using default value: 0.200000                                                                
       [KsNiIRdInh          ] half sat. const. NO3 inhib. iron reduction                            
       using default value: 0.200000                                                                
       [KsNiSRdInh          ] half sat. const. NO3 inhib. SO4 reduction                             
       using default value: 0.200000                                                                
       [KsSuMetInh          ] half saturation constant for SO4 inhibition                           
       using default value:  1.00000                                                                
       [TcOxCon             ] temperature coeff. for oxygen consumption                             
       using default value:  1.07000                                                                
       [TcDen               ] temperature coefficient for denitrification                           
       using default value:  1.12000                                                                
       [TcIRed              ] temperature coeff. for iron reduction                                 
       using default value:  1.12000                                                                
       [TcSRed              ] temperature coeff. for sulphate reduction                             
       using default value:  1.12000                                                                
       [TcMet               ] temperature coeff. for methanogenesis                                 
       using default value:  1.12000                                                                
       [RedFacDen           ] reduction factor for denitrif. at low temp.                           
       using default value:  1.00000                                                                
       [RedFacIRed          ] reduction factor for iron red. at low temp.                           
       using default value:  1.00000                                                                
       [RedFacSRed          ] reduction factor for sulph. red. at low temp.                         
       using default value:  1.00000                                                                
       [RedFacMet           ] reduction factor for methanog. at low temp.                           
       using default value:  1.00000                                                                
       [CoxDenInh           ] crit. diss. ox. conc. for inhib. denitrif.                            
       using default value:  1.00000                                                                
       [CoxIRedInh          ] crit. diss. ox. conc. for inhib. iron red.                            
       using default value: 0.200000                                                                
       [CoxSRedInh          ] crit. diss. ox. conc. for inhib. sulph. red.                          
       using default value: 0.200000                                                                
       [CoxMetInh           ] crit. diss. ox. conc. for inhib. methanog.                            
       using default value: 0.200000E-01                                                            
       [CniMetInh           ] crit. nitrate conc. for inhib. methanog.                              
       using default value: 0.100000                                                                
       [CTBactAc            ] critical temp. for specific bacterial activity                        
       using default value:  3.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [FrMetGeCH4          ] fraction of methanogenesis towards CH4                                
       using default value: 0.500000                                                                
       [SWOxCon             ] Switch: only OxCon (1) or not (0)                                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [DecMedium           ] Mineralization medium decomp. detritus POC2                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       Using substance nr  11                                                                       
       [PON2                ] PON2 (medium decomposing fraction)                                    
       Using substance nr  13                                                                       
       [POP2                ] POP2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POS2                ] POS2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [IdDet1              ] identifier for detritus group POC1, POC2, POC3                        
       using default value:  1.00000                                                                
       [ku_dMdcC20          ] upper limit mineralization rate medium detr-C                         
       using default value: 0.150000E-01                                                            
       [kl_dMdcC20          ] lower limit mineralization rate medium detr-C                         
       using default value: 0.150000E-01                                                            
       [ku_dMdcN20          ] upper limit mineralization rate medium detr-N                         
       using default value: 0.150000E-01                                                            
       [kl_dMdcN20          ] lower limit mineralization rate medium detr-N                         
       using default value: 0.150000E-01                                                            
       [ku_dMdcP20          ] upper limit mineralization rate medium detr-P                         
       using default value: 0.150000E-01                                                            
       [kl_dMdcP20          ] lower limit mineralization rate medium detr-P                         
       using default value: 0.150000E-01                                                            
       [kT_dec              ] temperature coefficient for decomposition                             
       using default value:  1.04700                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [a_dNpr              ] target N:C ratio in refractory detritus                               
       using default value: 0.500000E-01                                                            
       [a_dPpr              ] target P:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [a_dSpr              ] target S:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [al_dNm              ] lower limit N:C ratio in med. decomp. detr                            
       using default value: 0.600000E-01                                                            
       [al_dPm              ] lower limit P:C ratio in med. decomp. detr                            
       using default value: 0.600000E-02                                                            
       [au_dNm              ] upper limit N:C ratio in med. decomp. detr                            
       using default value: 0.120000                                                                
       [au_dPm              ] upper limit P:C ratio in med. decomp. detr                            
       using default value: 0.120000E-01                                                            
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [b_ni                ] attenuation factor decomp. in denitrifying zone                       
       using default value:  1.00000                                                                
       [b_su                ] attenuation factor decomp. in sulphate red.zone                       
       using default value:  1.00000                                                                
       [b_poc2poc3          ] fraction POC2 converted to POC3                                       
       using default value:  0.00000                                                                
       [b_poc2doc           ] fraction POC2 converted to DOC                                        
       using default value:  0.00000                                                                
       [SWOMDec             ] option: 0.0 for stripping, 1.0 for different rates                    
       using default value:  0.00000                                                                
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  12                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POS1                ] POS1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [IdDet1              ] identifier for detritus group POC1, POC2, POC3                        
       using default value:  1.00000                                                                
       [ku_dFdcC20          ] upper limit mineralization rate fast detr-C                           
       using default value: 0.180000                                                                
       [kl_dFdcC20          ] lower limit mineralization rate fast detr-C                           
       using default value: 0.120000                                                                
       [ku_dFdcN20          ] upper limit mineralization rate fast detr-N                           
       using default value: 0.180000                                                                
       [kl_dFdcN20          ] lower limit mineralization rate fast detr-N                           
       using default value: 0.120000                                                                
       [ku_dFdcP20          ] upper limit mineralization rate fast detr-P                           
       using default value: 0.180000                                                                
       [kl_dFdcP20          ] lower limit mineralization rate fast detr-P                           
       using default value: 0.120000                                                                
       [kT_dec              ] temperature coefficient for decomposition                             
       using default value:  1.04700                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [a_dNpr              ] target N:C ratio in refractory detritus                               
       using default value: 0.500000E-01                                                            
       [a_dPpr              ] target P:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [a_dSpr              ] target S:C ratio in refractory detritus                               
       using default value: 0.500000E-02                                                            
       [al_dNf              ] lower limit N:C ratio in fast decomp.  detr                           
       using default value: 0.100000                                                                
       [al_dPf              ] lower limit P:C ratio in fast decomp.  detr                           
       using default value: 0.100000E-01                                                            
       [au_dNf              ] upper limit N:C ratio in fast decomp.  detr                           
       using default value: 0.150000                                                                
       [au_dPf              ] upper limit P:C ratio in fast decomp.  detr                           
       using default value: 0.150000E-01                                                            
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [b_ni                ] attenuation factor decomp. in denitrifying zone                       
       using default value:  1.00000                                                                
       [b_su                ] attenuation factor decomp. in sulphate red.zone                       
       using default value:  1.00000                                                                
       [b_poc1poc2          ] fraction POC1 converted to POC2                                       
       using default value:  0.00000                                                                
       [b_poc1doc           ] fraction POC1 converted to DOC                                        
       using default value:  0.00000                                                                
       [SWOMDec             ] option: 0.0 for stripping, 1.0 for different rates                    
       using default value:  0.00000                                                                
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [Velocity            ] horizontal flow velocity                                              
       using default value: 0.500000                                                                
       [VWind               ] wind speed                                                            
       using default value:  3.00000                                                                
       [SWRear              ] switch for oxygen reaeration formulation (1-13)                       
       Using constant nr  3 with value:  1.00000                                                    
       [KLRear              ] reaeration transfer coefficient                                       
       Using constant nr  4 with value:  1.00000                                                    
       [TCRear              ] temperature coefficient for rearation                                 
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturOXY            ] saturation concentration                                              
       Using output from proces [SaturOXY            ]                                              
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       Using output from proces [Coverage            ]                                              
       [KLRearMax           ] maximum KLREAR oxygen for temp. correction                            
       using default value:  1000.00                                                                
       [KLRearMin           ] minimum rearation transfer coefficient oxygen                         
       using default value: 0.200000                                                                
       [Rain                ] rainfall rate                                                         
       using default value:  0.00000                                                                
       [coefAOxy            ] gas transfer Oxy coefficient transmission                             
       using default value:  1.66000                                                                
       [coefB1Oxy           ] gas transfer O2 coefficient wind scale 1                              
       using default value: 0.260000                                                                
       [coefB2Oxy           ] gas transfer O2 coefficient wind scale 2                              
       using default value:  1.00000                                                                
       [coefC1Oxy           ] gas transfer O2 coefficient rain scale 1                              
       using default value: 0.660000                                                                
       [coefC2Oxy           ] gas transfer O2 coefficient rain scale 2                              
       using default value:  1.00000                                                                
       [coefD1Oxy           ] fresh water coefficient1 for Schmidt nr Oxy                           
       using default value:  1800.06                                                                
       [coefD2Oxy           ] fresh water coefficient2 for Schmidt nr Oxy                           
       using default value:  120.100                                                                
       [coefD3Oxy           ] fresh water coefficient3 for Schmidt nr Oxy                           
       using default value:  3.78180                                                                
       [coefD4Oxy           ] fresh water coefficient4 for Schmidt nr Oxy                           
       using default value: 0.476080E-01                                                            
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [SWSatOXY            ] switch for oxygen saturation formulation (1, 2)                       
       using default value:  1.00000                                                                
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
       [ZNit                ] zeroth-order nitrification flux                                       
       using default value:  0.00000                                                                
       [NH4                 ] Ammonium (NH4)                                                        
       Using substance nr   5                                                                       
       [RcNit20             ] MM- nitrification rate at 20 oC                                       
       using default value: 0.100000                                                                
       [TcNit               ] temperature coefficient for nitrification                             
       using default value:  1.07000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [KsAmNit             ] half saturation constant for ammonium cons.                           
       using default value: 0.500000                                                                
       [KsOxNit             ] half saturation constant for DO cons.                                 
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [CTNit               ] critical temperature for nitrification                                
       using default value:  3.00000                                                                
       [Rc0NitOx            ] zero-order nitrification rate at neg. DO                              
       using default value:  0.00000                                                                
       [COXNIT              ] critical oxygen concentration for nitrification                       
       using default value:  1.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnNit             ] switch for old (0), new (1), TEWOR (2) version                        
       using default value:  0.00000                                                                
       [RcNit               ] first-order nitrification rate                                        
       using default value: 0.100000                                                                
       [OOXNIT              ] optimum oxygen concentration for nitrification                        
       using default value:  5.00000                                                                
       [CFLNIT              ] oxygen function level for oxygen below COXNIT                         
       using default value:  0.00000                                                                
       [CurvNit             ] curvature of DO function for nitrification                            
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
       [ZDenWat             ] zero-order denitrification rate in water column                       
       using default value:  0.00000                                                                
       [NO3                 ] Nitrate (NO3)                                                         
       Using substance nr   6                                                                       
       [RcDen20             ] MM-denitrification reaction rate at 20 oC                             
       using default value: 0.100000                                                                
       [TcDenWat            ] temperature coefficient for denitrification                           
       using default value:  1.07000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   3                                                                       
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       using default value: 0.500000                                                                
       [KsOxDen             ] half saturation constant for oxygen inhib.                            
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [CTDEN               ] critical temperature for denitrification                              
       using default value:  2.00000                                                                
       [Rc0DenOx            ] zero-order denit. rate at low temperature                             
       using default value:  0.00000                                                                
       [COXDEN              ] critical oxygen concentration for denitrification                     
       using default value:  3.00000                                                                
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnDen             ] switch to select old (0) or new (1) version                           
       using default value:  0.00000                                                                
       [RcDenWat            ] first-order denitrification rate in water column                      
       using default value: 0.100000                                                                
       [OOXDEN              ] optimum oxygen concentration for denitrification                      
       using default value:  1.00000                                                                
       [Curvat              ] curvature of DO function for denitrification                          
       using default value:  1.00000                                                                
                                                                                                    
 Input for [RearCO2             ] Reaeration of carbon dioxide                                      
       [DisCO2              ] concentration of dissolved carbon dioxide                             
       Using output from proces [pH_carb             ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [Velocity            ] horizontal flow velocity                                              
       using default value: 0.500000                                                                
       [VWind               ] wind speed                                                            
       using default value:  3.00000                                                                
       [SWRearCO2           ] switch for CO2 reaeration formulation (11,13)                         
       Using constant nr  7 with value:  0.00000                                                    
       [KLRearCO2           ] CO2 reaeration transfer coefficient                                   
       Using constant nr  8 with value: 0.200000                                                    
       [TCRearCO2           ] temperature coefficient for rearation CO2                             
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturCO2            ] saturation concentration                                              
       Using output from proces [SaturCO2            ]                                              
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       Using output from proces [Coverage            ]                                              
       [KLRMaxCO2           ] maximum KLREAR CO2 for temperature correction                         
       using default value:  1000.00                                                                
       [KLRMinCO2           ] minimum rearation transfer coefficient CO2                            
       using default value: 0.200000                                                                
       [Rain                ] rainfall rate                                                         
       using default value:  0.00000                                                                
       [coefACO2            ] gas transfer CO2 coefficient transmission                             
       using default value:  1.66000                                                                
       [coefB1CO2           ] gas transfer CO2 coefficient wind scale 1                             
       using default value: 0.260000                                                                
       [coefB2CO2           ] gas transfer CO2 coefficient wind scale 2                             
       using default value:  1.00000                                                                
       [coefC1CO2           ] gas transfer CO2 coefficient rain scale 1                             
       using default value: 0.660000                                                                
       [coefC2CO2           ] gas transfer CO2 coefficient rain scale 2                             
       using default value:  1.00000                                                                
       [coefD1CO2           ] fresh water coefficient1 for Schmidt nr CO2                           
       using default value:  1800.06                                                                
       [coefD2CO2           ] fresh water coefficient2 for Schmidt nr CO2                           
       using default value:  120.100                                                                
       [coefD3CO2           ] fresh water coefficient3 for Schmidt nr CO2                           
       using default value:  3.78180                                                                
       [coefD4CO2           ] fresh water coefficient4 for Schmidt nr CO2                           
       using default value: 0.476080E-01                                                            
                                                                                                    
 Input for [SaturCO2            ] Saturation concentration carbon dioxide                           
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [SWSatCO2            ] switch for CO2 saturation formulation (1, 2)                          
       Using constant nr  9 with value:  2.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [PCO2                ] partial atmospheric CO2 pressure                                      
       Using constant nr 10 with value: 0.385000E-03                                                
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
       [ExtVl               ] total extinction coefficient visible light                            
       Using output from proces [Extinc_VLG          ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using constant nr 73 with value:  50.0000                                                    
       [a_enh               ] enhancement factor in radiation calculation                           
       using default value:  1.50000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [SwEmersion          ] switch indicating submersion(0) or emersion(1)                        
       using default value:  0.00000                                                                
       [RadBot              ] irradiation at the segment lower-boundary                             
       Using output from proces [CalcRad             ]                                              
       [fRefl               ] fraction of radiation reflected at water surface                      
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Extinc_VLG          ] Extinction of visible-light (370-680nm) DLWQ-G                    
       [ExtVlIM1            ] VL specific extinction coefficient IM1                                
       using default value: 0.100000E-01                                                            
       [ExtVlIM2            ] VL specific extinction coefficient IM2                                
       using default value: 0.100000E-01                                                            
       [ExtVlIM3            ] VL specific extinction coefficient IM3                                
       using default value: 0.100000E-01                                                            
       [ExtVlPOC1           ] VL specific extinction coefficient POC1                               
       using default value: 0.100000                                                                
       [ExtVlBak            ] background extinction visible light                                   
       using default value: 0.800000E-01                                                            
       [ExtVlPhyt           ] VL extinction by phytoplankton                                        
       using default value:  0.00000                                                                
       [ExtVlMacro          ] VL extinction by macrophytes                                          
       Using output from proces [ExtMacroVl          ]                                              
       [IM1                 ] inorganic matter (IM1)                                                
       using default value:  0.00000                                                                
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       Using substance nr  11                                                                       
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
       using default value:  0.00000                                                                
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [ExtVlDOC            ] VL specific extinction coefficient DOC                                
       using default value:  0.00000                                                                
       [UitZDEPT1           ] Z1 (depth)                                                            
       using default value:  1.20000                                                                
       [UitZDEPT2           ] Z2 (depth)                                                            
       using default value:  1.00000                                                                
       [UitZCORCH           ] CORa correction factor                                                
       using default value:  2.50000                                                                
       [UitZC_DET           ] C3 coeff. absorption ash weight & detritus                            
       using default value: 0.260000E-01                                                            
       [UitZC_GL1           ] C1 coeff. absorption ash weight & detritus                            
       using default value: 0.730000                                                                
       [UitZC_GL2           ] C2 coeff. absorption ash weight & detritus                            
       using default value:  1.00000                                                                
       [UitZHELHM           ] Hel_h constant                                                        
       using default value: 0.140000E-01                                                            
       [UitZTAU             ] Tau constant calculation transparency                                 
       using default value:  7.80000                                                                
       [UitZangle           ] Angle of incidence solar radiation                                    
       using default value:  30.0000                                                                
       [DMCFDetC            ] DM:C ratio DetC                                                       
       using default value:  2.50000                                                                
       [ExtVLSal0           ] extra VL extinction at Salinity = 0                                   
       using default value:  0.00000                                                                
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [SalExt0             ] salinity value for extra extinction = 0                               
       using default value:  34.9200                                                                
       [ExtVlPOC2           ] VL specific extinction coefficient POC2                               
       using default value: 0.100000                                                                
       [ExtVlPOC3           ] VL specific extinction coefficient POC3                               
       using default value: 0.100000                                                                
       [ExtVlPOC4           ] VL specific extinction coefficient POC4                               
       using default value: 0.100000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
                                                                                                    
 Input for [ExtMacroVl          ] Extinction of light by macrophytes                                
       [nMacrophyt          ] number of macrophyte species                                          
       using default value:  5.00000                                                                
       [SW_fixin_n          ] switch possible scaling of input, DO NOT EDIT                         
       using default value:  0.00000                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [ExtVlSM01           ] VL specific extinction coefficient SM01                               
       Using constant nr 42 with value: 0.600000E-02                                                
       [ExtVlSM02           ] VL specific extinction coefficient SM02                               
       using default value: 0.200000                                                                
       [ExtVlSM03           ] VL specific extinction coefficient SM03                               
       using default value: 0.200000                                                                
       [ExtVlSM04           ] VL specific extinction coefficient SM04                               
       using default value: 0.200000                                                                
       [ExtVlSM05           ] VL specific extinction coefficient SM05                               
       using default value: 0.200000                                                                
       [BmLaySM01           ] Biomass Layer macrophyt submerged 01                                  
       Using output from proces [MACDIS01            ]                                              
       [BmLaySM02           ] Biomass Layer macrophyt submerged 02                                  
       using default value:  0.00000                                                                
       [BmLaySM03           ] Biomass Layer macrophyt submerged 03                                  
       using default value:  0.00000                                                                
       [BmLaySM04           ] Biomass Layer macrophyt submerged 04                                  
       using default value:  0.00000                                                                
       [BmLaySM05           ] Biomass Layer macrophyt submerged 05                                  
       using default value:  0.00000                                                                
                                                                                                    
 Input for [SpecCarb            ] Speciation of carbonate in solution                               
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   8                                                                       
       [CO2                 ] CO2                                                                   
       Using output from proces [pH_simp             ]                                              
       [SWTICdummy          ] dummy option for TIC, do not change value                             
       using default value:  0.00000                                                                
       [pH                  ] pH                                                                    
       Using output from proces [pH_carb             ]                                              
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
                                                                                                    
 Input for [pH_simp             ] Simple calculation of pH                                          
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   8                                                                       
       [Alka                ] alkalinity                                                            
       Using substance nr   9                                                                       
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [pH_min              ] minimum allowed calculated pH                                         
       Using constant nr  5 with value:  1.00000                                                    
       [pH_max              ] maximum allowed calculated pH                                         
       Using constant nr  6 with value:  14.0000                                                    
                                                                                                    
 Input for [MACDIS01            ] Submerged Macrophyte 1 Distibution function                       
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [LocalDepth          ] depth from water surface to bottom of segment                         
       Using output from proces [TotDepth            ]                                              
       [SM01                ] macrophyt submerged 01                                                
       Using substance nr  14                                                                       
       [SwDisSM01           ] macrophyt distr. function (1: lin, 2:Exp)                             
       Using constant nr 39 with value:  1.00000                                                    
       [HmaxSM01            ] Max Height SM 01                                                      
       Using constant nr 41 with value:  10.0000                                                    
       [FfacSM01            ] Form factor lin: F = M(mean)/(M/Hmax)                                 
       Using constant nr 40 with value:  1.00000                                                    
       [IBotSeg             ] Bottom segment number                                                 
       Using output from proces [Coverage            ]                                              
       [MaxSM01             ] maximum biomass for macrophyt submerged 01                            
       Using output from proces [MaxMacro            ]                                              
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
       [VertDisper          ] vertical dispersion                                                   
       Using segment function nr  1                                                                 
       [ScaleVdisp          ] scaling factor for vertical diffusion                                 
       Using constant nr 12 with value:  1.00000                                                    
                                                                                                    
 Input for [ResTim              ] Residence time                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [WSNoseg5            ] workspace array no. 5                                                 
       Using output from proces [ResTim              ]                                              
       [Flow                ] flow rate                                                             
       Using DELWAQ flow                                                                            
                                                                                                    
 Input for [Salinchlor          ] Conversion of salinity into chloride or vv                        
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [Cl                  ] Chloride                                                              
       Using output from proces [Salinchlor          ]                                              
       [GtCl                ] Salinity:Chloride ratio in sea water                                  
       using default value:  1.80500                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [Sal0                ] salinity at zero chloride concentration                               
       using default value: 0.300000E-01                                                            
       [SWSalCl             ] option: 0.0 salinity simulated, 1.0 Cl simultated                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Coverage            ] coverage by macrophytes                                           
       [nMacrophyt          ] number of macrophyte species                                          
       using default value:  5.00000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [EM01                ] macrophyt emerged 01                                                  
       using default value:  0.00000                                                                
       [PotEM01             ] potential biomass for EM01                                            
       using default value:  0.00000                                                                
       [EM02                ] macrophyt emerged 02                                                  
       using default value:  0.00000                                                                
       [PotEM02             ] potential biomass for EM02                                            
       using default value:  0.00000                                                                
       [EM03                ] macrophyt emerged 03                                                  
       using default value:  0.00000                                                                
       [PotEM03             ] potential biomass for EM03                                            
       using default value:  0.00000                                                                
       [EM04                ] macrophyt emerged 04                                                  
       using default value:  0.00000                                                                
       [PotEM04             ] potential biomass for EM04                                            
       using default value:  0.00000                                                                
       [EM05                ] macrophyt emerged 05                                                  
       using default value:  0.00000                                                                
       [PotEM05             ] potential biomass for EM05                                            
       using default value:  0.00000                                                                
       [IBotSeg             ] Bottom segment number                                                 
       Using output from proces [Coverage            ]                                              
       [RadMacrop           ] irradiation at the top of EM                                          
       Using constant nr 74 with value:  50.0000                                                    
                                                                                                    
 Input for [MaxMacro            ] maximum biomass macrophytes                                       
       [nMacrophyt          ] number of macrophyte species                                          
       using default value:  5.00000                                                                
       [HSIEM01             ] Habitat Suitability Index for EM01                                    
       using default value:  0.00000                                                                
       [PotEM01             ] potential biomass for EM01                                            
       using default value:  0.00000                                                                
       [HSISM01             ] Habitat Suitability Index for SM01                                    
       Using constant nr 37 with value:  1.00000                                                    
       [PotSM01             ] potential biomass for SM01                                            
       Using constant nr 38 with value:  400.000                                                    
       [HSIEM02             ] Habitat Suitability Index for EM02                                    
       using default value:  0.00000                                                                
       [PotEM02             ] potential biomass for EM02                                            
       using default value:  0.00000                                                                
       [HSISM02             ] Habitat Suitability Index for SM02                                    
       using default value:  0.00000                                                                
       [PotSM02             ] potential biomass for SM02                                            
       using default value:  0.00000                                                                
       [HSIEM03             ] Habitat Suitability Index for EM03                                    
       using default value:  0.00000                                                                
       [PotEM03             ] potential biomass for EM03                                            
       using default value:  0.00000                                                                
       [HSISM03             ] Habitat Suitability Index for SM03                                    
       using default value:  0.00000                                                                
       [PotSM03             ] potential biomass for SM03                                            
       using default value:  0.00000                                                                
       [HSIEM04             ] Habitat Suitability Index for EM04                                    
       using default value:  0.00000                                                                
       [PotEM04             ] potential biomass for EM04                                            
       using default value:  0.00000                                                                
       [HSISM04             ] Habitat Suitability Index for SM04                                    
       using default value:  0.00000                                                                
       [PotSM04             ] potential biomass for SM04                                            
       using default value:  0.00000                                                                
       [HSIEM05             ] Habitat Suitability Index for EM05                                    
       using default value:  0.00000                                                                
       [PotEM05             ] potential biomass for EM05                                            
       using default value:  0.00000                                                                
       [HSISM05             ] Habitat Suitability Index for SM05                                    
       using default value:  0.00000                                                                
       [PotSM05             ] potential biomass for SM05                                            
       using default value:  0.00000                                                                
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
                                                                                                    
 Input for [pH_carb             ] Integrated calculation of pH, carbonate system                    
       [Salinity            ] Salinity                                                              
       Using substance nr   4                                                                       
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   8                                                                       
       [Alka                ] alkalinity                                                            
       Using substance nr   9                                                                       
       [Temp                ] ambient water temperature                                             
       Using constant nr  2 with value:  20.0000                                                    
       [pH_min              ] minimum allowed calculated pH                                         
       Using constant nr  5 with value:  1.00000                                                    
       [pH_max              ] maximum allowed calculated pH                                         
       Using constant nr  6 with value:  14.0000                                                    
                                                                                                    
# determining the use of the delwaq input                                       
                                                                                
 info: constant [Nothreads ] is not used by the proces system                   
 info: constant [CLOSE_ERR ] is not used by the proces system                   
 info: constant [MaxIter   ] is not used by the proces system                   
 info: constant [Tolerance ] is not used by the proces system                   
 info: constant [Iteration ] is not used by the proces system                   
 info: parameter [bottomdept] is not used by the proces system                  
                                                                                
# locating requested output from active processes                                                   
                                                                                                    
 output [HactSM01            ] from proces [MACDIS01  ]                                             
 output [ExtVLMacro          ] from proces [ExtMacroVl]                                             
 output [LCO2SM01            ] from proces [MACNUTSM01]                                             
 output [LimNSM01W           ] from proces [MACNUTSM01]                                             
 output [LimPSM01W           ] from proces [MACNUTSM01]                                             
 output [SM01M2              ] from proces [MacroPhyt1]                                             
 output [LimCO2SM01          ] from proces [MacroPhyt1]                                             
 output [LimDLSM01           ] from proces [MacroPhyt1]                                             
 output [LimTSM01            ] from proces [MacroPhyt1]                                             
 output [RCREAR              ] from proces [RearOXY   ]                                             
 output [SatPercOXY          ] from proces [RearOXY   ]                                             
 output [pH                  ] from proces [pH_simp   ]                                             
 output [DayL                ] default from [MacroPhyt1          ]                                  
 warning: output [OXYMIN              ] not located                                                 
 output [f_minPOC1           ] from proces [DecFast   ]                                             
 output [f_minPOC2           ] from proces [DecMedium ]                                             
 output [f_minPOC3           ] default from [CONSELAC            ]                                  
 output [f_minDOC            ] default from [CONSELAC            ]                                  
 warning: output [SS                  ] not located                                                 
 output [DisCO2              ] from proces [SpecCarb  ]                                             
 output [pCO2water           ] from proces [pH_carb   ]                                             
 output [DisHCO3             ] from proces [SpecCarb  ]                                             
 output [CO2                 ] from proces [pH_simp   ]                                             
 output [RCREARCO2           ] from proces [RearCO2   ]                                             
 output [SatPercCO2          ] from proces [RearCO2   ]                                             
 warning: output [VSedPOC1            ] not located                                                 
 warning: output [fSedPOC1            ] not located                                                 
 output [ExtVl               ] from proces [Extinc_VLG]                                             
 warning: output [SecchiDept          ] not located                                                 
 output [RadBot              ] from proces [CalcRad   ]                                             
 output [LocalDepth          ] from proces [TotDepth  ]                                             
 output [TotalDepth          ] from proces [TotDepth  ]                                             
 output [Depth               ] from proces [DynDepth  ]                                             
 output [FrBmSM01            ] from proces [MACDIS01  ]                                             
                                                                                                    
