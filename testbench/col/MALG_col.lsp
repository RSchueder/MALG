 Deltares, DELWAQ Version 5.08.00.63110M, Feb 07 2019, 08:35:20
 Execution start: 2019/03/19 19:48:21 
                                                                                
 found -p command line switch                                                   

 Info: This processes definition file does not contain standard names and units for NetCDF files.

 
 Using process definition file : ..\..\code\tables\proc_def
 Version number                :       5.08
 Serial                        : 2019020601
 


 Model :                                                    
                                                            


 Run   :                                                    
                    T0: 2019.01.01 00:00:00  (scu=       1s)


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
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
   Process is activated                                                                             
                                                                                                    
 Input for [pH_simp             ] Simple calculation of pH                                          
   Process is activated                                                                             
                                                                                                    
 Input for [SpecCarb            ] Speciation of carbonate in solution                               
   Process is activated                                                                             
                                                                                                    
 Input for [SaturCO2            ] Saturation concentration carbon dioxide                           
   Process is activated                                                                             
                                                                                                    
 Input for [RearCO2             ] Reaeration of carbon dioxide                                      
   Process is activated                                                                             
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
   Process is activated                                                                             
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
   Process is activated                                                                             
                                                                                                    
 Input for [DaylP               ] ent, previous, and max daylength                                  
   Process is activated                                                                             
                                                                                                    
 Input for [MALDIS              ] Distribution of macroalgae mass in water column                   
   Process is activated                                                                             
                                                                                                    
 Input for [FlMALS              ] Flux calculation for Macroalgae Structural Mass                   
   Process is activated                                                                             
                                                                                                    
 Input for [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                        
   Process is activated                                                                             
                                                                                                    
 Input for [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)                
   Process is activated                                                                             
                                                                                                    
 Input for [HRVMAL              ] Harvesting of Macroalgae                                          
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
                                                                                                    
-fluxes for [OXY                 ]                                                                  
 found flux  [dREAROXY            ] reaeration flux of dissolved oxygen                             
   from proces [RearOXY             ] Reaeration of oxygen                                          
   process is switched on.                                                                          
 found flux  [dCnOXYM             ] oxygen consumption MALS                                         
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dUpNO3M             ] NO3 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
 found flux  [dPrOXYM             ] OXY production by MALS                                          
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
-dispersion for [OXY                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [OXY                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NH4                 ]                                                                  
 found flux  [dUpNH4M             ] NH4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [NH4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NH4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NO3                 ]                                                                  
 found flux  [dUpNO3M             ] NO3 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [NO3                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NO3                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PO4                 ]                                                                  
 found flux  [dUpPO4M             ] PO4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
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
 found flux  [dMALTIC             ] TIC uptake by MALS                                              
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
-dispersion for [TIC                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [TIC                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [ALKA                ]                                                                  
 found flux  [dUpNO3M             ] NO3 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
 found flux  [dUpNH4M             ] NH4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
 found flux  [dUpPO4M             ] PO4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [ALKA                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [ALKA                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC1                ]                                                                  
 found flux  [dPrPOC1M            ] POC1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POC1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC2                ]                                                                  
 found flux  [dPrPOC2M            ] POC2 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POC2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON1                ]                                                                  
 found flux  [dPrPON1M            ] PON1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [PON1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON2                ]                                                                  
 found flux  [dPrPON2M            ] PON2 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [PON2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POP1                ]                                                                  
 found flux  [dPrPOP1M            ] POP1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POP1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POP1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POP2                ]                                                                  
 found flux  [dPrPOP2M            ] POP2 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POP2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POP2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DOC                 ]                                                                  
 found flux  [dMALDOC             ] DOC production by MALS                                          
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
-dispersion for [DOC                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [DOC                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALS                ]                                                                  
 found flux  [dGrMALS             ] Growth of MALS on storage                                       
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dCanMALS            ] cannibalization of structural mass in respiration               
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
 found flux  [dHrvMALS            ] harvesting flux MALS                                            
   from proces [HRVMAL              ] Harvesting of Macroalgae                                      
   process is switched on.                                                                          
-dispersion for [MALS                ]                                                              
 no dispersions found                                                                               
-velocity for [MALS                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALN                ]                                                                  
 found flux  [dGrMALN             ] Utilization of MALN in growth                                   
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dStrMALN            ] storage of nitrogen by macroalgae                               
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
 found flux  [dHrvMALN            ] harvesting flux MALN                                            
   from proces [HRVMAL              ] Harvesting of Macroalgae                                      
   process is switched on.                                                                          
-dispersion for [MALN                ]                                                              
 no dispersions found                                                                               
-velocity for [MALN                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALP                ]                                                                  
 found flux  [dGrMALP             ] Utilization of MALP in growth                                   
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dStrMALN            ] storage of nitrogen by macroalgae                               
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
 found flux  [dHrvMALP            ] harvesting flux MALP                                            
   from proces [HRVMAL              ] Harvesting of Macroalgae                                      
   process is switched on.                                                                          
-dispersion for [MALP                ]                                                              
 no dispersions found                                                                               
-velocity for [MALP                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALC                ]                                                                  
 found flux  [dGrMALC             ] Utilization of MALC in growth                                   
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dStrMALC            ] storage of carbon by macroalgae                                 
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
 found flux  [dHrvMALC            ] harvesting flux MALC                                            
   from proces [HRVMAL              ] Harvesting of Macroalgae                                      
   process is switched on.                                                                          
-dispersion for [MALC                ]                                                              
 no dispersions found                                                                               
-velocity for [MALC                ]                                                                
 no velocity found                                                                                  
                                                                                                    
# locating processes for requested output                                                           
                                                                                                    
# determining the input for the processes (in reversed order)                                       
                                                                                                    
 Input for [HRVMAL              ] Harvesting of Macroalgae                                          
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  15                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  16                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  17                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  18                                                                       
       [K0HrvMALS           ] zero order harvesting rate Macroalgae                                 
       Using constant nr 30 with value:  0.00000                                                    
       [K1HrvMALS           ] first order harvesting rate Macroalgae                                
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)                
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  15                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  18                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [CDRatMALS           ] C to dry mass ratio in MALS                                           
       using default value: 0.200000                                                                
       [ArDenMALS           ] grams/m2 surface area of frond                                        
       using default value:  60.0000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [R1                  ] Reference respiration rate at T1                                      
       using default value: 0.278500E-03                                                            
       [R2                  ] Reference respiration rate at T2                                      
       using default value: 0.542900E-03                                                            
       [Tr1                 ] reference temperature 1 for respiration                               
       using default value:  285.000                                                                
       [Tr2                 ] reference temperature 2 for respiration                               
       using default value:  290.000                                                                
       [P1                  ] Reference photosynthetic rate at T1                                   
       using default value: 0.122000E-02                                                            
       [P2                  ] Reference photosynthetic rate at T2                                   
       using default value: 0.144000E-02                                                            
       [Tp1                 ] temp for reference photosynthetic rate 1                              
       using default value:  283.000                                                                
       [Tp2                 ] temp for reference photosynthetic rate 2                              
       using default value:  288.000                                                                
       [Tap                 ] Arrhenius temperature for photosynthesis                              
       using default value:  1694.00                                                                
       [Taph                ] Arrhenius temp for photosynthesis high end                            
       using default value:  25924.0                                                                
       [Tapl                ] Arrhenius temp for photosynthesis low end                             
       using default value:  27774.0                                                                
       [Tar                 ] Arrhenius temp for respiration                                        
       using default value:  11033.0                                                                
       [RadSurf             ] irradiation at the water surface                                      
       Using function nr  3                                                                         
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr 25 with value: 0.100000E-05                                                
       [alpha               ] salpha for density distribution Rayleigh                              
       using default value: 0.375000E-04                                                            
       [Isat                ] light intensity where photosynthesis is max                           
       using default value:  44.0000                                                                
       [exuMALC             ] exudation parameter                                                   
       using default value: 0.500000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using output from proces [MALDIS              ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [LocalDepth          ] depth from water surface to bottom of segment                         
       Using output from proces [TotDepth            ]                                              
                                                                                                    
 Input for [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                        
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  15                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  16                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  17                                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   4                                                                       
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   3                                                                       
       [PO4                 ] external P concentration                                              
       Using substance nr   5                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [ArDenMAL            ] grams/m2 surface area of frond                                        
       using default value:  60.0000                                                                
       [MALNmin             ] minimum N in storage                                                  
       using default value: 0.100000E-01                                                            
       [MALNmax             ] maximum N in MALN                                                     
       using default value: 0.220000E-01                                                            
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALPmax             ] maximum P in MALP                                                     
       using default value: 0.220000E-02                                                            
       [CDRatMALS           ] C to dry mass ratio in MALS                                           
       using default value: 0.200000                                                                
       [NCRatMALS           ] N:C ratio in MALS                                                     
       using default value: 0.500000E-01                                                            
       [PCRatMALS           ] P:C ratio in MALS                                                     
       using default value: 0.500000E-02                                                            
       [Ksn                 ] half saturation MALN N uptake                                         
       using default value: 0.560000E-01                                                            
       [Ksp                 ] half saturation MALN P uptake                                         
       using default value: 0.123000                                                                
       [JNmax               ] maximum MALN N uptake rate                                            
       using default value: 0.336000                                                                
       [JPmax               ] maximum MALP P uptake rate                                            
       using default value: 0.743280                                                                
       [Vel                 ] velocity                                                              
       Using constant nr 24 with value: 0.600000E-01                                                
       [Vel65               ] current speed at which J = 0.65Jmax                                   
       using default value: 0.300000E-01                                                            
       [MBotSeg             ] bottom segment for this segment                                       
       Using output from proces [MALDIS              ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [FlMALS              ] Flux calculation for Macroalgae Structural Mass                   
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  15                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  16                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  17                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  18                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALNmin             ] minimum N in storage                                                  
       using default value: 0.100000E-01                                                            
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr 23 with value:  52.0000                                                    
       [daylend             ] daylength default definition                                          
       Using output from proces [DaylP               ]                                              
       [daylenp             ] daylength of previous day                                             
       Using output from proces [DaylP               ]                                              
       [daylenm             ] maximum daylength at this latitude                                    
       Using output from proces [DaylP               ]                                              
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [m1                  ] growth rate parameter 1                                               
       using default value: 0.108500                                                                
       [m2                  ] growth rate parameter 2                                               
       using default value: 0.300000E-01                                                            
       [LengthMAL           ] length of frond in this column                                        
       Using output from proces [MALDIS              ]                                              
       [AreaMAL             ] area of frond in this column                                          
       Using output from proces [MALDIS              ]                                              
       [MALS0               ] growth rate parameter 3                                               
       Using constant nr 27 with value: 0.220000                                                    
       [a1                  ] photoperiod parameter 1                                               
       using default value: 0.850000                                                                
       [a2                  ] photoperiod parameter 2                                               
       using default value: 0.300000                                                                
       [mrtMAL              ] epsilon erosion/mortality parameter macro                             
       using default value: 0.220000                                                                
       [CDRatMAL            ] C:DM ratio in MALS                                                    
       using default value: 0.200000                                                                
       [NCRatMAL            ] N:C ratio in MALS                                                     
       using default value: 0.500000E-01                                                            
       [PCRatMAL            ] P:C ratio in MALS                                                     
       using default value: 0.500000E-02                                                            
       [FrPO1MAL            ] fraction of MALS that goes to POC1 in decay                           
       using default value: 0.750000                                                                
       [FrPO2MAL            ] fraction of MALS that goes to POC2 in decay                           
       using default value: 0.250000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using output from proces [MALDIS              ]                                              
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [MALDIS              ] Distribution of macroalgae mass in water column                   
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [LocalDepth          ] depth from water surface to bottom of segment                         
       Using output from proces [TotDepth            ]                                              
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  15                                                                       
       [FootDepth           ] location of frond attachment in the water columns                     
       Using constant nr 33 with value:  2.00000                                                    
       [LmaxMAL             ] Maximum length MALG                                                   
       Using constant nr 31 with value:  2.00000                                                    
       [SWGroDir            ] grow direction MALG(1 = up, -1 = down )                               
       Using constant nr 32 with value: -1.00000                                                    
       [LinDenMAL           ] linear density of macroalgae                                          
       Using constant nr 26 with value:  10.0000                                                    
       [ArDenMAL            ] grams/m2 surface area of frond                                        
       using default value:  60.0000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using output from proces [MALDIS              ]                                              
                                                                                                    
 Input for [DaylP               ] ent, previous, and max daylength                                  
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr 23 with value:  52.0000                                                    
       [RefDay              ] daynumber of reference day simulation                                 
       using default value:  0.00000                                                                
       [AuxSys              ] ratio between days and system clock                                   
       using default value:  86400.0                                                                
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Velocity            ] horizontal flow velocity                                              
       using default value: 0.500000                                                                
       [VWind               ] wind speed                                                            
       Using function nr  2                                                                         
       [SWRear              ] switch for oxygen reaeration formulation (1-13)                       
       Using constant nr 28 with value:  10.0000                                                    
       [KLRear              ] reaeration transfer coefficient                                       
       using default value:  1.00000                                                                
       [TCRear              ] temperature coefficient for rearation                                 
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturOXY            ] saturation concentration                                              
       Using output from proces [SaturOXY            ]                                              
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       using default value:  0.00000                                                                
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
       using default value:  20000.0                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [SWSatOXY            ] switch for oxygen saturation formulation (1, 2)                       
       using default value:  1.00000                                                                
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
                                                                                                    
 Input for [RearCO2             ] Reaeration of carbon dioxide                                      
       [DisCO2              ] concentration of dissolved carbon dioxide                             
       Using output from proces [pH_carb             ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Velocity            ] horizontal flow velocity                                              
       using default value: 0.500000                                                                
       [VWind               ] wind speed                                                            
       Using function nr  2                                                                         
       [SWRearCO2           ] switch for CO2 reaeration formulation (11,13)                         
       Using constant nr 29 with value:  11.0000                                                    
       [KLRearCO2           ] CO2 reaeration transfer coefficient                                   
       using default value:  1.00000                                                                
       [TCRearCO2           ] temperature coefficient for rearation CO2                             
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturCO2            ] saturation concentration                                              
       Using output from proces [SaturCO2            ]                                              
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [fcover              ] fraction of water surface covered <0-1>                               
       using default value:  0.00000                                                                
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
       using default value:  20000.0                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [SWSatCO2            ] switch for CO2 saturation formulation (1, 2)                          
       using default value:  1.00000                                                                
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
       [PCO2                ] partial atmospheric CO2 pressure                                      
       using default value: 0.316000E-03                                                            
                                                                                                    
 Input for [SpecCarb            ] Speciation of carbonate in solution                               
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   6                                                                       
       [CO2                 ] CO2                                                                   
       Using output from proces [pH_simp             ]                                              
       [SWTICdummy          ] dummy option for TIC, do not change value                             
       using default value:  0.00000                                                                
       [pH                  ] pH                                                                    
       Using output from proces [pH_carb             ]                                              
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
                                                                                                    
 Input for [pH_simp             ] Simple calculation of pH                                          
       [Salinity            ] Salinity                                                              
       using default value:  35.0000                                                                
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   6                                                                       
       [Alka                ] alkalinity                                                            
       Using substance nr   7                                                                       
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [pH_min              ] minimum allowed calculated pH                                         
       using default value:  1.00000                                                                
       [pH_max              ] maximum allowed calculated pH                                         
       using default value:  14.0000                                                                
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
       [VertDisper          ] vertical dispersion                                                   
       Using segment function nr  1                                                                 
       [ScaleVdisp          ] scaling factor for vertical diffusion                                 
       Using constant nr 18 with value:  1.00000                                                    
                                                                                                    
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
       using default value:  35.0000                                                                
       [TIC                 ] total inorganic carbonate                                             
       Using substance nr   6                                                                       
       [Alka                ] alkalinity                                                            
       Using substance nr   7                                                                       
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [pH_min              ] minimum allowed calculated pH                                         
       using default value:  1.00000                                                                
       [pH_max              ] maximum allowed calculated pH                                         
       using default value:  14.0000                                                                
                                                                                                    
# determining the use of the delwaq input                                       
                                                                                
 info: constant [CLOSE_ERR ] is not used by the proces system                   
 info: constant [MaxIter   ] is not used by the proces system                   
 info: constant [Tolerance ] is not used by the proces system                   
 info: constant [Iteration ] is not used by the proces system                   
 info: parameter [bottomdept] is not used by the proces system                  
                                                                                
# locating requested output from active processes                                                   
                                                                                                    
 output [LocalDepth          ] from proces [TotDepth  ]                                             
 output [TotalDepth          ] from proces [TotDepth  ]                                             
 output [Depth               ] from proces [DynDepth  ]                                             
 output [Itip                ] from proces [FlMALC    ]                                             
 output [Itipu               ] from proces [FlMALC    ]                                             
 output [BrochP              ] from proces [FlMALC    ]                                             
 output [pH                  ] from proces [pH_simp   ]                                             
 output [DisCO2              ] from proces [SpecCarb  ]                                             
 output [pCO2water           ] from proces [pH_carb   ]                                             
 output [DisHCO3             ] from proces [SpecCarb  ]                                             
 output [CO2                 ] from proces [pH_simp   ]                                             
 output [daylend             ] from proces [DaylP     ]                                             
 output [daylenp             ] from proces [DaylP     ]                                             
 output [daylenm             ] from proces [DaylP     ]                                             
 output [MALNDM              ] from proces [FlMALS    ]                                             
 output [MALPDM              ] from proces [FlMALS    ]                                             
 output [MALCDM              ] from proces [FlMALS    ]                                             
 output [MALSNC              ] from proces [FlMALS    ]                                             
 output [MALSPC              ] from proces [FlMALS    ]                                             
 output [MALSCD              ] from proces [FlMALS    ]                                             
 output [MALSND              ] from proces [FlMALS    ]                                             
 output [MALSPD              ] from proces [FlMALS    ]                                             
 output [LimDenS             ] from proces [FlMALS    ]                                             
 output [LimPhoS             ] from proces [FlMALS    ]                                             
 output [LimTemS             ] from proces [FlMALS    ]                                             
 output [LimN                ] from proces [FlMALN    ]                                             
 output [LimP                ] from proces [FlMALN    ]                                             
 output [LimNutS             ] from proces [FlMALS    ]                                             
 output [LimMALN             ] from proces [FlMALS    ]                                             
 output [LimMALP             ] from proces [FlMALS    ]                                             
 output [LimMALC             ] from proces [FlMALS    ]                                             
 output [LocGroPS            ] from proces [FlMALS    ]                                             
 output [LocNetPS            ] from proces [FlMALS    ]                                             
 output [LocDecS             ] from proces [FlMALS    ]                                             
 output [LocGroN             ] from proces [FlMALS    ]                                             
 output [LocGroP             ] from proces [FlMALS    ]                                             
 output [LocGroC             ] from proces [FlMALS    ]                                             
 output [GrosMALC            ] from proces [FlMALC    ]                                             
 output [RespMALC            ] from proces [FlMALC    ]                                             
 output [ExudMALC            ] from proces [FlMALC    ]                                             
 output [FrBmMALS            ] from proces [MALDIS    ]                                             
 output [BmLayMAL            ] from proces [MALDIS    ]                                             
 warning: output [HactMAL             ] not located                                                 
 warning: output [AactMAL             ] not located                                                 
 output [LimVel              ] from proces [FlMALN    ]                                             
 output [LocUpN              ] from proces [FlMALN    ]                                             
 output [LocUpP              ] from proces [FlMALN    ]                                             
 output [LocUpC              ] from proces [FlMALC    ]                                             
 output [MBotSeg             ] from proces [MALDIS    ]                                             
                                                                                                    
