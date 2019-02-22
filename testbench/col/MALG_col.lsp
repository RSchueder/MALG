 Deltares, DELWAQ Version 5.08.00.63110M, Feb 07 2019, 08:35:20
 Execution start: 2019/02/22 14:33:58 
                                                                                
 found -p command line switch                                                   

 Info: This processes definition file does not contain standard names and units for NetCDF files.

 
 Using process definition file : ../../code/tables/proc_def
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
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
   Process is activated                                                                             
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
   Process is activated                                                                             
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
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
                                                                                                    
 Input for [MalGro              ] Growth of macroalgae                                              
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
 found flux  [dCnOXYM             ] oxygen production MALS                                          
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
 found flux  [dPrMALOXY           ] OXY production by MALS                                          
   from proces [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)            
   process is switched on.                                                                          
-dispersion for [OXY                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [OXY                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NH4                 ]                                                                  
 found flux  [dUpMALNH4           ] NH4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [NH4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NH4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NO3                 ]                                                                  
 found flux  [dUpMALNO3           ] NO3 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [NO3                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [NO3                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PO4                 ]                                                                  
 found flux  [dUpMALPO4           ] PO4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [PO4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PO4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [TIC                 ]                                                                  
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
 no fluxes found                                                                                    
-dispersion for [ALKA                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [ALKA                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC1                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [POC1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POC2                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [POC2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON1                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [PON1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [PON2                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [PON2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POP1                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [POP1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POP1                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [POP2                ]                                                                  
 no fluxes found                                                                                    
-dispersion for [POP2                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POP2                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALS                ]                                                                  
 found flux  [dGrMALS             ] growth of structural mass                                       
   from proces [MalGro              ] Growth of macroalgae                                          
   process is switched on.                                                                          
-dispersion for [MALS                ]                                                              
 no dispersions found                                                                               
-velocity for [MALS                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALN                ]                                                                  
 found flux  [dGrMALN             ] growth of nitrogen storage                                      
   from proces [MalGro              ] Growth of macroalgae                                          
   process is switched on.                                                                          
-dispersion for [MALN                ]                                                              
 no dispersions found                                                                               
-velocity for [MALN                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALP                ]                                                                  
 found flux  [dGrMALP             ] growth of phosphorous storage                                   
   from proces [MalGro              ] Growth of macroalgae                                          
   process is switched on.                                                                          
-dispersion for [MALP                ]                                                              
 no dispersions found                                                                               
-velocity for [MALP                ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [MALC                ]                                                                  
 found flux  [dGrMALC             ] growth of carbon storage                                        
   from proces [MalGro              ] Growth of macroalgae                                          
   process is switched on.                                                                          
-dispersion for [MALC                ]                                                              
 no dispersions found                                                                               
-velocity for [MALC                ]                                                                
 no velocity found                                                                                  
                                                                                                    
# locating processes for requested output                                                           
                                                                                                    
# determining the input for the processes (in reversed order)                                       
                                                                                                    
 Input for [MalGro              ] Growth of macroalgae                                              
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  14                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  15                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  16                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  17                                                                       
       [MBotSeg             ] bottom segment for this segment                                       
       Using constant nr 21 with value:  10.0000                                                    
       [LocGroS             ] local growth of MALS                                                  
       Using output from proces [FlMALS              ]                                              
       [LocGroN             ] local growth of MALN                                                  
       Using output from proces [FlMALS              ]                                              
       [LocGroP             ] local growth of MALP                                                  
       Using output from proces [FlMALS              ]                                              
       [LocGroC             ] local growth of MALC                                                  
       Using output from proces [FlMALS              ]                                              
                                                                                                    
 Input for [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)                
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  14                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  17                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [CDRatMALS           ] C to dry mass ratio in MALS                                           
       using default value: 0.200000                                                                
       [ArDenMALS           ] grams/m2 surface area of frond                                        
       using default value:  60.0000                                                                
       [Temp                ] ambient water temperature                                             
       Using constant nr 20 with value:  20.0000                                                    
       [R1                  ] Reference respiration rate at T1                                      
       using default value: 0.668000                                                                
       [R2                  ] Reference respiration rate at T2                                      
       using default value:  1.30300                                                                
       [Tr1                 ] reference temperature 1 for respiration                               
       using default value:  285.000                                                                
       [Tr2                 ] reference temperature 2 for respiration                               
       using default value:  290.000                                                                
       [P1                  ] Reference photosynthetic rate at T1                                   
       using default value:  2.92800                                                                
       [P2                  ] Reference photosynthetic rate at T2                                   
       using default value:  3.45600                                                                
       [Tp1                 ] temp for reference photosynthetic rate 1                              
       using default value:  283.000                                                                
       [Tp2                 ] temp for reference photosynthetic rate 2                              
       using default value:  288.000                                                                
       [Tap                 ] Arrhenius temperature for photosynthesis                              
       using default value:  1421.40                                                                
       [Taph                ] Arrhenius temp for photosynthesis high end                            
       using default value:  25924.0                                                                
       [Tapl                ] Arrhenius temp for photosynthesis low end                             
       using default value:  27774.0                                                                
       [Tar                 ] Arrhenius temp for respiration                                        
       using default value:  11033.0                                                                
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using constant nr 19 with value:  50.0000                                                    
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr 18 with value:  893.083                                                    
       [alpha               ] salpha for density distribution Rayleigh                              
       using default value: 0.900000E-01                                                            
       [Isat                ] light intensity where photosynthesis is max                           
       using default value:  44.0000                                                                
       [exuMALC             ] exudation parameter                                                   
       using default value: 0.500000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using constant nr 21 with value:  10.0000                                                    
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
       Using substance nr  14                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  15                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  16                                                                       
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
       using default value: 0.100000                                                                
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALPmax             ] maximum P in MALP                                                     
       using default value: 0.100000E-01                                                            
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
       Using constant nr 17 with value: 0.750000E-01                                                
       [Vel65               ] current speed at which J = 0.65Jmax                                   
       using default value: 0.300000E-01                                                            
       [MBotSeg             ] bottom segment for this segment                                       
       Using constant nr 21 with value:  10.0000                                                    
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [FlMALS              ] Flux calculation for Macroalgae Structural Mass                   
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  14                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  15                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  16                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  17                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALNmin             ] minimum N in storage                                                  
       using default value: 0.100000E-01                                                            
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr 16 with value:  52.0000                                                    
       [daylend             ] daylength default definition                                          
       Using output from proces [DaylP               ]                                              
       [daylenp             ] daylength of previous day                                             
       Using output from proces [DaylP               ]                                              
       [daylenm             ] maximum daylength at this latitude                                    
       Using output from proces [DaylP               ]                                              
       [Temp                ] ambient water temperature                                             
       Using constant nr 20 with value:  20.0000                                                    
       [m1                  ] growth rate parameter 1                                               
       using default value: 0.109000                                                                
       [m2                  ] growth rate parameter 2                                               
       using default value: 0.300000E-01                                                            
       [HactMAL             ] length of frond in this column                                        
       Using output from proces [MALDIS              ]                                              
       [AactMAL             ] area of frond in this column                                          
       Using output from proces [MALDIS              ]                                              
       [MALS0               ] growth rate parameter 3                                               
       using default value: 0.600000E-01                                                            
       [a1                  ] photoperiod parameter 1                                               
       using default value: 0.850000                                                                
       [a2                  ] photoperiod parameter 2                                               
       using default value: 0.300000                                                                
       [mrtMAL              ] epsilon erosion/mortality parameter macro                             
       using default value:  22.0000                                                                
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
       Using constant nr 21 with value:  10.0000                                                    
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
       Using substance nr  14                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  15                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  16                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  17                                                                       
       [HmaxMAL             ] Maximum height MALG                                                   
       using default value:  10.0000                                                                
       [LinDenMAL           ] linear density of macroalgae                                          
       using default value:  300.000                                                                
       [ArDenMAL            ] grams/m2 surface area of frond                                        
       using default value:  60.0000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using constant nr 21 with value:  10.0000                                                    
                                                                                                    
 Input for [DaylP               ] ent, previous, and max daylength                                  
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr 16 with value:  52.0000                                                    
       [RefDay              ] daynumber of reference day simulation                                 
       using default value:  0.00000                                                                
       [AuxSys              ] ratio between days and system clock                                   
       using default value:  86400.0                                                                
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
       [VertDisper          ] vertical dispersion                                                   
       Using segment function nr  1                                                                 
       [ScaleVdisp          ] scaling factor for vertical diffusion                                 
       Using constant nr 11 with value:  1.00000                                                    
                                                                                                    
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
                                                                                                    
# determining the use of the delwaq input                                       
                                                                                
 info: constant [CLOSE_ERR ] is not used by the proces system                   
 info: constant [MaxIter   ] is not used by the proces system                   
 info: constant [Tolerance ] is not used by the proces system                   
 info: constant [Iteration ] is not used by the proces system                   
 info: parameter [bottomdept] is not used by the proces system                  
                                                                                
# locating requested output from active processes                                                   
                                                                                                    
 output [LocalDepth          ] from proces [TotDepth  ]                                             
 output [daylend             ] from proces [DaylP     ]                                             
 output [daylenp             ] from proces [DaylP     ]                                             
 output [daylenm             ] from proces [DaylP     ]                                             
 output [MALSM2              ] from proces [FlMALS    ]                                             
 output [MALNM2              ] from proces [FlMALS    ]                                             
 output [MALPM2              ] from proces [FlMALS    ]                                             
 output [MALCM2              ] from proces [FlMALS    ]                                             
 output [MALSNC              ] from proces [FlMALS    ]                                             
 output [MALSPC              ] from proces [FlMALS    ]                                             
 output [LimBioM             ] from proces [FlMALS    ]                                             
 output [LimPhoM             ] from proces [FlMALS    ]                                             
 output [LimTemM             ] from proces [FlMALS    ]                                             
 output [LocGroS             ] from proces [FlMALS    ]                                             
 output [LocGroN             ] from proces [FlMALS    ]                                             
 output [LocGroP             ] from proces [FlMALS    ]                                             
 output [LocGroC             ] from proces [FlMALS    ]                                             
 output [FrBmMALS            ] from proces [MALDIS    ]                                             
 output [BmLayMAL            ] from proces [MALDIS    ]                                             
 output [HactMAL             ] from proces [MALDIS    ]                                             
 output [AactMAL             ] from proces [MALDIS    ]                                             
 output [LimVel              ] from proces [FlMALN    ]                                             
 output [LocUpN              ] from proces [FlMALN    ]                                             
 output [LocUpP              ] from proces [FlMALN    ]                                             
 output [LocUpC              ] from proces [FlMALC    ]                                             
 output [TotGroS             ] from proces [MalGro    ]                                             
 output [TotGroN             ] from proces [MalGro    ]                                             
 output [TotGroP             ] from proces [MalGro    ]                                             
 output [TotGroC             ] from proces [MalGro    ]                                             
                                                                                                    
