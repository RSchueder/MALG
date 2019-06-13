 Deltares, DELWAQ Version 5.08.00.63110M, Feb 07 2019, 08:35:20
 Execution start: 2019/05/29 16:01:02 
                                                                                
 found -p command line switch                                                   

 Info: This processes definition file does not contain standard names and units for NetCDF files.

 
 Using process definition file : ..\..\..\code\tables\proc_def
 Version number                :       5.08
 Serial                        : 2019020601
 
                                                                                
 found constant ACTIVE_BLOOM_P without -eco command line switch                 
 will try using default eco input file:bloom.spe                                


 Model :            Water quality calculation               
                                                            


 Run   :                                                    
                    T0: 2001.01.01 00:00:00  (scu=       1s)


# scanning input for old process definitions
 found only_active constant                                                     
 only activated processes are switched on                                       
  WARNING: activated process not found in process definition file
  process ID: WM_DetC             
  WARNING: activated process not found in process definition file
  process ID: SedDetC             
  WARNING: activated process not found in process definition file
  process ID: Res_DetC            
  WARNING: activated process not found in process definition file
  process ID: BurS1_DetC          
  WARNING: activated process not found in process definition file
  process ID: WM_DetN             
  WARNING: activated process not found in process definition file
  process ID: SedN_Det            
  WARNING: activated process not found in process definition file
  process ID: ResN_Det            
  WARNING: activated process not found in process definition file
  process ID: BurS1N_Det          
  WARNING: activated process not found in process definition file
  process ID: WM_DetP             
  WARNING: activated process not found in process definition file
  process ID: WM_DetSi            
  WARNING: activated process not found in process definition file
  process ID: xxxNH3free          
  WARNING: activated process not found in process definition file
  process ID: xxxSedOXYD          
  WARNING: activated process not found in process definition file
  process ID: Chloride            
  WARNING: activated process not found in process definition file
  process ID: Extinc_VL           
  WARNING: activated process not found in process definition file
  process ID: Tau                 
  WARNING: activated process not found in process definition file
  process ID: POC_Dyn             
  WARNING: activated process not found in process definition file
  process ID: ExtPODVL            
  WARNING: activated process not found in process definition file
  process ID: xxxWave             
  WARNING: activated process not found in process definition file
  process ID: xxxChezy            
  WARNING: activated process not found in process definition file
  process ID: SedPODyn            
  WARNING: activated process not found in process definition file
  process ID: Grd_Rho             
  WARNING: activated process not found in process definition file
  process ID: Grd_Vel             
  WARNING: activated process not found in process definition file
  process ID: CalVS_DetC          
  WARNING: activated process not found in process definition file
  process ID: CalVSDIN_E          
  WARNING: activated process not found in process definition file
  process ID: CalVSDIN_N          
  WARNING: activated process not found in process definition file
  process ID: CalVSDIN_P          
  WARNING: activated process not found in process definition file
  process ID: CalVSMDI_E          
  WARNING: activated process not found in process definition file
  process ID: CalVSMDI_N          
  WARNING: activated process not found in process definition file
  process ID: CalVSMDI_P          
  WARNING: activated process not found in process definition file
  process ID: CalVSMFL_E          
  WARNING: activated process not found in process definition file
  process ID: CalVSMFL_N          
  WARNING: activated process not found in process definition file
  process ID: CalVSMFL_P          
  WARNING: activated process not found in process definition file
  process ID: CalVSPHA_E          
  WARNING: activated process not found in process definition file
  process ID: CalVSPHA_N          
  WARNING: activated process not found in process definition file
  process ID: CalVSPHA_P          
  WARNING: activated process not found in process definition file
  process ID: SEDDIN_E            
  WARNING: activated process not found in process definition file
  process ID: SEDDIN_N            
  WARNING: activated process not found in process definition file
  process ID: SEDDIN_P            
  WARNING: activated process not found in process definition file
  process ID: SEDMDI_E            
  WARNING: activated process not found in process definition file
  process ID: SEDMDI_N            
  WARNING: activated process not found in process definition file
  process ID: SEDMDI_P            
  WARNING: activated process not found in process definition file
  process ID: SEDMFL_E            
  WARNING: activated process not found in process definition file
  process ID: SEDMFL_N            
  WARNING: activated process not found in process definition file
  process ID: SEDMFL_P            
  WARNING: activated process not found in process definition file
  process ID: SEDPHA_E            
  WARNING: activated process not found in process definition file
  process ID: SEDPHA_N            
  WARNING: activated process not found in process definition file
  process ID: SEDPHA_P            
 
total number of substances with fractions :  0
# Determining which processes can be switched on                                                    
                                                                                                    
 Input for [DynDepth            ] dynamic calculation of the depth                                  
   Process is activated                                                                             
                                                                                                    
 Input for [TotDepth            ] depth water column                                                
   Process is activated                                                                             
                                                                                                    
 Input for [VarSal              ] Salinity in case of constant river discharge                      
   WARNING : activated process can NOT be switched on                                               
   Not found:[FrCon               ] Fraction fresh water from constant discharge                    
   Not found:[FrFlow              ] Fraction fresh water from variable discharge                    
   Not found:[SalBnd              ] Salinity from boundary inflow                                   
                                                                                                    
 Input for [Veloc               ] Horizontal flow velocity                                          
   Process is activated                                                                             
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
   Process is activated                                                                             
                                                                                                    
 Input for [EXTINABVL           ] Extinction of light by algae (Bloom)                              
   Process is activated                                                                             
                                                                                                    
 Input for [Extinc_VLG          ] Extinction of visible-light (370-680nm) DLWQ-G                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
   Process is activated                                                                             
                                                                                                    
 Input for [Daylength           ] Daylength calculation                                             
   Process is activated                                                                             
                                                                                                    
 Input for [DepAve              ] Average depth for Bloom step                                      
   Process is activated                                                                             
                                                                                                    
 Input for [vtrans              ] Vertical mixing distribution over a period                        
   Process is activated                                                                             
                                                                                                    
 Input for [BLOOM               ] BLOOM II algae module                                             
   Process is activated                                                                             
                                                                                                    
 Input for [Phy_Blo             ] Computation of phytoplankton output - Bloom                       
   Process is activated                                                                             
                                                                                                    
 Input for [S1_Comp             ] Composition sediment layer S1                                     
   Process is activated                                                                             
                                                                                                    
 Input for [S2_Comp             ] Composition sediment layer S2                                     
   Process is activated                                                                             
                                                                                                    
 Input for [Compos              ] Composition                                                       
   Process is activated                                                                             
                                                                                                    
 Input for [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter                  
   Process is activated                                                                             
                                                                                                    
 Input for [DenSed_NO3          ] Denitrification in sediment                                       
   Process is activated                                                                             
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
   Process is activated                                                                             
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
   Process is activated                                                                             
                                                                                                    
 Input for [SaturOXY            ] Saturation concentration oxygen                                   
   Process is activated                                                                             
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                     
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1                   
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1                 
   Process is activated                                                                             
                                                                                                    
 Input for [BMS1_DetSi          ] Mineralisation detritus silica in sediment S1                     
   Process is activated                                                                             
                                                                                                    
 Input for [BODCOD              ] Mineralisation BOD and COD                                        
   Process is activated                                                                             
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
   Process is activated                                                                             
                                                                                                    
 Input for [DisSi               ] Dissolution of Si in opal (SWITCH defaults)                       
   Process is activated                                                                             
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
   Process is activated                                                                             
                                                                                                    
 Input for [CalVS_IM1           ] Sedimentation velocity IM1 = f (Temp SS Sal)                      
   Process is activated                                                                             
                                                                                                    
 Input for [CalVS_POC1          ] Sedimentation velocity POC1 = f (Temp SS Sal)                     
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG01          ] Sedimentation velocity ALG01 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG02          ] Sedimentation velocity ALG02 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG03          ] Sedimentation velocity ALG03 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG04          ] Sedimentation velocity ALG04 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG05          ] Sedimentation velocity ALG05 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG06          ] Sedimentation velocity ALG06 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG07          ] Sedimentation velocity ALG07 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG08          ] Sedimentation velocity ALG08 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG09          ] Sedimentation velocity ALG09 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG10          ] Sedimentation velocity ALG10 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG11          ] Sedimentation velocity ALG11 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [CalVSALG12          ] Sedimentation velocity ALG12 = f (Temp SS Sal)                    
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_IM1             ] Sedimentation IM1                                                 
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG01            ] Sedimentation of algae species 1                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG02            ] Sedimentation of algae species 2                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG03            ] Sedimentation of algae species 3                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG04            ] Sedimentation of algae species 4                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG05            ] Sedimentation of algae species 5                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG06            ] Sedimentation of algae species 6                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG07            ] Sedimentation of algae species 7                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG08            ] Sedimentation of algae species 8                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG09            ] Sedimentation of algae species 9                                  
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG10            ] Sedimentation of algae species 10                                 
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG11            ] Sedimentation of algae species 11                                 
   Process is activated                                                                             
                                                                                                    
 Input for [SEDALG12            ] Sedimentation of algae species 12                                 
   Process is activated                                                                             
                                                                                                    
 Input for [SedPhBlo            ] Sum sedimentation of algae - Bloom                                
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_Opal            ] Sedimentation Opal 3d                                             
   Process is activated                                                                             
                                                                                                    
 Input for [Sed_POC1            ] Sedimentation POC1 3d                                             
   Process is activated                                                                             
                                                                                                    
 Input for [SedNPOC1            ] Sedim. nutrients in POC1                                          
   Process is activated                                                                             
                                                                                                    
 Input for [Sum_Sedim           ] Total of all sedimenting substances                               
   Process is activated                                                                             
                                                                                                    
 Input for [Res_DM              ] Resuspension total bottom material (dry mass)                     
   Process is activated                                                                             
                                                                                                    
 Input for [Bur_DM              ] Burial total bottom mass (dry matter)                             
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                             
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                             
   Process is activated                                                                             
                                                                                                    
 Input for [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                             
   Process is activated                                                                             
                                                                                                    
 Input for [UlvaFix             ] Fixation of BLOOM algae at the bottom                             
   Process is activated                                                                             
                                                                                                    
 Input for [AtmDep_NH4          ] Atmospheric deposition NH4                                        
   Process is activated                                                                             
                                                                                                    
 Input for [AtmDep_NO3          ] Atmospheric deposition NO3                                        
   Process is activated                                                                             
                                                                                                    
 Input for [AtmDep_PO4          ] Atmospheric deposition PO4                                        
   Process is activated                                                                             
                                                                                                    
 Input for [PosOXY              ] Positive oxygen concentration                                     
   Process is activated                                                                             
                                                                                                    
 Input for [Secchi              ] Secchi depth for visible-light (370-680nm)                        
   Process is activated                                                                             
                                                                                                    
 Input for [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)                   
   Process is activated                                                                             
                                                                                                    
 Input for [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)                  
   Process is activated                                                                             
                                                                                                    
 Input for [DaylP               ] alculation of current, previous, and max daylength                
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
 found flux  [dCaut               ] autolysis flux of carbon                                        
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dNO3Upt             ] uptake of NO3 by algae growth                                   
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dPrProdOxy          ] uptake of carbon by algae growth                                
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dREAROXY            ] reaeration flux of dissolved oxygen                             
   from proces [RearOXY             ] Reaeration of oxygen                                          
   process is switched on.                                                                          
 found flux  [dMinDetCS1          ] mineralisation flux DetCS1                                      
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dOxyBODCOD          ] oxygen consumption from decay BOD and COD                       
   from proces [BODCOD              ] Mineralisation BOD and COD                                    
   process is switched on.                                                                          
 found flux  [dOxCon              ] mineralisation flux oxidised with DO                            
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dM_Resp             ] respiration flux of DEB Mussel                                  
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_Resp            ] respiration flux of DEB Grazer3                                 
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dCnOXYM             ] Oxygen consumption MALS                                         
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
                                                                                                    
-fluxes for [Salinity            ]                                                                  
 no fluxes found                                                                                    
-dispersion for [Salinity            ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Salinity            ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [NH4                 ]                                                                  
 found flux  [dNaut               ] autolysis flux of nitrogen                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dNH4Upt             ] NH4 uptake by algae growth                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dMinDetNS1          ] mineralisation flux DetNS1                                      
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dAtmDepNH4          ] atmospheric deposition flux NH4                                 
   from proces [AtmDep_NH4          ] Atmospheric deposition NH4                                    
   process is switched on.                                                                          
 found flux  [dM_NRes             ] respiration flux of DEB Mussel                                  
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_NRes            ] respiration flux of DEB Grazer3                                 
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
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
 found flux  [dNO3Upt             ] uptake of NO3 by algae growth                                   
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDenitSed           ] denitrification flux from the sediment                          
   from proces [DenSed_NO3          ] Denitrification in sediment                                   
   process is switched on.                                                                          
 found flux  [dDenitWat           ] denitrification flux in the water column                        
   from proces [DenWat_NO3          ] Denitrification in water column                               
   process is switched on.                                                                          
 found flux  [dNITRIF             ] nitrification flux                                              
   from proces [Nitrif_NH4          ] Nitrification of ammonium                                     
   process is switched on.                                                                          
 found flux  [dNiDen              ] mineralisation flux oxidised with nitrate                       
   from proces [CONSELAC            ] Consumption oxygen/other electron acceptors                   
   process is switched on.                                                                          
 found flux  [dAtmDepNO3          ] atmospheric deposition flux NO3                                 
   from proces [AtmDep_NO3          ] Atmospheric deposition NO3                                    
   process is switched on.                                                                          
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
 found flux  [dPaut               ] autolysis flux of PO4                                           
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dPO4Upt             ] PO4 uptake by algae growth                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dAdsPO4AAP          ] adsorption flux PO4 to AAP                                      
   from proces [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter              
   process is switched on.                                                                          
 found flux  [dMinDetPS1          ] mineralisation flux DetPS1                                      
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dMinPOP1            ] mineralization flux POP1 to PO4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dAtmDepPO4          ] atmospheric deposition flux PO4                                 
   from proces [AtmDep_PO4          ] Atmospheric deposition PO4                                    
   process is switched on.                                                                          
 found flux  [dM_PRes             ] respiration flux of DEB Mussel                                  
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_PRes            ] respiration flux of DEB Grazer3                                 
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dUpPO4M             ] PO4 uptake by Macroalgae nitrogen storage                       
   from proces [FlMALN              ] Flux for Macroalgae nutrient storage (N/P)                    
   process is switched on.                                                                          
-dispersion for [PO4                 ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PO4                 ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Si                  ]                                                                  
 found flux  [dSIaut              ] autolysis flux of silicate                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSIUpt              ] Si uptake by algae growth                                       
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMinDetSiS          ] mineralisation flux DetSiS1                                     
   from proces [BMS1_DetSi          ] Mineralisation detritus silica in sediment S1                 
   process is switched on.                                                                          
 found flux  [dDissolSi           ] dissolution flux Opal to Si                                     
   from proces [DisSi               ] Dissolution of Si in opal (SWITCH defaults)                   
   process is switched on.                                                                          
-dispersion for [Si                  ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Si                  ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Opal                ]                                                                  
 found flux  [dDetSiMort          ] production of DetSi by mortality                                
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dOOSiMort           ] production of OOSi by mortality                                 
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDissolSi           ] dissolution flux Opal to Si                                     
   from proces [DisSi               ] Dissolution of Si in opal (SWITCH defaults)                   
   process is switched on.                                                                          
 found flux  [dSedOpal            ] sedimentation flux of Opal                                      
   from proces [Sed_Opal            ] Sedimentation Opal 3d                                         
   process is switched on.                                                                          
 found flux  [dM_SiDef            ] defeacation flux Si of DEB Mussel                               
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_POSi             ] grazing of POSi by DEB Mussel                                   
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_SiDef           ] defeacation flux Si of DEB Grazer3                              
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_POSi            ] grazing of POSi by DEB Grazer3                                  
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [Opal                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [Opal                ]                                                                
 found velocity [VxSedOpal           ] sedimentation velocity Opal                                  
   from proces [Sed_Opal            ] Sedimentation Opal 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [POC1                ]                                                                  
 found flux  [dDetCMort           ] production of DetC by mortality                                 
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDetCUpt            ] uptake of DetC by heterotroph algae growth                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dCnvPPOC1           ] conversion flux POC1 to POC2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPOC1           ] conversion flux POC1 to DOC                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOC1G           ] mineralization flux POC1 to CO2                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dSedPOC1            ] sedimentation flux POC1                                         
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
 found flux  [dResS1DetC          ] resuspension flux DetC from layer S1                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dResS2DetC          ] resuspension flux DetC from layer S2                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dM_Mor              ] mortality flux of DEB Mussel                                    
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Def              ] defeacation flux of DEB Mussel                                  
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_SpwDet           ] spawning flux of DEB Mussel to DetC                             
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_POC1             ] grazing of POC1 by DEB Mussel                                   
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_Mor             ] mortality flux of DEB Grazer3                                   
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_Def             ] defeacation flux of DEB Grazer3                                 
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_SpwDet          ] spawning flux of DEB Grazer3 to DetC                            
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_POC1            ] grazing of POC1 by DEB Grazer3                                  
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dPrPOC1M            ] POC1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POC1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POC1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [PON1                ]                                                                  
 found flux  [dDetNMort           ] production of DetN by mortality                                 
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDetNUpt            ] uptake of DetN by heterotroph algae growth                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dCnvPPON1           ] conversion flux PON1 to PON2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPON1           ] conversion flux PON1 to DON                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPON1            ] mineralization flux PON1 to NH4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dSedPON1            ] sedimentation flux PON1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetN          ] resuspension flux DetN from layer S1                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dResS2DetN          ] resuspension flux DetN from layer S2                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dM_NMrt             ] mortality flux of DEB Mussel                                    
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_NDef             ] defeacation flux N of DEB Mussel                                
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_NSpDet           ] spawning flux of DEB mussel to DetN                             
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_PON1             ] grazing of PON by DEB Mussel                                    
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_NMrt            ] mortality flux of DEB Grazer3                                   
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_NDef            ] defeacation flux N of DEB Grazer3                               
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_NSpDet          ] spawning flux of DEB Grazer3 to DetN                            
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_PON1            ] grazing of PON by DEB Grazer3                                   
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dPrPON1M            ] PON1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [PON1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PON1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [POP1                ]                                                                  
 found flux  [dDetPMort           ] production of DetP by mortality                                 
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dDetPUpt            ] uptake of DetP by heterotroph algae growth                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dCnvPPOP1           ] conversion flux POP1 to POP2                                    
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dCnvDPOP1           ] conversion flux POP1 to DOP                                     
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dMinPOP1            ] mineralization flux POP1 to PO4                                 
   from proces [DecFast             ] Mineralization fast decomp. detritus POC1                     
   process is switched on.                                                                          
 found flux  [dSedPOP1            ] sedimentation flux POP1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetP          ] resuspension flux DetP from layer S1                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dResS2DetP          ] resuspension flux DetP from layer S2                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dM_PMrt             ] mortality flux of DEB Mussel                                    
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_PDef             ] defeacation flux P of DEB Mussel                                
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_PSpDet           ] spawning flux of DEB Mussel to DetP                             
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_POP              ] grazing of POP by DEB Mussel                                    
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_PMrt            ] mortality flux of DEB Grazer3                                   
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_PDef            ] defeacation flux P of DEB Grazer3                               
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_PSpDet          ] spawning flux of DEB Grazer3 to DetP                            
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_POP             ] grazing of POP by DEB Grazer3                                   
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dPrPOP1M            ] POP1 production MALS                                            
   from proces [FlMALS              ] Flux calculation for Macroalgae Structural Mass               
   process is switched on.                                                                          
-dispersion for [POP1                ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [POP1                ]                                                                
 found velocity [VxSedPOC1           ] sedimentation velocity POC1                                  
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
                                                                                                    
-fluxes for [DINOFLAG_E          ]                                                                  
 found flux  [dProdAlg07          ] primary production of algae type 07                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg07          ] mortality of algae type 07                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg07           ] sedimentation flux algae type 07                                
   from proces [SEDALG07            ] Sedimentation of algae species 7                              
   process is switched on.                                                                          
 found flux  [dSedRes07           ] sedimentation flux algae type 07                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG07            ] grazing of algae type 07 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG07           ] grazing of algae type 07 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DINOFLAG_E          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [DINOFLAG_E          ]                                                                
 found velocity [VxSedAlg07          ] sedimentation velocity algae type 07                         
   from proces [SEDALG07            ] Sedimentation of algae species 7                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [DINOFLAG_N          ]                                                                  
 found flux  [dProdAlg08          ] primary production of algae type 08                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg08          ] mortality of algae type 08                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg08           ] sedimentation flux algae type 08                                
   from proces [SEDALG08            ] Sedimentation of algae species 8                              
   process is switched on.                                                                          
 found flux  [dSedRes08           ] sedimentation flux algae type 08                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG08            ] grazing of algae type 08 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG08           ] grazing of algae type 08 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DINOFLAG_N          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [DINOFLAG_N          ]                                                                
 found velocity [VxSedAlg08          ] sedimentation velocity algae type 08                         
   from proces [SEDALG08            ] Sedimentation of algae species 8                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [DINOFLAG_P          ]                                                                  
 found flux  [dProdAlg09          ] primary production of algae type 09                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg09          ] mortality of algae type 09                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg09           ] sedimentation flux algae type 09                                
   from proces [SEDALG09            ] Sedimentation of algae species 9                              
   process is switched on.                                                                          
 found flux  [dSedRes09           ] sedimentation flux algae type 09                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG09            ] grazing of algae type 09 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG09           ] grazing of algae type 09 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DINOFLAG_P          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [DINOFLAG_P          ]                                                                
 found velocity [VxSedAlg09          ] sedimentation velocity algae type 09                         
   from proces [SEDALG09            ] Sedimentation of algae species 9                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MDIATOMS_E          ]                                                                  
 found flux  [dProdAlg01          ] primary production of algae type 01                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg01          ] mortality of algae type 01                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg01           ] sedimentation flux algae type 01                                
   from proces [SEDALG01            ] Sedimentation of algae species 1                              
   process is switched on.                                                                          
 found flux  [dSedRes01           ] sedimentation flux algae type 01                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG01            ] grazing of algae type 01 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG01           ] grazing of algae type 01 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MDIATOMS_E          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MDIATOMS_E          ]                                                                
 found velocity [VxSedAlg01          ] sedimentation velocity algae type 01                         
   from proces [SEDALG01            ] Sedimentation of algae species 1                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MDIATOMS_N          ]                                                                  
 found flux  [dProdAlg02          ] primary production of algae type 02                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg02          ] mortality of algae type 02                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg02           ] sedimentation flux algae type 02                                
   from proces [SEDALG02            ] Sedimentation of algae species 2                              
   process is switched on.                                                                          
 found flux  [dSedRes02           ] sedimentation flux algae type 02                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG02            ] grazing of algae type 02 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG02           ] grazing of algae type 02 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MDIATOMS_N          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MDIATOMS_N          ]                                                                
 found velocity [VxSedAlg02          ] sedimentation velocity algae type 02                         
   from proces [SEDALG02            ] Sedimentation of algae species 2                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MDIATOMS_P          ]                                                                  
 found flux  [dProdAlg03          ] primary production of algae type 03                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg03          ] mortality of algae type 03                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg03           ] sedimentation flux algae type 03                                
   from proces [SEDALG03            ] Sedimentation of algae species 3                              
   process is switched on.                                                                          
 found flux  [dSedRes03           ] sedimentation flux algae type 03                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG03            ] grazing of algae type 03 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG03           ] grazing of algae type 03 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MDIATOMS_P          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MDIATOMS_P          ]                                                                
 found velocity [VxSedAlg03          ] sedimentation velocity algae type 03                         
   from proces [SEDALG03            ] Sedimentation of algae species 3                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MFLAGELA_E          ]                                                                  
 found flux  [dProdAlg04          ] primary production of algae type 04                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg04          ] mortality of algae type 04                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg04           ] sedimentation flux algae type 04                                
   from proces [SEDALG04            ] Sedimentation of algae species 4                              
   process is switched on.                                                                          
 found flux  [dSedRes04           ] sedimentation flux algae type 04                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG04            ] grazing of algae type 04 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG04           ] grazing of algae type 04 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MFLAGELA_E          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MFLAGELA_E          ]                                                                
 found velocity [VxSedAlg04          ] sedimentation velocity algae type 04                         
   from proces [SEDALG04            ] Sedimentation of algae species 4                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MFLAGELA_N          ]                                                                  
 found flux  [dProdAlg05          ] primary production of algae type 05                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg05          ] mortality of algae type 05                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg05           ] sedimentation flux algae type 05                                
   from proces [SEDALG05            ] Sedimentation of algae species 5                              
   process is switched on.                                                                          
 found flux  [dSedRes05           ] sedimentation flux algae type 05                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG05            ] grazing of algae type 05 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG05           ] grazing of algae type 05 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MFLAGELA_N          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MFLAGELA_N          ]                                                                
 found velocity [VxSedAlg05          ] sedimentation velocity algae type 05                         
   from proces [SEDALG05            ] Sedimentation of algae species 5                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [MFLAGELA_P          ]                                                                  
 found flux  [dProdAlg06          ] primary production of algae type 06                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg06          ] mortality of algae type 06                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg06           ] sedimentation flux algae type 06                                
   from proces [SEDALG06            ] Sedimentation of algae species 6                              
   process is switched on.                                                                          
 found flux  [dSedRes06           ] sedimentation flux algae type 06                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG06            ] grazing of algae type 06 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG06           ] grazing of algae type 06 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [MFLAGELA_P          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [MFLAGELA_P          ]                                                                
 found velocity [VxSedAlg06          ] sedimentation velocity algae type 06                         
   from proces [SEDALG06            ] Sedimentation of algae species 6                              
   process is switched on.                                                                          
                                                                                                    
-fluxes for [PHAEOCYS_E          ]                                                                  
 found flux  [dProdAlg10          ] primary production of algae type 10                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg10          ] mortality of algae type 10                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg10           ] sedimentation flux algae type 10                                
   from proces [SEDALG10            ] Sedimentation of algae species 10                             
   process is switched on.                                                                          
 found flux  [dSedRes10           ] sedimentation flux algae type 10                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG10            ] grazing of algae type 10 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG10           ] grazing of algae type 10 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [PHAEOCYS_E          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PHAEOCYS_E          ]                                                                
 found velocity [VxSedAlg10          ] sedimentation velocity algae type 10                         
   from proces [SEDALG10            ] Sedimentation of algae species 10                             
   process is switched on.                                                                          
                                                                                                    
-fluxes for [PHAEOCYS_N          ]                                                                  
 found flux  [dProdAlg11          ] primary production of algae type 11                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg11          ] mortality of algae type 11                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg11           ] sedimentation flux algae type 11                                
   from proces [SEDALG11            ] Sedimentation of algae species 11                             
   process is switched on.                                                                          
 found flux  [dSedRes11           ] sedimentation flux algae type 11                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG11            ] grazing of algae type 11 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG11           ] grazing of algae type 11 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [PHAEOCYS_N          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PHAEOCYS_N          ]                                                                
 found velocity [VxSedAlg11          ] sedimentation velocity algae type 11                         
   from proces [SEDALG11            ] Sedimentation of algae species 11                             
   process is switched on.                                                                          
                                                                                                    
-fluxes for [PHAEOCYS_P          ]                                                                  
 found flux  [dProdAlg12          ] primary production of algae type 12                             
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dMortAlg12          ] mortality of algae type 12                                      
   from proces [BLOOM               ] BLOOM II algae module                                         
   process is switched on.                                                                          
 found flux  [dSedAlg12           ] sedimentation flux algae type 12                                
   from proces [SEDALG12            ] Sedimentation of algae species 12                             
   process is switched on.                                                                          
 found flux  [dSedRes12           ] sedimentation flux algae type 12                                
   from proces [UlvaFix             ] Fixation of BLOOM algae at the bottom                         
   process is switched on.                                                                          
 found flux  [dM_ALG12            ] grazing of algae type 12 by DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_ALG12           ] grazing of algae type 12 by DEB Grazer3                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [PHAEOCYS_P          ]                                                              
 found dispersion[VertDisp            ] vertical dispersion                                         
   from proces [VertDisp            ] Vertical dispersion (segment -> exchange)                     
   process is switched on.                                                                          
-velocity for [PHAEOCYS_P          ]                                                                
 found velocity [VxSedAlg12          ] sedimentation velocity algae type 12                         
   from proces [SEDALG12            ] Sedimentation of algae species 12                             
   process is switched on.                                                                          
                                                                                                    
-fluxes for [DetCS1              ]                                                                  
 found flux  [dMinDetCS1          ] mineralisation flux DetCS1                                      
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSWMinDCS1          ] SWITCH mineralisation flux DetC in layer S1                     
   from proces [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSedPHYT            ] total sedimentation flux algae                                  
   from proces [SedPhBlo            ] Sum sedimentation of algae - Bloom                            
   process is switched on.                                                                          
 found flux  [dSedPOC1            ] sedimentation flux POC1                                         
   from proces [Sed_POC1            ] Sedimentation POC1 3d                                         
   process is switched on.                                                                          
 found flux  [dResS1DetC          ] resuspension flux DetC from layer S1                            
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dBurS1DetC          ] burial flux DetC from layer S1                                  
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtC          ] burial flux DetC from layer S1                                  
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dDigS1DetC          ] digging flux DetC to layer S1                                   
   from proces [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                         
   process is switched on.                                                                          
 found flux  [dM_MortS1           ] mortality flux of DEB Mussel to DetCS1                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_DCS1             ] grazing of DetCS1 by DEB Mussel                                 
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_MortS1          ] mortality flux of DEB Grazer3 to DetCS1                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_DCS1            ] grazing of DetCS1 by DEB Grazer3                                
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DetCS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetCS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetNS1              ]                                                                  
 found flux  [dMinDetNS1          ] mineralisation flux DetNS1                                      
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dSWMinDNS1          ] SWITCH mineralisation flux DetN in layer S1                     
   from proces [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1               
   process is switched on.                                                                          
 found flux  [dSedAlgN            ] total sedimentation flux AlgN                                   
   from proces [SedPhBlo            ] Sum sedimentation of algae - Bloom                            
   process is switched on.                                                                          
 found flux  [dSedPON1            ] sedimentation flux PON1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetN          ] resuspension flux DetN from layer S1                            
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dBurS1DetN          ] burial flux DetN from layer S1                                  
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtN          ] burial flux DetN from layer S1                                  
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dDigS1DetN          ] digging flux DetN to layer S1                                   
   from proces [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                         
   process is switched on.                                                                          
 found flux  [dM_NMrtS1           ] mortality flux of DEB Mussel to DetNS1                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_DNS1             ] grazing of DetNS1 by DEB Mussel                                 
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_NMrtS1          ] mortality flux of DEB Grazer3 to DetNS1                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_DNS1            ] grazing of DetNS1 by DEB Grazer3                                
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DetNS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetNS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetPS1              ]                                                                  
 found flux  [dMinDetPS1          ] mineralisation flux DetPS1                                      
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dSWMinDPS1          ] SWITCH mineralisation flux DetP in layer S1                     
   from proces [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1             
   process is switched on.                                                                          
 found flux  [dSedAlgP            ] total sedimentation flux AlgP                                   
   from proces [SedPhBlo            ] Sum sedimentation of algae - Bloom                            
   process is switched on.                                                                          
 found flux  [dSedPOP1            ] sedimentation flux POP1                                         
   from proces [SedNPOC1            ] Sedim. nutrients in POC1                                      
   process is switched on.                                                                          
 found flux  [dResS1DetP          ] resuspension flux DetP from layer S1                            
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dBurS1DetP          ] burial flux DetP from layer S1                                  
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dSWBuS1DtP          ] burial flux DetP from layer S1                                  
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dDigS1DetP          ] digging flux DetP to layer S1                                   
   from proces [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                         
   process is switched on.                                                                          
 found flux  [dM_PMrtS1           ] mortality flux of DEB Mussel to DetPS1                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_DPS1             ] grazing of DetPS1 by DEB Mussel                                 
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_PMrtS1          ] mortality flux of DEB Grazer3 to DetPS1                         
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
 found flux  [dG3_DPS1            ] grazing of DetPS1 by DEB Grazer3                                
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DetPS1              ]                                                              
 no dispersions found                                                                               
-velocity for [DetPS1              ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [DetSiS1             ]                                                                  
 found flux  [dMinDetSiS          ] mineralisation flux DetSiS1                                     
   from proces [BMS1_DetSi          ] Mineralisation detritus silica in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSWMinDSS1          ] SWITCH mineralisation flux DetSi in layer S1                    
   from proces [BMS1_DetSi          ] Mineralisation detritus silica in sediment S1                 
   process is switched on.                                                                          
 found flux  [dSedAlgSi           ] total sedimentation flux AlgSi                                  
   from proces [SedPhBlo            ] Sum sedimentation of algae - Bloom                            
   process is switched on.                                                                          
 found flux  [dSedOpal            ] sedimentation flux of Opal                                      
   from proces [Sed_Opal            ] Sedimentation Opal 3d                                         
   process is switched on.                                                                          
 found flux  [dM_DSiS             ] grazing of DetSiS1 by DEB Mussel                                
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dG3_DSiS            ] grazing of DetSiS1 by DEB Grazer3                               
   from proces [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)              
   process is switched on.                                                                          
-dispersion for [DetSiS1             ]                                                              
 no dispersions found                                                                               
-velocity for [DetSiS1             ]                                                                
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
 found flux  [dStrMALN            ] Storage of nitrogen by macroalgae                               
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
 found flux  [dStrMALP            ] Storage of phosphorous by macroalgae                            
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
                                                                                                    
-fluxes for [Mussel_V            ]                                                                  
 found flux  [dM_Vgr              ] growth flux struct biomass DEB Mussel                           
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Vmor             ] mortality flux struct biomass DEB Mussel                        
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
-dispersion for [Mussel_V            ]                                                              
 no dispersions found                                                                               
-velocity for [Mussel_V            ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Mussel_E            ]                                                                  
 found flux  [dM_Ea               ] anabolic flux energy reserves DEB Mussel                        
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Ec               ] catabolic flux energy reserves DEB Mussel                       
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Emor             ] mortality flux energy reserves DEB Mussel                       
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
-dispersion for [Mussel_E            ]                                                              
 no dispersions found                                                                               
-velocity for [Mussel_E            ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Mussel_R            ]                                                                  
 found flux  [dM_SpwDet           ] spawning flux of DEB Mussel to DetC                             
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Rgr              ] growth flux gonadal tissue DEB Mussel                           
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Rmor             ] mortality flux gonadal tissue DEB Mussel                        
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
-dispersion for [Mussel_R            ]                                                              
 no dispersions found                                                                               
-velocity for [Mussel_R            ]                                                                
 no velocity found                                                                                  
                                                                                                    
-fluxes for [Mussel_N            ]                                                                  
 found flux  [dM_Nind             ] increase dens by growth (V1morphs only)                         
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
 found flux  [dM_Mort             ] mortality and harvesting of DEB Mussel                          
   from proces [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)               
   process is switched on.                                                                          
-dispersion for [Mussel_N            ]                                                              
 no dispersions found                                                                               
-velocity for [Mussel_N            ]                                                                
 no velocity found                                                                                  
                                                                                                    
# locating processes for requested output                                                           
                                                                                                    
# determining the input for the processes (in reversed order)                                       
                                                                                                    
 Input for [HRVMAL              ] Harvesting of Macroalgae                                          
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  28                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  29                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  30                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  31                                                                       
       [K0HrvMALS           ] zero order harvesting rate Macroalgae                                 
       using default value:  0.00000                                                                
       [K1HrvMALS           ] first order harvesting rate Macroalgae                                
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [FlMALC              ] Flux calculation for Macroalgae carbon storage (C)                
       [MALS                ] MacroALgae Structural biomass                                         
       Using substance nr  28                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  31                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [CDRatMALS           ] C to structural dry mass ratio in MALS                                
       using default value: 0.200000                                                                
       [TotAreaMAL          ] area of frond in this column                                          
       Using output from proces [MALDIS              ]                                              
       [ArDenMAL            ] Area density frond (grams/m2 surface area)                            
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
       using default value:  285.000                                                                
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
       Using function nr  2                                                                         
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr304 with value: 0.180000                                                    
       [alpha0              ] photosynthetic efficiency MALC                                        
       using default value: 0.375000E-04                                                            
       [Isat                ] light intensity where photosynthesis is max                           
       using default value:  43.7630                                                                
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
       Using substance nr  28                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  29                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  30                                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   4                                                                       
       [PO4                 ] external P concentration                                              
       Using substance nr   6                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [TotAreaMAL          ] area of frond in this column                                          
       Using output from proces [MALDIS              ]                                              
       [ArDenMAL            ] Area density frond (grams/m2 surface area)                            
       using default value:  60.0000                                                                
       [MALNmin             ] minimum N in storage                                                  
       using default value: 0.100000E-01                                                            
       [MALNmax             ] maximum N in MALN w.r.t. MALS                                         
       using default value: 0.220000E-01                                                            
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALPmax             ] maximum P in MALP w.r.t. MALS                                         
       using default value: 0.220000E-02                                                            
       [CDRatMALS           ] C to structural dry mass ratio in MALS                                
       using default value: 0.200000                                                                
       [NCRatMALS           ] N:C ratio in MALS                                                     
       using default value: 0.500000E-01                                                            
       [PCRatMALS           ] P:C ratio in MALS                                                     
       using default value: 0.500000E-02                                                            
       [Ksn                 ] half saturation MALN N uptake                                         
       using default value: 0.560000E-01                                                            
       [Ksp                 ] half saturation MALN P uptake                                         
       using default value: 0.126000E-01                                                            
       [JNmax               ] maximum MALN N uptake rate (per area frond)                           
       using default value: 0.336000                                                                
       [JPmax               ] maximum MALP P uptake rate (per area frond)                           
       using default value: 0.336000                                                                
       [Velocity            ] horizontal flow velocity                                              
       Using constant nr314 with value: 0.150000                                                    
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
       Using substance nr  28                                                                       
       [MALN                ] MacroALgae Nitrogen storage                                           
       Using substance nr  29                                                                       
       [MALP                ] MacroALgae Phosphorous storage                                        
       Using substance nr  30                                                                       
       [MALC                ] MacroALgae Carbon storage                                             
       Using substance nr  31                                                                       
       [FrBmMALS            ] Fraction of bottom layer MALS in this seg                             
       Using output from proces [MALDIS              ]                                              
       [MALNmin             ] minimum N in storage                                                  
       using default value: 0.100000E-01                                                            
       [MALPmin             ] minimum P in storage                                                  
       using default value: 0.100000E-02                                                            
       [MALCmin             ] minimum C in storage                                                  
       using default value: 0.100000E-01                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr273 with value:  52.1000                                                    
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
       [TotAreaMAL          ] area of frond in this column                                          
       Using output from proces [MALDIS              ]                                              
       [nFrond              ] number of fronds per m2                                               
       Using constant nr313 with value:  1.00000                                                    
       [MALS0               ] growth rate parameter 3                                               
       Using constant nr305 with value: 0.600000E-01                                                
       [a1                  ] photoperiod parameter 1                                               
       using default value:  1.02000                                                                
       [a2                  ] photoperiod parameter 2                                               
       using default value: 0.120000                                                                
       [mrtMAL              ] epsilon erosion/mortality parameter macro                             
       Using constant nr306 with value: 0.180000                                                    
       [CDRatMAL            ] C:DM ratio in MALS                                                    
       using default value: 0.200000                                                                
       [NCRatMAL            ] N:C ratio in MALS                                                     
       using default value: 0.500000E-01                                                            
       [PCRatMAL            ] P:C ratio in MALS                                                     
       using default value: 0.500000E-02                                                            
       [Kn                  ] mass of nitrogen reserves per gram nitrogen                           
       using default value:  2.72000                                                                
       [Kc                  ] mass of carbon reserves per gram carbon                               
       using default value:  2.12130                                                                
       [Kdw                 ] structural dry weight per unit frond area                             
       using default value: 0.785000E-01                                                            
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
       Using substance nr  28                                                                       
       [FootDepth           ] location of frond attachment in the water column <                    
       using default value: -999.999                                                                
       [LmaxMAL             ] Maximum length MALG                                                   
       Using constant nr308 with value:  8.00000                                                    
       [SWGroDir            ] grow direction MALG(1 = up, -1 = down )                               
       Using constant nr312 with value: -1.00000                                                    
       [nFrond              ] number of fronds per m2                                               
       Using constant nr313 with value:  1.00000                                                    
       [LinDenMAL           ] linear density of macroalgae                                          
       Using constant nr309 with value:  120.000                                                    
       [LinDenCor           ] apply lencorr. factor for low biomass density (0=n                    
       Using constant nr310 with value:  0.00000                                                    
       [FStretch            ] stretch factor for frond length                                       
       Using constant nr311 with value:  1.00000                                                    
       [ArDenMAL            ] Area density frond (grams/m2 surface area)                            
       using default value:  60.0000                                                                
       [MBotSeg             ] bottom segment for this segment                                       
       Using output from proces [MALDIS              ]                                              
                                                                                                    
 Input for [DaylP               ] alculation of current, previous, and max daylength                
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr273 with value:  52.1000                                                    
       [RefDay              ] daynumber of reference day simulation                                 
       Using constant nr274 with value:  0.00000                                                    
       [AuxSys              ] ratio between days and system clock                                   
       using default value:  86400.0                                                                
                                                                                                    
 Input for [DEBGRZ_G3           ] Dynamics of DEB Grazer3 (def: passive isomorphs)                  
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [TIM                 ] total inorganic matter                                                
       Using output from proces [Compos              ]                                              
       [SWDetTyp            ] option for POX (value must not be changed)                            
       using default value:  1.00000                                                                
       [G3_SwV1             ] use 0 [ISO-morphs] or 1 [V1-morphs]                                   
       using default value:  0.00000                                                                
       [G3_SwBEN            ] Use 0 [pelagic] or 1 [benthic] for DEB Grazer3                        
       Using constant nr645 with value:  1.00000                                                    
       [Grazer3_V           ] conc struct biomass of DEB Grazer3                                    
       using default value: 0.295000E-02                                                            
       [Grazer3_E           ] conc energy reserve of DEB Grazer3                                    
       using default value:  1.00000                                                                
       [Grazer3_R           ] conc gonadal mass of DEB Grazer3                                      
       using default value:  0.00000                                                                
       [Grazer3_N           ] number of individuals DEB Grazer3                                     
       using default value:  1.00000                                                                
       [G3_Lref             ] ref length of DEB Grazer3 (only for V1morphs)                         
       using default value: 0.100000                                                                
       [G3_Dummy            ] dummy constant for DEB Grazer3                                        
       Using constant nr627 with value:  1.00000                                                    
       [G3_Vb               ] volume at birth of individual DEB Grazer3                             
       using default value: 0.100000E-05                                                            
       [G3_Vp               ] volume at start of repr stage ind DEB Grazer3                         
       using default value: 0.600000E-01                                                            
       [G3_shape            ] shape coefficient of DEB Grazer3                                      
       using default value: 0.287000                                                                
       [G3_Em               ] maximum storage density of DEB Grazer3                                
       using default value:  2190.00                                                                
       [G3_Eg               ] volume-spec costs for growth of DEB Grazer3                           
       using default value:  1900.00                                                                
       [G3_Pm               ] respiration rate constant of DEB Grazer3                              
       using default value:  30.7000                                                                
       [G3_JXm              ] max ingestion rate of DEB Grazer3                                     
       using default value:  196.800                                                                
       [G3_kappaI           ] ingestion efficiency of DEB Grazer3                                   
       Using constant nr628 with value: 0.750000                                                    
       [G3_kappaA           ] assimilation efficiency of DEB Grazer3                                
       Using constant nr629 with value:  1.00000                                                    
       [G3_kappa            ] fraction of energy spent on growth DEB Grazer3                        
       using default value: 0.700000                                                                
       [G3_kappaR           ] fraction of energy spent on gonads DEB Grazer3                        
       Using constant nr630 with value: 0.950000                                                    
       [G3_Ta               ] arrhenius temperature of DEB Grazer3                                  
       using default value:  5800.00                                                                
       [G3_Tah              ] arr temp for upper boundary DEB Grazer3                               
       using default value:  31376.0                                                                
       [G3_Tal              ] arr temp for lower boundary DEB Grazer3                               
       using default value:  45430.0                                                                
       [G3_Th               ] upper boundary of tol range of DEB Grazer3                            
       using default value:  296.000                                                                
       [G3_Tl               ] lower boundary of tol range of DEB Grazer3                            
       using default value:  275.000                                                                
       [G3_GSIupr           ] minimum GSI for spawning of DEB Grazer3                               
       using default value: 0.280000                                                                
       [G3_GSIlwr           ] minimum GSI while spawning of DEB Grazer3                             
       using default value: 0.100000                                                                
       [G3_DoSpawn          ] indication of spawning of DEB Grazer3                                 
       Using constant nr631 with value:  0.00000                                                    
       [G3_rSpawn           ] spawning rate of DEB Grazer3                                          
       Using constant nr632 with value: 0.200000E-01                                                
       [G3_MinSTmp          ] minimum temp for spawning of DEB Grazer3                              
       using default value:  15.0000                                                                
       [G3_Xk               ] halfrate const for food of DEB Grazer3                                
       using default value: 0.223000                                                                
       [G3_Yk               ] halfrate const for TIM of DEB Grazer3                                 
       using default value:  100.000                                                                
       [G3_rMor             ] reference mortality rate of DEB Grazer3                               
       Using constant nr633 with value:  0.00000                                                    
       [G3_cMor             ] length coefficient harvesting rate DEB Grazer3                        
       Using constant nr634 with value:  0.00000                                                    
       [G3_rHrv             ] reference rate of harvesting of DEB Grazer3                           
       Using constant nr635 with value:  0.00000                                                    
       [G3_cHrv             ] length coefficient harvesting rate DEB Grazer3                        
       Using constant nr636 with value:  0.00000                                                    
       [G3_cEC              ] energy to carbon conversion of DEB Grazer3                            
       Using constant nr637 with value: 0.355555E-04                                                
       [G3_cVC              ] volume to carbon conversion of DEB Grazer3                            
       Using constant nr638 with value: 0.480000E-01                                                
       [G3_cAFWC            ] AFD weight to carbon conv of DEB Grazer3                              
       Using constant nr639 with value: 0.400000                                                    
       [G3_cWWC             ] wetweight to carbon conv of DEB Grazer3                               
       using default value: 0.224000E-01                                                            
       [G3_TC               ] C:C ratio of DEB Grazer3                                              
       Using constant nr640 with value:  1.00000                                                    
       [G3_TN               ] N:C ratio of DEB Grazer3                                              
       Using constant nr641 with value: 0.181800                                                    
       [G3_TP               ] P:C ratio of DEB Grazer3                                              
       Using constant nr642 with value: 0.263000E-01                                                
       [G3_TSi              ] Si:C ratio of DEB Grazer3                                             
       Using constant nr643 with value:  0.00000                                                    
       [G3_FrDetS1          ] fraction of DEB Grazer3 detritus into sediment                        
       Using constant nr644 with value:  1.00000                                                    
       [G3_SFSusp           ] DEB Grazer3 pref suspension over deposit feedin                       
       Using constant nr646 with value:  1.00000                                                    
       [G3_PrDet            ] DEB Grazer3 preference for DetC or POC1                               
       Using constant nr647 with value:  0.00000                                                    
       [G3_PrDetS1          ] DEB Grazer3 preference for DetCS1                                     
       Using constant nr648 with value:  0.00000                                                    
       [G3_FFDet            ] Faecal fraction of DetC for DEB Grazer3                               
       Using constant nr649 with value: 0.500000                                                    
       [G3_FFDetS1          ] Faecal fraction of DetCS1 for DEB Grazer3                             
       Using constant nr650 with value: 0.500000                                                    
       [G3_minFood          ] Minimum amount of food for DEB Grazer3                                
       using default value:  0.00000                                                                
       [DetC                ] Detritus Carbon  (DetC)                                               
       using default value:  0.00000                                                                
       [DetN                ] Detritus Nitrogen (DetN)                                              
       using default value:  0.00000                                                                
       [DetP                ] Detritus Phosphorus (DetP)                                            
       using default value:  0.00000                                                                
       [DetSi               ] Detritus Silica (DetSi)                                               
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  11                                                                       
       [Opal                ] Opal-Si                                                               
       Using substance nr   8                                                                       
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [DetSiS1             ] DetSi in layer S1                                                     
       Using substance nr  27                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       using default value:  0.00000                                                                
       [Diat                ] Diatoms                                                               
       using default value:  0.00000                                                                
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [F1                  ] Dummy food type 1                                                     
       using default value:  0.00000                                                                
       [F2                  ] Dummy food type 2                                                     
       using default value:  0.00000                                                                
       [F3                  ] Dummy food type 3                                                     
       using default value:  0.00000                                                                
       [F4                  ] Dummy food type 4                                                     
       using default value:  0.00000                                                                
       [F5                  ] Dummy food type 5                                                     
       using default value:  0.00000                                                                
       [F6                  ] Dummy food type 6                                                     
       using default value:  0.00000                                                                
       [F7                  ] Dummy food type 7                                                     
       using default value:  0.00000                                                                
       [F8                  ] Dummy food type 8                                                     
       using default value:  0.00000                                                                
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [NCRMDI_E            ] N:C ratio algae type 01                                               
       Using constant nr 94 with value: 0.255000                                                    
       [NCRMDI_N            ] N:C ratio algae type 02                                               
       Using constant nr 95 with value: 0.125000                                                    
       [NCRMDI_P            ] N:C ratio algae type 03                                               
       Using constant nr 96 with value: 0.150000                                                    
       [NCRMFL_E            ] N:C ratio algae type 04                                               
       Using constant nr 97 with value: 0.200000                                                    
       [NCRMFL_N            ] N:C ratio algae type 05                                               
       Using constant nr 98 with value: 0.140000                                                    
       [NCRMFL_P            ] N:C ratio algae type 06                                               
       Using constant nr 99 with value: 0.200000                                                    
       [NCRDIN_E            ] N:C ratio algae type 07                                               
       Using constant nr100 with value: 0.162500                                                    
       [NCRDIN_N            ] N:C ratio algae type 08                                               
       Using constant nr101 with value: 0.125000                                                    
       [NCRDIN_P            ] N:C ratio algae type 09                                               
       Using constant nr102 with value: 0.137500                                                    
       [NCRPHA_E            ] N:C ratio algae type 10                                               
       Using constant nr103 with value: 0.187500                                                    
       [NCRPHA_N            ] N:C ratio algae type 11                                               
       Using constant nr104 with value: 0.135000                                                    
       [NCRPHA_P            ] N:C ratio algae type 12                                               
       Using constant nr105 with value: 0.187500                                                    
       [NCRAlg13            ] N:C ratio algae type 13                                               
       using default value: 0.200000                                                                
       [NCRAlg14            ] N:C ratio algae type 14                                               
       using default value: 0.200000                                                                
       [NCRAlg15            ] N:C ratio algae type 15                                               
       using default value: 0.200000                                                                
       [NCRAlg16            ] N:C ratio algae type 16                                               
       using default value: 0.200000                                                                
       [NCRAlg17            ] N:C ratio algae type 17                                               
       using default value: 0.200000                                                                
       [NCRAlg18            ] N:C ratio algae type 18                                               
       using default value: 0.200000                                                                
       [NCRAlg19            ] N:C ratio algae type 19                                               
       using default value: 0.200000                                                                
       [NCRAlg20            ] N:C ratio algae type 20                                               
       using default value: 0.200000                                                                
       [NCRAlg21            ] N:C ratio algae type 21                                               
       using default value: 0.200000                                                                
       [NCRAlg22            ] N:C ratio algae type 22                                               
       using default value: 0.200000                                                                
       [NCRAlg23            ] N:C ratio algae type 23                                               
       using default value: 0.200000                                                                
       [NCRAlg24            ] N:C ratio algae type 24                                               
       using default value: 0.200000                                                                
       [NCRAlg25            ] N:C ratio algae type 25                                               
       using default value: 0.200000                                                                
       [NCRAlg26            ] N:C ratio algae type 26                                               
       using default value: 0.200000                                                                
       [NCRAlg27            ] N:C ratio algae type 27                                               
       using default value: 0.200000                                                                
       [NCRAlg28            ] N:C ratio algae type 28                                               
       using default value: 0.200000                                                                
       [NCRAlg29            ] N:C ratio algae type 29                                               
       using default value: 0.200000                                                                
       [NCRAlg30            ] N:C ratio algae type 30                                               
       using default value: 0.200000                                                                
       [NCRatF1             ] N:C ratio Dummy food type 1                                           
       using default value: 0.400000                                                                
       [NCRatF2             ] N:C ratio Dummy food type 2                                           
       using default value: 0.400000                                                                
       [NCRatF3             ] N:C ratio Dummy food type 3                                           
       using default value: 0.400000                                                                
       [NCRatF4             ] N:C ratio Dummy food type 4                                           
       using default value: 0.400000                                                                
       [NCRatF5             ] N:C ratio Dummy food type 5                                           
       using default value: 0.400000                                                                
       [NCRatF6             ] N:C ratio Dummy food type 6                                           
       using default value: 0.400000                                                                
       [NCRatF7             ] N:C ratio Dummy food type 7                                           
       using default value: 0.400000                                                                
       [NCRatF8             ] N:C ratio Dummy food type 8                                           
       using default value: 0.400000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [PCRMDI_E            ] P:C ratio algae type 01                                               
       Using constant nr106 with value: 0.315000E-01                                                
       [PCRMDI_N            ] P:C ratio algae type 02                                               
       Using constant nr107 with value: 0.175000E-01                                                
       [PCRMDI_P            ] P:C ratio algae type 03                                               
       Using constant nr108 with value: 0.112500E-01                                                
       [PCRMFL_E            ] P:C ratio algae type 04                                               
       Using constant nr109 with value: 0.200000E-01                                                
       [PCRMFL_N            ] P:C ratio algae type 05                                               
       Using constant nr110 with value: 0.150000E-01                                                
       [PCRMFL_P            ] P:C ratio algae type 06                                               
       Using constant nr111 with value: 0.112500E-01                                                
       [PCRDIN_E            ] P:C ratio algae type 07                                               
       Using constant nr112 with value: 0.167500E-01                                                
       [PCRDIN_N            ] P:C ratio algae type 08                                               
       Using constant nr113 with value: 0.150000E-01                                                
       [PCRDIN_P            ] P:C ratio algae type 09                                               
       Using constant nr114 with value: 0.130000E-01                                                
       [PCRPHA_E            ] P:C ratio algae type 10                                               
       Using constant nr115 with value: 0.225000E-01                                                
       [PCRPHA_N            ] P:C ratio algae type 11                                               
       Using constant nr116 with value: 0.212500E-01                                                
       [PCRPHA_P            ] P:C ratio algae type 12                                               
       Using constant nr117 with value: 0.112500E-01                                                
       [PCRAlg13            ] P:C ratio algae type 13                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg14            ] P:C ratio algae type 14                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg15            ] P:C ratio algae type 15                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg16            ] P:C ratio algae type 16                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg17            ] P:C ratio algae type 17                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg18            ] P:C ratio algae type 18                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg19            ] P:C ratio algae type 19                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg20            ] P:C ratio algae type 20                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg21            ] P:C ratio algae type 21                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg22            ] P:C ratio algae type 22                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg23            ] P:C ratio algae type 23                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg24            ] P:C ratio algae type 24                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg25            ] P:C ratio algae type 25                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg26            ] P:C ratio algae type 26                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg27            ] P:C ratio algae type 27                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg28            ] P:C ratio algae type 28                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg29            ] P:C ratio algae type 29                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg30            ] P:C ratio algae type 30                                               
       using default value: 0.200000E-01                                                            
       [PCRatF1             ] P:C ratio Dummy food type 1                                           
       using default value: 0.200000E-01                                                            
       [PCRatF2             ] P:C ratio Dummy food type 2                                           
       using default value: 0.200000E-01                                                            
       [PCRatF3             ] P:C ratio Dummy food type 3                                           
       using default value: 0.200000E-01                                                            
       [PCRatF4             ] P:C ratio Dummy food type 4                                           
       using default value: 0.200000E-01                                                            
       [PCRatF5             ] P:C ratio Dummy food type 5                                           
       using default value: 0.200000E-01                                                            
       [PCRatF6             ] P:C ratio Dummy food type 6                                           
       using default value: 0.200000E-01                                                            
       [PCRatF7             ] P:C ratio Dummy food type 7                                           
       using default value: 0.200000E-01                                                            
       [PCRatF8             ] P:C ratio Dummy food type 8                                           
       using default value: 0.200000E-01                                                            
       [SCRatGreen          ] Si:C ratio Greens                                                     
       using default value:  0.00000                                                                
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [SCRMDI_E            ] Si:C ratio algae type 01                                              
       Using constant nr118 with value: 0.447000                                                    
       [SCRMDI_N            ] Si:C ratio algae type 02                                              
       Using constant nr119 with value: 0.283000                                                    
       [SCRMDI_P            ] Si:C ratio algae type 03                                              
       Using constant nr120 with value: 0.283000                                                    
       [SCRMFL_E            ] Si:C ratio algae type 04                                              
       Using constant nr121 with value:  0.00000                                                    
       [SCRMFL_N            ] Si:C ratio algae type 05                                              
       Using constant nr122 with value:  0.00000                                                    
       [SCRMFL_P            ] Si:C ratio algae type 06                                              
       Using constant nr123 with value:  0.00000                                                    
       [SCRDIN_E            ] Si:C ratio algae type 07                                              
       Using constant nr124 with value:  0.00000                                                    
       [SCRDIN_N            ] Si:C ratio algae type 08                                              
       Using constant nr125 with value:  0.00000                                                    
       [SCRDIN_P            ] Si:C ratio algae type 09                                              
       Using constant nr126 with value:  0.00000                                                    
       [SCRPHA_E            ] Si:C ratio algae type 10                                              
       Using constant nr127 with value:  0.00000                                                    
       [SCRPHA_N            ] Si:C ratio algae type 11                                              
       Using constant nr128 with value:  0.00000                                                    
       [SCRPHA_P            ] Si:C ratio algae type 12                                              
       Using constant nr129 with value:  0.00000                                                    
       [SCRAlg13            ] Si:C ratio algae type 13                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg14            ] Si:C ratio algae type 14                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg15            ] Si:C ratio algae type 15                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg16            ] Si:C ratio algae type 16                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg17            ] Si:C ratio algae type 17                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg18            ] Si:C ratio algae type 18                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg19            ] Si:C ratio algae type 19                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg20            ] Si:C ratio algae type 20                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg21            ] Si:C ratio algae type 21                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg22            ] Si:C ratio algae type 22                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg23            ] Si:C ratio algae type 23                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg24            ] Si:C ratio algae type 24                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg25            ] Si:C ratio algae type 25                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg26            ] Si:C ratio algae type 26                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg27            ] Si:C ratio algae type 27                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg28            ] Si:C ratio algae type 28                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg29            ] Si:C ratio algae type 29                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg30            ] Si:C ratio algae type 30                                              
       using default value: 0.200000E-02                                                            
       [SCRatF1             ] Si:C ratio Dummy food type 1                                          
       using default value:  0.00000                                                                
       [SCRatF2             ] Si:C ratio Dummy food type 2                                          
       using default value:  0.00000                                                                
       [SCRatF3             ] Si:C ratio Dummy food type 3                                          
       using default value:  0.00000                                                                
       [SCRatF4             ] Si:C ratio Dummy food type 4                                          
       using default value:  0.00000                                                                
       [SCRatF5             ] Si:C ratio Dummy food type 5                                          
       using default value:  0.00000                                                                
       [SCRatF6             ] Si:C ratio Dummy food type 6                                          
       using default value:  0.00000                                                                
       [SCRatF7             ] Si:C ratio Dummy food type 7                                          
       using default value:  0.00000                                                                
       [SCRatF8             ] Si:C ratio Dummy food type 8                                          
       using default value:  0.00000                                                                
       [G3_PrGrn            ] Preference of DEB Grazer3 for Greens                                  
       using default value:  1.00000                                                                
       [G3_PrDiat           ] Preference of DEB Grazer3 for Diatoms                                 
       using default value:  1.00000                                                                
       [G3_PrAlg01          ] Preference of DEB Grazer3 for algae type 01                           
       Using constant nr651 with value:  1.00000                                                    
       [G3_PrAlg02          ] Preference of DEB Grazer3 for algae type 02                           
       Using constant nr652 with value:  1.00000                                                    
       [G3_PrAlg03          ] Preference of DEB Grazer3 for algae type 03                           
       Using constant nr653 with value:  1.00000                                                    
       [G3_PrAlg04          ] Preference of DEB Grazer3 for algae type 04                           
       Using constant nr654 with value:  1.00000                                                    
       [G3_PrAlg05          ] Preference of DEB Grazer3 for algae type 05                           
       Using constant nr655 with value:  1.00000                                                    
       [G3_PrAlg06          ] Preference of DEB Grazer3 for algae type 06                           
       Using constant nr656 with value:  1.00000                                                    
       [G3_PrAlg07          ] Preference of DEB Grazer3 for algae type 07                           
       Using constant nr657 with value:  1.00000                                                    
       [G3_PrAlg08          ] Preference of DEB Grazer3 for algae type 08                           
       Using constant nr658 with value:  1.00000                                                    
       [G3_PrAlg09          ] Preference of DEB Grazer3 for algae type 09                           
       Using constant nr659 with value:  1.00000                                                    
       [G3_PrAlg10          ] Preference of DEB Grazer3 for algae type 10                           
       Using constant nr660 with value:  0.00000                                                    
       [G3_PrAlg11          ] Preference of DEB Grazer3 for algae type 11                           
       Using constant nr661 with value:  0.00000                                                    
       [G3_PrAlg12          ] Preference of DEB Grazer3 for algae type 12                           
       Using constant nr662 with value:  0.00000                                                    
       [G3_PrAlg13          ] Preference of DEB Grazer3 for algae type 13                           
       Using constant nr663 with value:  1.00000                                                    
       [G3_PrAlg14          ] Preference of DEB Grazer3 for algae type 14                           
       Using constant nr664 with value:  1.00000                                                    
       [G3_PrAlg15          ] Preference of DEB Grazer3 for algae type 15                           
       Using constant nr665 with value:  1.00000                                                    
       [G3_PrAlg16          ] Preference of DEB Grazer3 for algae type 16                           
       Using constant nr666 with value:  0.00000                                                    
       [G3_PrAlg17          ] Preference of DEB Grazer3 for algae type 17                           
       Using constant nr667 with value:  0.00000                                                    
       [G3_PrAlg18          ] Preference of DEB Grazer3 for algae type 18                           
       Using constant nr668 with value:  0.00000                                                    
       [G3_PrAlg19          ] Preference of DEB Grazer3 for algae type 19                           
       using default value:  1.00000                                                                
       [G3_PrAlg20          ] Preference of DEB Grazer3 for algae type 20                           
       using default value:  1.00000                                                                
       [G3_PrAlg21          ] Preference of DEB Grazer3 for algae type 21                           
       using default value:  1.00000                                                                
       [G3_PrAlg22          ] Preference of DEB Grazer3 for algae type 22                           
       using default value:  1.00000                                                                
       [G3_PrAlg23          ] Preference of DEB Grazer3 for algae type 23                           
       using default value:  1.00000                                                                
       [G3_PrAlg24          ] Preference of DEB Grazer3 for algae type 24                           
       using default value:  1.00000                                                                
       [G3_PrAlg25          ] Preference of DEB Grazer3 for algae type 25                           
       using default value:  1.00000                                                                
       [G3_PrAlg26          ] Preference of DEB Grazer3 for algae type 26                           
       using default value:  1.00000                                                                
       [G3_PrAlg27          ] Preference of DEB Grazer3 for algae type 27                           
       using default value:  1.00000                                                                
       [G3_PrAlg28          ] Preference of DEB Grazer3 for algae type 28                           
       using default value:  1.00000                                                                
       [G3_PrAlg29          ] Preference of DEB Grazer3 for algae type 29                           
       using default value:  1.00000                                                                
       [G3_PrAlg30          ] Preference of DEB Grazer3 for algae type 30                           
       using default value:  1.00000                                                                
       [G3_Pr1              ] Preference of DEB Grazer3 for Dummy Food1                             
       using default value:  0.00000                                                                
       [G3_Pr2              ] Preference of DEB Grazer3 for Dummy Food2                             
       using default value:  0.00000                                                                
       [G3_Pr3              ] Preference of DEB Grazer3 for Dummy Food3                             
       using default value:  0.00000                                                                
       [G3_Pr4              ] Preference of DEB Grazer3 for Dummy Food4                             
       using default value:  0.00000                                                                
       [G3_Pr5              ] Preference of DEB Grazer3 for Dummy Food5                             
       using default value:  0.00000                                                                
       [G3_Pr6              ] Preference of DEB Grazer3 for Dummy Food6                             
       using default value:  0.00000                                                                
       [G3_Pr7              ] Preference of DEB Grazer3 for Dummy Food7                             
       using default value:  0.00000                                                                
       [G3_Pr8              ] Preference of DEB Grazer3 for Dummy Food8                             
       using default value:  0.00000                                                                
       [BenGrn              ] Use 0 [pelagic] or 1 [benthic] Greens                                 
       using default value:  0.00000                                                                
       [BenDiat             ] Use 0 [pelagic] or 1 [benthic] Diatoms                                
       using default value:  0.00000                                                                
       [BenAlg01            ] Use 0 [pelagic] or 1 [benthic] algae type 01                          
       using default value:  0.00000                                                                
       [BenAlg02            ] Use 0 [pelagic] or 1 [benthic] algae type 02                          
       using default value:  0.00000                                                                
       [BenAlg03            ] Use 0 [pelagic] or 1 [benthic] algae type 03                          
       using default value:  0.00000                                                                
       [BenAlg04            ] Use 0 [pelagic] or 1 [benthic] algae type 04                          
       using default value:  0.00000                                                                
       [BenAlg05            ] Use 0 [pelagic] or 1 [benthic] algae type 05                          
       using default value:  0.00000                                                                
       [BenAlg06            ] Use 0 [pelagic] or 1 [benthic] algae type 06                          
       using default value:  0.00000                                                                
       [BenAlg07            ] Use 0 [pelagic] or 1 [benthic] algae type 07                          
       using default value:  0.00000                                                                
       [BenAlg08            ] Use 0 [pelagic] or 1 [benthic] algae type 08                          
       using default value:  0.00000                                                                
       [BenAlg09            ] Use 0 [pelagic] or 1 [benthic] algae type 09                          
       using default value:  0.00000                                                                
       [BenAlg10            ] Use 0 [pelagic] or 1 [benthic] algae type 10                          
       using default value:  0.00000                                                                
       [BenAlg11            ] Use 0 [pelagic] or 1 [benthic] algae type 11                          
       using default value:  0.00000                                                                
       [BenAlg12            ] Use 0 [pelagic] or 1 [benthic] algae type 12                          
       using default value:  0.00000                                                                
       [BenAlg13            ] Use 0 [pelagic] or 1 [benthic] algae type 13                          
       using default value:  0.00000                                                                
       [BenAlg14            ] Use 0 [pelagic] or 1 [benthic] algae type 14                          
       using default value:  0.00000                                                                
       [BenAlg15            ] Use 0 [pelagic] or 1 [benthic] algae type 15                          
       using default value:  0.00000                                                                
       [BenAlg16            ] Use 0 [pelagic] or 1 [benthic] algae type 16                          
       using default value:  0.00000                                                                
       [BenAlg17            ] Use 0 [pelagic] or 1 [benthic] algae type 17                          
       using default value:  0.00000                                                                
       [BenAlg18            ] Use 0 [pelagic] or 1 [benthic] algae type 18                          
       using default value:  0.00000                                                                
       [BenAlg19            ] Use 0 [pelagic] or 1 [benthic] algae type 19                          
       using default value:  0.00000                                                                
       [BenAlg20            ] Use 0 [pelagic] or 1 [benthic] algae type 20                          
       using default value:  0.00000                                                                
       [BenAlg21            ] Use 0 [pelagic] or 1 [benthic] algae type 21                          
       using default value:  0.00000                                                                
       [BenAlg22            ] Use 0 [pelagic] or 1 [benthic] algae type 22                          
       using default value:  0.00000                                                                
       [BenAlg23            ] Use 0 [pelagic] or 1 [benthic] algae type 23                          
       using default value:  0.00000                                                                
       [BenAlg24            ] Use 0 [pelagic] or 1 [benthic] algae type 24                          
       using default value:  0.00000                                                                
       [BenAlg25            ] Use 0 [pelagic] or 1 [benthic] algae type 25                          
       using default value:  0.00000                                                                
       [BenAlg26            ] Use 0 [pelagic] or 1 [benthic] algae type 26                          
       using default value:  0.00000                                                                
       [BenAlg27            ] Use 0 [pelagic] or 1 [benthic] algae type 27                          
       using default value:  0.00000                                                                
       [BenAlg28            ] Use 0 [pelagic] or 1 [benthic] algae type 28                          
       using default value:  0.00000                                                                
       [BenAlg29            ] Use 0 [pelagic] or 1 [benthic] algae type 29                          
       using default value:  0.00000                                                                
       [BenAlg30            ] Use 0 [pelagic] or 1 [benthic] algae type 30                          
       using default value:  0.00000                                                                
       [Ben1                ] Use 0 [pelagic] or 1 [benthic] Dummy Food1                            
       using default value:  1.00000                                                                
       [Ben2                ] Use 0 [pelagic] or 1 [benthic] Dummy Food2                            
       using default value:  1.00000                                                                
       [Ben3                ] Use 0 [pelagic] or 1 [benthic] Dummy Food3                            
       using default value:  1.00000                                                                
       [Ben4                ] Use 0 [pelagic] or 1 [benthic] Dummy Food4                            
       using default value:  1.00000                                                                
       [Ben5                ] Use 0 [pelagic] or 1 [benthic] Dummy Food5                            
       using default value:  1.00000                                                                
       [Ben6                ] Use 0 [pelagic] or 1 [benthic] Dummy Food6                            
       using default value:  1.00000                                                                
       [Ben7                ] Use 0 [pelagic] or 1 [benthic] Dummy Food7                            
       using default value:  1.00000                                                                
       [Ben8                ] Use 0 [pelagic] or 1 [benthic] Dummy Food8                            
       using default value:  1.00000                                                                
       [G3_FFGrn            ]  Faecal fraction Greens for DEB Grazer3                               
       using default value: 0.500000                                                                
       [G3_FFDiat           ]  Faecal fraction Diatoms for DEB Grazer3                              
       using default value: 0.500000                                                                
       [G3_ALGFF01          ]  Faecal fraction Alg01 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF02          ]  Faecal fraction Alg02 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF03          ]  Faecal fraction Alg03 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF04          ]  Faecal fraction Alg04 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF05          ]  Faecal fraction Alg05 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF06          ]  Faecal fraction Alg06 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF07          ]  Faecal fraction Alg07 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF08          ]  Faecal fraction Alg08 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF09          ]  Faecal fraction Alg09 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF10          ]  Faecal fraction Alg10 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF11          ]  Faecal fraction Alg11 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF12          ]  Faecal fraction Alg12 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF13          ]  Faecal fraction Alg13 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF14          ]  Faecal fraction Alg14 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF15          ]  Faecal fraction Alg15 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF16          ]  Faecal fraction Alg16 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF17          ]  Faecal fraction Alg17 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF18          ]  Faecal fraction Alg18 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF19          ]  Faecal fraction Alg19 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF20          ]  Faecal fraction Alg20 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF21          ]  Faecal fraction Alg21 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF22          ]  Faecal fraction Alg22 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF23          ]  Faecal fraction Alg23 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF24          ]  Faecal fraction Alg24 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF25          ]  Faecal fraction Alg25 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF26          ]  Faecal fraction Alg26 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF27          ]  Faecal fraction Alg27 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF28          ]  Faecal fraction Alg28 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF29          ]  Faecal fraction Alg29 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_ALGFF30          ]  Faecal fraction Alg30 for DEB Grazer3                                
       using default value: 0.500000                                                                
       [G3_FF01             ]  Faecal fraction Dummy Food1 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF02             ]  Faecal fraction Dummy Food2 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF03             ]  Faecal fraction Dummy Food3 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF04             ]  Faecal fraction Dummy Food4 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF05             ]  Faecal fraction Dummy Food5 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF06             ]  Faecal fraction Dummy Food6 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF07             ]  Faecal fraction Dummy Food7 for DEB Grazer3                          
       using default value: 0.500000                                                                
       [G3_FF08             ]  Faecal fraction Dummy Food8 for DEB Grazer3                          
       using default value: 0.500000                                                                
                                                                                                    
 Input for [DEBGRZ_M            ] Dynamics of DEB Mussel (def: benthic V1-morphs)                   
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [TotalDepth          ] total depth water column                                              
       Using output from proces [TotDepth            ]                                              
       [TIM                 ] total inorganic matter                                                
       Using output from proces [Compos              ]                                              
       [SWDetTyp            ] option for POX (value must not be changed)                            
       using default value:  1.00000                                                                
       [M_SwV1              ] use 0 [ISO-morphs] or 1 [V1-morphs]                                   
       Using constant nr585 with value:  1.00000                                                    
       [M_SwBEN             ] Use 0 [pelagic] or 1 [benthic] for DEB Mussel                         
       Using constant nr602 with value:  1.00000                                                    
       [Mussel_V            ] conc struct biomass of DEB Mussel                                     
       Using substance nr  32                                                                       
       [Mussel_E            ] conc energy reserve of DEB Mussel                                     
       Using substance nr  33                                                                       
       [Mussel_R            ] conc gonadal mass of DEB Mussel                                       
       Using substance nr  34                                                                       
       [Mussel_N            ] number of individual DEB Mussel                                       
       Using substance nr  35                                                                       
       [M_Lref              ] ref length of DEB Mussel  (only for V1morphs)                         
       Using constant nr669 with value:  1.50000                                                    
       [M_Dummy             ] dummy constant for DEB Mussel                                         
       Using constant nr586 with value:  1.00000                                                    
       [M_Vb                ] volume at birth individual DEB Mussel                                 
       Using constant nr670 with value: 0.100000E-05                                                
       [M_Vp                ] volume at start of repro stage ind DEB Mussel                         
       Using constant nr671 with value: 0.600000E-01                                                
       [M_shape             ] shape coefficient of DEB Mussel                                       
       Using constant nr672 with value: 0.437000                                                    
       [M_Em                ] maximum storage density of DEB Mussel                                 
       Using constant nr673 with value:  1136.00                                                    
       [M_Eg                ] volume-spec costs for growth of DEB Mussel                            
       Using constant nr674 with value:  1900.00                                                    
       [M_Pm                ] respiration rate constant of DEB Mussel                               
       Using constant nr675 with value:  24.0000                                                    
       [M_JXm               ] max ingestion rate of DEB Mussel                                      
       Using constant nr676 with value:  85.0000                                                    
       [M_kappaI            ] ingestion efficiency of DEB Mussel                                    
       Using constant nr587 with value:  1.00000                                                    
       [M_kappaA            ] assimilation efficiency of DEB Mussel                                 
       Using constant nr588 with value: 0.800000                                                    
       [M_kappa             ] fraction of energy spent on growth DEB Mussel                         
       Using constant nr677 with value: 0.880000                                                    
       [M_kappaR            ] fraction of energy spent on gonads DEB Mussel                         
       Using constant nr678 with value: 0.120000                                                    
       [M_Ta                ] arrhenius temperature of DEB Mussel                                   
       Using constant nr679 with value:  9500.00                                                    
       [M_Tah               ] arr temp for upper boundary DEB Mussel                                
       Using constant nr680 with value:  27079.0                                                    
       [M_Tal               ] arr temp for lower boundary DEB Mussel                                
       Using constant nr681 with value:  57048.0                                                    
       [M_Th                ] upper boundary of tolerance range of DEB Mussel                       
       Using constant nr682 with value:  305.000                                                    
       [M_Tl                ] lower boundary of tolerance range of DEB Mussel                       
       Using constant nr683 with value:  275.000                                                    
       [M_GSIupr            ] minimum GSI for spawning of DEB Mussel                                
       Using constant nr684 with value: 0.120000E-01                                                
       [M_GSIlwr            ] minimum GSI while spawning of DEB Mussel                              
       Using constant nr685 with value: 0.100000                                                    
       [M_DoSpawn           ] indication of spawning of DEB Mussel                                  
       Using constant nr589 with value:  0.00000                                                    
       [M_rSpawn            ] spawning rate of DEB Mussel                                           
       Using constant nr590 with value: 0.200000E-01                                                
       [M_MinSTmp           ] minimum temperature for spawning of DEB Mussel                        
       Using constant nr686 with value:  12.0000                                                    
       [M_Xk                ] halfrate const for food of DEB Mussel                                 
       Using constant nr687 with value: 0.100000                                                    
       [M_Yk                ] halfrate const for TIM of DEB Mussel                                  
       Using constant nr688 with value:  100.000                                                    
       [M_rMor              ] reference mortality rate of DEB Mussel                                
       Using constant nr689 with value: 0.485000E-03                                                
       [M_cMor              ] length coefficient harvesting rate DEB Mussel                         
       Using constant nr591 with value:  0.00000                                                    
       [M_rHrv              ] reference rate of harvesting of DEB Mussel                            
       Using constant nr592 with value:  0.00000                                                    
       [M_cHrv              ] length coefficient harvesting rate DEB Mussel                         
       Using constant nr593 with value:  0.00000                                                    
       [M_cEC               ] energy to carbon conversion of DEB Mussel                             
       Using constant nr594 with value: 0.174000E-04                                                
       [M_cVC               ] volume to carbon conversion of DEB Mussel                             
       Using constant nr595 with value: 0.480000E-01                                                
       [M_cAFWC             ] AFD weight to carbon conv of DEB Mussel                               
       Using constant nr596 with value: 0.400000                                                    
       [M_cWWC              ] wetweight to carbon conv of DEB Mussel                                
       Using constant nr690 with value: 0.224000E-01                                                
       [M_TC                ] C:C ratio of DEB Mussel                                               
       Using constant nr597 with value:  1.00000                                                    
       [M_TN                ] N:C ratio of DEB Mussel                                               
       Using constant nr598 with value: 0.181800                                                    
       [M_TP                ] P:C ratio of DEB Mussel                                               
       Using constant nr599 with value: 0.263000E-01                                                
       [M_TSi               ] Si:C ratio of DEB Mussel                                              
       Using constant nr600 with value:  0.00000                                                    
       [M_FrDetS1           ] fraction of DEB Mussel detritus into sediment                         
       Using constant nr601 with value:  1.00000                                                    
       [M_SFSusp            ] DEB Mussel pref suspension over deposit feeding                       
       Using constant nr603 with value:  1.00000                                                    
       [M_PrDet             ] DEB Mussel preference for DetC or POC1                                
       Using constant nr604 with value:  0.00000                                                    
       [M_PrDetS1           ] DEB Mussel preference for DetCS1                                      
       Using constant nr605 with value:  0.00000                                                    
       [M_FFDet             ] Faecal fraction of DetC for DEB Mussel                                
       Using constant nr606 with value: 0.500000                                                    
       [M_FFDetS1           ] Faecal fraction of DetCS1 for DEB Mussel                              
       Using constant nr607 with value: 0.500000                                                    
       [M_minFood           ] Minimum amount of food for DEB Mussel                                 
       using default value:  0.00000                                                                
       [DetC                ] Detritus Carbon  (DetC)                                               
       using default value:  0.00000                                                                
       [DetN                ] Detritus Nitrogen (DetN)                                              
       using default value:  0.00000                                                                
       [DetP                ] Detritus Phosphorus (DetP)                                            
       using default value:  0.00000                                                                
       [DetSi               ] Detritus Silica (DetSi)                                               
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  11                                                                       
       [POSi1               ] dummy fast detritus silicium                                          
       using default value:  0.00000                                                                
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [DetSiS1             ] DetSi in layer S1                                                     
       Using substance nr  27                                                                       
       [Green               ] Algae (non-Diatoms)                                                   
       using default value:  0.00000                                                                
       [Diat                ] Diatoms                                                               
       using default value:  0.00000                                                                
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [F1                  ] Dummy food type 1                                                     
       using default value:  0.00000                                                                
       [F2                  ] Dummy food type 2                                                     
       using default value:  0.00000                                                                
       [F3                  ] Dummy food type 3                                                     
       using default value:  0.00000                                                                
       [F4                  ] Dummy food type 4                                                     
       using default value:  0.00000                                                                
       [F5                  ] Dummy food type 5                                                     
       using default value:  0.00000                                                                
       [F6                  ] Dummy food type 6                                                     
       using default value:  0.00000                                                                
       [F7                  ] Dummy food type 7                                                     
       using default value:  0.00000                                                                
       [F8                  ] Dummy food type 8                                                     
       using default value:  0.00000                                                                
       [NCRatGreen          ] N:C ratio Greens                                                      
       using default value: 0.160000                                                                
       [NCRatDiat           ] N:C ratio Diatoms                                                     
       using default value: 0.160000                                                                
       [NCRMDI_E            ] N:C ratio algae type 01                                               
       Using constant nr 94 with value: 0.255000                                                    
       [NCRMDI_N            ] N:C ratio algae type 02                                               
       Using constant nr 95 with value: 0.125000                                                    
       [NCRMDI_P            ] N:C ratio algae type 03                                               
       Using constant nr 96 with value: 0.150000                                                    
       [NCRMFL_E            ] N:C ratio algae type 04                                               
       Using constant nr 97 with value: 0.200000                                                    
       [NCRMFL_N            ] N:C ratio algae type 05                                               
       Using constant nr 98 with value: 0.140000                                                    
       [NCRMFL_P            ] N:C ratio algae type 06                                               
       Using constant nr 99 with value: 0.200000                                                    
       [NCRDIN_E            ] N:C ratio algae type 07                                               
       Using constant nr100 with value: 0.162500                                                    
       [NCRDIN_N            ] N:C ratio algae type 08                                               
       Using constant nr101 with value: 0.125000                                                    
       [NCRDIN_P            ] N:C ratio algae type 09                                               
       Using constant nr102 with value: 0.137500                                                    
       [NCRPHA_E            ] N:C ratio algae type 10                                               
       Using constant nr103 with value: 0.187500                                                    
       [NCRPHA_N            ] N:C ratio algae type 11                                               
       Using constant nr104 with value: 0.135000                                                    
       [NCRPHA_P            ] N:C ratio algae type 12                                               
       Using constant nr105 with value: 0.187500                                                    
       [NCRAlg13            ] N:C ratio algae type 13                                               
       using default value: 0.200000                                                                
       [NCRAlg14            ] N:C ratio algae type 14                                               
       using default value: 0.200000                                                                
       [NCRAlg15            ] N:C ratio algae type 15                                               
       using default value: 0.200000                                                                
       [NCRAlg16            ] N:C ratio algae type 16                                               
       using default value: 0.200000                                                                
       [NCRAlg17            ] N:C ratio algae type 17                                               
       using default value: 0.200000                                                                
       [NCRAlg18            ] N:C ratio algae type 18                                               
       using default value: 0.200000                                                                
       [NCRAlg19            ] N:C ratio algae type 19                                               
       using default value: 0.200000                                                                
       [NCRAlg20            ] N:C ratio algae type 20                                               
       using default value: 0.200000                                                                
       [NCRAlg21            ] N:C ratio algae type 21                                               
       using default value: 0.200000                                                                
       [NCRAlg22            ] N:C ratio algae type 22                                               
       using default value: 0.200000                                                                
       [NCRAlg23            ] N:C ratio algae type 23                                               
       using default value: 0.200000                                                                
       [NCRAlg24            ] N:C ratio algae type 24                                               
       using default value: 0.200000                                                                
       [NCRAlg25            ] N:C ratio algae type 25                                               
       using default value: 0.200000                                                                
       [NCRAlg26            ] N:C ratio algae type 26                                               
       using default value: 0.200000                                                                
       [NCRAlg27            ] N:C ratio algae type 27                                               
       using default value: 0.200000                                                                
       [NCRAlg28            ] N:C ratio algae type 28                                               
       using default value: 0.200000                                                                
       [NCRAlg29            ] N:C ratio algae type 29                                               
       using default value: 0.200000                                                                
       [NCRAlg30            ] N:C ratio algae type 30                                               
       using default value: 0.200000                                                                
       [NCRatF1             ] N:C ratio Dummy food type 1                                           
       using default value: 0.400000                                                                
       [NCRatF2             ] N:C ratio Dummy food type 2                                           
       using default value: 0.400000                                                                
       [NCRatF3             ] N:C ratio Dummy food type 3                                           
       using default value: 0.400000                                                                
       [NCRatF4             ] N:C ratio Dummy food type 4                                           
       using default value: 0.400000                                                                
       [NCRatF5             ] N:C ratio Dummy food type 5                                           
       using default value: 0.400000                                                                
       [NCRatF6             ] N:C ratio Dummy food type 6                                           
       using default value: 0.400000                                                                
       [NCRatF7             ] N:C ratio Dummy food type 7                                           
       using default value: 0.400000                                                                
       [NCRatF8             ] N:C ratio Dummy food type 8                                           
       using default value: 0.400000                                                                
       [PCRatGreen          ] P:C ratio Greens                                                      
       using default value: 0.200000E-01                                                            
       [PCRatDiat           ] P:C ratio Diatoms                                                     
       using default value: 0.200000E-01                                                            
       [PCRMDI_E            ] P:C ratio algae type 01                                               
       Using constant nr106 with value: 0.315000E-01                                                
       [PCRMDI_N            ] P:C ratio algae type 02                                               
       Using constant nr107 with value: 0.175000E-01                                                
       [PCRMDI_P            ] P:C ratio algae type 03                                               
       Using constant nr108 with value: 0.112500E-01                                                
       [PCRMFL_E            ] P:C ratio algae type 04                                               
       Using constant nr109 with value: 0.200000E-01                                                
       [PCRMFL_N            ] P:C ratio algae type 05                                               
       Using constant nr110 with value: 0.150000E-01                                                
       [PCRMFL_P            ] P:C ratio algae type 06                                               
       Using constant nr111 with value: 0.112500E-01                                                
       [PCRDIN_E            ] P:C ratio algae type 07                                               
       Using constant nr112 with value: 0.167500E-01                                                
       [PCRDIN_N            ] P:C ratio algae type 08                                               
       Using constant nr113 with value: 0.150000E-01                                                
       [PCRDIN_P            ] P:C ratio algae type 09                                               
       Using constant nr114 with value: 0.130000E-01                                                
       [PCRPHA_E            ] P:C ratio algae type 10                                               
       Using constant nr115 with value: 0.225000E-01                                                
       [PCRPHA_N            ] P:C ratio algae type 11                                               
       Using constant nr116 with value: 0.212500E-01                                                
       [PCRPHA_P            ] P:C ratio algae type 12                                               
       Using constant nr117 with value: 0.112500E-01                                                
       [PCRAlg13            ] P:C ratio algae type 13                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg14            ] P:C ratio algae type 14                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg15            ] P:C ratio algae type 15                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg16            ] P:C ratio algae type 16                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg17            ] P:C ratio algae type 17                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg18            ] P:C ratio algae type 18                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg19            ] P:C ratio algae type 19                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg20            ] P:C ratio algae type 20                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg21            ] P:C ratio algae type 21                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg22            ] P:C ratio algae type 22                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg23            ] P:C ratio algae type 23                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg24            ] P:C ratio algae type 24                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg25            ] P:C ratio algae type 25                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg26            ] P:C ratio algae type 26                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg27            ] P:C ratio algae type 27                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg28            ] P:C ratio algae type 28                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg29            ] P:C ratio algae type 29                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg30            ] P:C ratio algae type 30                                               
       using default value: 0.200000E-01                                                            
       [PCRatF1             ] P:C ratio Dummy food type 1                                           
       using default value: 0.200000E-01                                                            
       [PCRatF2             ] P:C ratio Dummy food type 2                                           
       using default value: 0.200000E-01                                                            
       [PCRatF3             ] P:C ratio Dummy food type 3                                           
       using default value: 0.200000E-01                                                            
       [PCRatF4             ] P:C ratio Dummy food type 4                                           
       using default value: 0.200000E-01                                                            
       [PCRatF5             ] P:C ratio Dummy food type 5                                           
       using default value: 0.200000E-01                                                            
       [PCRatF6             ] P:C ratio Dummy food type 6                                           
       using default value: 0.200000E-01                                                            
       [PCRatF7             ] P:C ratio Dummy food type 7                                           
       using default value: 0.200000E-01                                                            
       [PCRatF8             ] P:C ratio Dummy food type 8                                           
       using default value: 0.200000E-01                                                            
       [SCRatGreen          ] Si:C ratio Greens                                                     
       using default value:  0.00000                                                                
       [SCRatDiat           ] Si:C ratio Diatoms                                                    
       using default value: 0.490000                                                                
       [SCRMDI_E            ] Si:C ratio algae type 01                                              
       Using constant nr118 with value: 0.447000                                                    
       [SCRMDI_N            ] Si:C ratio algae type 02                                              
       Using constant nr119 with value: 0.283000                                                    
       [SCRMDI_P            ] Si:C ratio algae type 03                                              
       Using constant nr120 with value: 0.283000                                                    
       [SCRMFL_E            ] Si:C ratio algae type 04                                              
       Using constant nr121 with value:  0.00000                                                    
       [SCRMFL_N            ] Si:C ratio algae type 05                                              
       Using constant nr122 with value:  0.00000                                                    
       [SCRMFL_P            ] Si:C ratio algae type 06                                              
       Using constant nr123 with value:  0.00000                                                    
       [SCRDIN_E            ] Si:C ratio algae type 07                                              
       Using constant nr124 with value:  0.00000                                                    
       [SCRDIN_N            ] Si:C ratio algae type 08                                              
       Using constant nr125 with value:  0.00000                                                    
       [SCRDIN_P            ] Si:C ratio algae type 09                                              
       Using constant nr126 with value:  0.00000                                                    
       [SCRPHA_E            ] Si:C ratio algae type 10                                              
       Using constant nr127 with value:  0.00000                                                    
       [SCRPHA_N            ] Si:C ratio algae type 11                                              
       Using constant nr128 with value:  0.00000                                                    
       [SCRPHA_P            ] Si:C ratio algae type 12                                              
       Using constant nr129 with value:  0.00000                                                    
       [SCRAlg13            ] Si:C ratio algae type 13                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg14            ] Si:C ratio algae type 14                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg15            ] Si:C ratio algae type 15                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg16            ] Si:C ratio algae type 16                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg17            ] Si:C ratio algae type 17                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg18            ] Si:C ratio algae type 18                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg19            ] Si:C ratio algae type 19                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg20            ] Si:C ratio algae type 20                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg21            ] Si:C ratio algae type 21                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg22            ] Si:C ratio algae type 22                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg23            ] Si:C ratio algae type 23                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg24            ] Si:C ratio algae type 24                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg25            ] Si:C ratio algae type 25                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg26            ] Si:C ratio algae type 26                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg27            ] Si:C ratio algae type 27                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg28            ] Si:C ratio algae type 28                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg29            ] Si:C ratio algae type 29                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg30            ] Si:C ratio algae type 30                                              
       using default value: 0.200000E-02                                                            
       [SCRatF1             ] Si:C ratio Dummy food type 1                                          
       using default value:  0.00000                                                                
       [SCRatF2             ] Si:C ratio Dummy food type 2                                          
       using default value:  0.00000                                                                
       [SCRatF3             ] Si:C ratio Dummy food type 3                                          
       using default value:  0.00000                                                                
       [SCRatF4             ] Si:C ratio Dummy food type 4                                          
       using default value:  0.00000                                                                
       [SCRatF5             ] Si:C ratio Dummy food type 5                                          
       using default value:  0.00000                                                                
       [SCRatF6             ] Si:C ratio Dummy food type 6                                          
       using default value:  0.00000                                                                
       [SCRatF7             ] Si:C ratio Dummy food type 7                                          
       using default value:  0.00000                                                                
       [SCRatF8             ] Si:C ratio Dummy food type 8                                          
       using default value:  0.00000                                                                
       [M_PrGrn             ] Preference of DEB Mussel for Greens                                   
       using default value:  1.00000                                                                
       [M_PrDiat            ] Preference of DEB Mussel for Diatoms                                  
       using default value:  1.00000                                                                
       [M_PrAlg01           ] Preference of DEB Mussel for algae type 01                            
       Using constant nr608 with value:  1.00000                                                    
       [M_PrAlg02           ] Preference of DEB Mussel for algae type 02                            
       Using constant nr609 with value:  1.00000                                                    
       [M_PrAlg03           ] Preference of DEB Mussel for algae type 03                            
       Using constant nr610 with value:  1.00000                                                    
       [M_PrAlg04           ] Preference of DEB Mussel for algae type 04                            
       Using constant nr611 with value:  1.00000                                                    
       [M_PrAlg05           ] Preference of DEB Mussel for algae type 05                            
       Using constant nr612 with value:  1.00000                                                    
       [M_PrAlg06           ] Preference of DEB Mussel for algae type 06                            
       Using constant nr613 with value:  1.00000                                                    
       [M_PrAlg07           ] Preference of DEB Mussel for algae type 07                            
       Using constant nr614 with value:  1.00000                                                    
       [M_PrAlg08           ] Preference of DEB Mussel for algae type 08                            
       Using constant nr615 with value:  1.00000                                                    
       [M_PrAlg09           ] Preference of DEB Mussel for algae type 09                            
       Using constant nr616 with value:  1.00000                                                    
       [M_PrAlg10           ] Preference of DEB Mussel for algae type 10                            
       Using constant nr617 with value:  0.00000                                                    
       [M_PrAlg11           ] Preference of DEB Mussel for algae type 11                            
       Using constant nr618 with value:  0.00000                                                    
       [M_PrAlg12           ] Preference of DEB Mussel for algae type 12                            
       Using constant nr619 with value:  0.00000                                                    
       [M_PrAlg13           ] Preference of DEB Mussel for algae type 13                            
       Using constant nr620 with value:  1.00000                                                    
       [M_PrAlg14           ] Preference of DEB Mussel for algae type 14                            
       Using constant nr621 with value:  1.00000                                                    
       [M_PrAlg15           ] Preference of DEB Mussel for algae type 15                            
       Using constant nr622 with value:  1.00000                                                    
       [M_PrAlg16           ] Preference of DEB Mussel for algae type 16                            
       Using constant nr623 with value:  0.00000                                                    
       [M_PrAlg17           ] Preference of DEB Mussel for algae type 17                            
       Using constant nr624 with value:  0.00000                                                    
       [M_PrAlg18           ] Preference of DEB Mussel for algae type 18                            
       Using constant nr625 with value:  0.00000                                                    
       [M_PrAlg19           ] Preference of DEB Mussel for algae type 19                            
       using default value:  1.00000                                                                
       [M_PrAlg20           ] Preference of DEB Mussel for algae type 20                            
       using default value:  1.00000                                                                
       [M_PrAlg21           ] Preference of DEB Mussel for algae type 21                            
       using default value:  1.00000                                                                
       [M_PrAlg22           ] Preference of DEB Mussel for algae type 22                            
       using default value:  1.00000                                                                
       [M_PrAlg23           ] Preference of DEB Mussel for algae type 23                            
       using default value:  1.00000                                                                
       [M_PrAlg24           ] Preference of DEB Mussel for algae type 24                            
       using default value:  1.00000                                                                
       [M_PrAlg25           ] Preference of DEB Mussel for algae type 25                            
       using default value:  1.00000                                                                
       [M_PrAlg26           ] Preference of DEB Mussel for algae type 26                            
       using default value:  1.00000                                                                
       [M_PrAlg27           ] Preference of DEB Mussel for algae type 27                            
       using default value:  1.00000                                                                
       [M_PrAlg28           ] Preference of DEB Mussel for algae type 28                            
       using default value:  1.00000                                                                
       [M_PrAlg29           ] Preference of DEB Mussel for algae type 29                            
       using default value:  1.00000                                                                
       [M_PrAlg30           ] Preference of DEB Mussel for algae type 30                            
       using default value:  1.00000                                                                
       [M_Pr1               ] Preference of DEB Mussel for Dummy Food1                              
       using default value:  0.00000                                                                
       [M_Pr2               ] Preference of DEB Mussel for Dummy Food2                              
       using default value:  0.00000                                                                
       [M_Pr3               ] Preference of DEB Mussel for Dummy Food3                              
       using default value:  0.00000                                                                
       [M_Pr4               ] Preference of DEB Mussel for Dummy Food4                              
       using default value:  0.00000                                                                
       [M_Pr5               ] Preference of DEB Mussel for Dummy Food5                              
       using default value:  0.00000                                                                
       [M_Pr6               ] Preference of DEB Mussel for Dummy Food6                              
       using default value:  0.00000                                                                
       [M_Pr7               ] Preference of DEB Mussel for Dummy Food7                              
       using default value:  0.00000                                                                
       [M_Pr8               ] Preference of DEB Mussel for Dummy Food8                              
       using default value:  0.00000                                                                
       [BenGrn              ] Use 0 [pelagic] or 1 [benthic] Greens                                 
       using default value:  0.00000                                                                
       [BenDiat             ] Use 0 [pelagic] or 1 [benthic] Diatoms                                
       using default value:  0.00000                                                                
       [BenAlg01            ] Use 0 [pelagic] or 1 [benthic] algae type 01                          
       using default value:  0.00000                                                                
       [BenAlg02            ] Use 0 [pelagic] or 1 [benthic] algae type 02                          
       using default value:  0.00000                                                                
       [BenAlg03            ] Use 0 [pelagic] or 1 [benthic] algae type 03                          
       using default value:  0.00000                                                                
       [BenAlg04            ] Use 0 [pelagic] or 1 [benthic] algae type 04                          
       using default value:  0.00000                                                                
       [BenAlg05            ] Use 0 [pelagic] or 1 [benthic] algae type 05                          
       using default value:  0.00000                                                                
       [BenAlg06            ] Use 0 [pelagic] or 1 [benthic] algae type 06                          
       using default value:  0.00000                                                                
       [BenAlg07            ] Use 0 [pelagic] or 1 [benthic] algae type 07                          
       using default value:  0.00000                                                                
       [BenAlg08            ] Use 0 [pelagic] or 1 [benthic] algae type 08                          
       using default value:  0.00000                                                                
       [BenAlg09            ] Use 0 [pelagic] or 1 [benthic] algae type 09                          
       using default value:  0.00000                                                                
       [BenAlg10            ] Use 0 [pelagic] or 1 [benthic] algae type 10                          
       using default value:  0.00000                                                                
       [BenAlg11            ] Use 0 [pelagic] or 1 [benthic] algae type 11                          
       using default value:  0.00000                                                                
       [BenAlg12            ] Use 0 [pelagic] or 1 [benthic] algae type 12                          
       using default value:  0.00000                                                                
       [BenAlg13            ] Use 0 [pelagic] or 1 [benthic] algae type 13                          
       using default value:  0.00000                                                                
       [BenAlg14            ] Use 0 [pelagic] or 1 [benthic] algae type 14                          
       using default value:  0.00000                                                                
       [BenAlg15            ] Use 0 [pelagic] or 1 [benthic] algae type 15                          
       using default value:  0.00000                                                                
       [BenAlg16            ] Use 0 [pelagic] or 1 [benthic] algae type 16                          
       using default value:  0.00000                                                                
       [BenAlg17            ] Use 0 [pelagic] or 1 [benthic] algae type 17                          
       using default value:  0.00000                                                                
       [BenAlg18            ] Use 0 [pelagic] or 1 [benthic] algae type 18                          
       using default value:  0.00000                                                                
       [BenAlg19            ] Use 0 [pelagic] or 1 [benthic] algae type 19                          
       using default value:  0.00000                                                                
       [BenAlg20            ] Use 0 [pelagic] or 1 [benthic] algae type 20                          
       using default value:  0.00000                                                                
       [BenAlg21            ] Use 0 [pelagic] or 1 [benthic] algae type 21                          
       using default value:  0.00000                                                                
       [BenAlg22            ] Use 0 [pelagic] or 1 [benthic] algae type 22                          
       using default value:  0.00000                                                                
       [BenAlg23            ] Use 0 [pelagic] or 1 [benthic] algae type 23                          
       using default value:  0.00000                                                                
       [BenAlg24            ] Use 0 [pelagic] or 1 [benthic] algae type 24                          
       using default value:  0.00000                                                                
       [BenAlg25            ] Use 0 [pelagic] or 1 [benthic] algae type 25                          
       using default value:  0.00000                                                                
       [BenAlg26            ] Use 0 [pelagic] or 1 [benthic] algae type 26                          
       using default value:  0.00000                                                                
       [BenAlg27            ] Use 0 [pelagic] or 1 [benthic] algae type 27                          
       using default value:  0.00000                                                                
       [BenAlg28            ] Use 0 [pelagic] or 1 [benthic] algae type 28                          
       using default value:  0.00000                                                                
       [BenAlg29            ] Use 0 [pelagic] or 1 [benthic] algae type 29                          
       using default value:  0.00000                                                                
       [BenAlg30            ] Use 0 [pelagic] or 1 [benthic] algae type 30                          
       using default value:  0.00000                                                                
       [Ben1                ] Use 0 [pelagic] or 1 [benthic] Dummy Food1                            
       using default value:  1.00000                                                                
       [Ben2                ] Use 0 [pelagic] or 1 [benthic] Dummy Food2                            
       using default value:  1.00000                                                                
       [Ben3                ] Use 0 [pelagic] or 1 [benthic] Dummy Food3                            
       using default value:  1.00000                                                                
       [Ben4                ] Use 0 [pelagic] or 1 [benthic] Dummy Food4                            
       using default value:  1.00000                                                                
       [Ben5                ] Use 0 [pelagic] or 1 [benthic] Dummy Food5                            
       using default value:  1.00000                                                                
       [Ben6                ] Use 0 [pelagic] or 1 [benthic] Dummy Food6                            
       using default value:  1.00000                                                                
       [Ben7                ] Use 0 [pelagic] or 1 [benthic] Dummy Food7                            
       using default value:  1.00000                                                                
       [Ben8                ] Use 0 [pelagic] or 1 [benthic] Dummy Food8                            
       using default value:  1.00000                                                                
       [M_FFGrn             ]  Faecal fraction Greens for DEB Mussel                                
       using default value: 0.500000                                                                
       [M_FFDiat            ]  Faecal fraction Diatoms for DEB Mussel                               
       using default value: 0.500000                                                                
       [M_ALGFF01           ]  Faecal fraction Alg01 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF02           ]  Faecal fraction Alg02 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF03           ]  Faecal fraction Alg03 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF04           ]  Faecal fraction Alg04 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF05           ]  Faecal fraction Alg05 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF06           ]  Faecal fraction Alg06 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF07           ]  Faecal fraction Alg07 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF08           ]  Faecal fraction Alg08 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF09           ]  Faecal fraction Alg09 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF10           ]  Faecal fraction Alg10 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF11           ]  Faecal fraction Alg11 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF12           ]  Faecal fraction Alg12 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF13           ]  Faecal fraction Alg13 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF14           ]  Faecal fraction Alg14 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF15           ]  Faecal fraction Alg15 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF16           ]  Faecal fraction Alg16 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF17           ]  Faecal fraction Alg17 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF18           ]  Faecal fraction Alg18 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF19           ]  Faecal fraction Alg19 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF20           ]  Faecal fraction Alg20 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF21           ]  Faecal fraction Alg21 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF22           ]  Faecal fraction Alg22 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF23           ]  Faecal fraction Alg23 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF24           ]  Faecal fraction Alg24 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF25           ]  Faecal fraction Alg25 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF26           ]  Faecal fraction Alg26 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF27           ]  Faecal fraction Alg27 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF28           ]  Faecal fraction Alg28 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF29           ]  Faecal fraction Alg29 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_ALGFF30           ]  Faecal fraction Alg30 for DEB Mussel                                 
       using default value: 0.500000                                                                
       [M_FF01              ]  Faecal fraction Dummy Food1 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF02              ]  Faecal fraction Dummy Food2 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF03              ]  Faecal fraction Dummy Food3 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF04              ]  Faecal fraction Dummy Food4 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF05              ]  Faecal fraction Dummy Food5 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF06              ]  Faecal fraction Dummy Food6 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF07              ]  Faecal fraction Dummy Food7 for DEB Mussel                           
       using default value: 0.500000                                                                
       [M_FF08              ]  Faecal fraction Dummy Food8 for DEB Mussel                           
       using default value: 0.500000                                                                
                                                                                                    
 Input for [Secchi              ] Secchi depth for visible-light (370-680nm)                        
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr304 with value: 0.180000                                                    
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [ExtVlODS            ] VL extinction by DOC                                                  
       Using output from proces [Extinc_VLG          ]                                              
       [Chlfa               ] Chlorophyll-a concentration                                           
       Using output from proces [Phy_Blo             ]                                              
       [SW_Uitz             ] Extinction by Uitzicht On (1) or Off (0)                              
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
       [PAConstant          ] Poole-Atkins constant                                                 
       Using constant nr264 with value:  1.70000                                                    
                                                                                                    
 Input for [PosOXY              ] Positive oxygen concentration                                     
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
                                                                                                    
 Input for [AtmDep_PO4          ] Atmospheric deposition PO4                                        
       [fAtmDepPO4          ] atmospheric deposition flux PO4                                       
       Using constant nr256 with value:  0.00000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [PO4                 ] external P concentration                                              
       Using substance nr   6                                                                       
       [sw1AtmDPO4          ] load option 0=all, 1=top, 2=bottom segments                           
       using default value:  1.00000                                                                
       [sw2AtmDPO4          ] maximise withdrawel to mass 0=no, 1=yes                               
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [AtmDep_NO3          ] Atmospheric deposition NO3                                        
       [fAtmDepNO3          ] atmospheric deposition flux NO3                                       
       Using constant nr253 with value:  0.00000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [sw1AtmDNO3          ] load option 0=all, 1=top, 2=bottom segments                           
       using default value:  1.00000                                                                
       [sw2AtmDNO3          ] maximise withdrawel to mass 0=no, 1=yes                               
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [AtmDep_NH4          ] Atmospheric deposition NH4                                        
       [fAtmDepNH4          ] atmospheric deposition flux NH4                                       
       Using constant nr251 with value:  0.00000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   4                                                                       
       [sw1AtmDNH4          ] load option 0=all, 1=top, 2=bottom segments                           
       using default value:  1.00000                                                                
       [sw2AtmDNH4          ] maximise withdrawel to mass 0=no, 1=yes                               
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [UlvaFix             ] Fixation of BLOOM algae at the bottom                             
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TauCrUlva           ] critical shear stress for resuspension ULVA                           
       Using constant nr482 with value:  1.00000                                                    
       [FixGrad             ] gradient of fixation versus shear stress                              
       using default value:  2.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [BloomDepth          ] average depth over Bloom time step                                    
       Using output from proces [DepAve              ]                                              
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [FixMDI_E            ] algae type 01 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_N            ] algae type 02 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_P            ] algae type 03 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_E            ] algae type 04 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_N            ] algae type 05 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_P            ] algae type 06 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_E            ] algae type 07 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_N            ] algae type 08 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_P            ] algae type 09 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_E            ] algae type 10 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_N            ] algae type 11 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_P            ] algae type 12 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg13            ] algae type 13 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg14            ] algae type 14 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg15            ] algae type 15 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg16            ] algae type 16 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg17            ] algae type 17 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg18            ] algae type 18 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg19            ] algae type 19 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg20            ] algae type 20 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg21            ] algae type 21 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg22            ] algae type 22 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg23            ] algae type 23 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg24            ] algae type 24 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg25            ] algae type 25 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg26            ] algae type 26 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg27            ] algae type 27 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg28            ] algae type 28 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg29            ] algae type 29 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg30            ] algae type 30 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraDetP          ] Resuspension, transport in S1-S2 DetP                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [P-CDetCS1           ] P:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       Using output from proces [S2_Comp             ]                                              
       [P-CDetCS2           ] P:C ratio Detritus S2                                                 
       Using output from proces [S2_Comp             ]                                              
       [FrDetPS3            ] fraction DetP in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       Using output from proces [Bur_DM              ]                                              
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       Using output from proces [Bur_DM              ]                                              
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraDetN          ] Resuspension, transport in S1-S2 DetN                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [N-CDetCS1           ] N:C ratio Detritus S1                                                 
       Using output from proces [S1_Comp             ]                                              
       [FrDetCS2            ] fraction DetC in layer S2                                             
       Using output from proces [S2_Comp             ]                                              
       [N-CDetCS2           ] N:C ratio Detritus S2                                                 
       Using output from proces [S2_Comp             ]                                              
       [FrDetNS3            ] fraction DetN in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       Using output from proces [Bur_DM              ]                                              
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       Using output from proces [Bur_DM              ]                                              
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [S12TraDetC          ] Resuspension, transport in S1-S2 DetC                             
       [FrDetCS1            ] fraction DetC in layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrDetCS2            ] fraction DetC in layer S2                                             
       Using output from proces [S2_Comp             ]                                              
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [FrDetCS3            ] fraction DetC in layer S3                                             
       using default value:  0.00000                                                                
       [ScalCar             ] scale factor for primary variable                                     
       using default value:  1.00000                                                                
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [fBurS1DM            ] total burial flux DM from layer S1                                    
       Using output from proces [Bur_DM              ]                                              
       [fBurS2DM            ] total burial flux DM from layer S2                                    
       Using output from proces [Bur_DM              ]                                              
       [fDigS1DM            ] total digging flux DM to layer S1                                     
       using default value:  0.00000                                                                
       [fDigS2DM            ] total digging flux DM to layer S2                                     
       using default value:  0.00000                                                                
       [SWDigS1             ] switch for digging S1 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [SWDigS2             ] switch for digging S2 (0=actual, 1=deeper)                            
       using default value:  0.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Bur_DM              ] Burial total bottom mass (dry matter)                             
       [fSedDM              ] total sedimentation flux dry matter                                   
       Using output from proces [Sum_Sedim           ]                                              
       [fResS1DM            ] total resuspension flux DM from layer S1                              
       Using output from proces [Res_DM              ]                                              
       [fResS2DM            ] total resuspension flux DM from layer S2                              
       Using output from proces [Res_DM              ]                                              
       [ZBurDMS1            ] zeroth-order burial flux for layer S1                                 
       using default value:  0.00000                                                                
       [ZBurDMS2            ] zeroth-order burial flux for layer S2                                 
       using default value:  0.00000                                                                
       [VBurDMS1            ] first order burial rate for layer S1                                  
       Using constant nr278 with value: 0.250000E-02                                                
       [VBurDMS2            ] first order burial rate for layer S2                                  
       using default value:  0.00000                                                                
       [ActThS1             ] actual thickness layer S1                                             
       Using output from proces [S1_Comp             ]                                              
       [ActThS2             ] actual thickness layer S2                                             
       Using output from proces [S2_Comp             ]                                              
       [MaxTHS1             ] maximum thickness layer S1                                            
       Using constant nr368 with value:  999999.                                                    
       [MaxTHS2             ] maximum thickness layer S2                                            
       using default value: 0.500000                                                                
       [SWSediment          ] switch for sediment (0=fixed, 1=variable)                             
       Using constant nr279 with value:  1.00000                                                    
       [FixTHS1             ] fixed thickness of layer S1                                           
       using default value: 0.500000E-01                                                            
       [FixTHS2             ] fixed thickness of layer S2                                           
       using default value: 0.500000                                                                
       [RHOS1               ] overall bulk density layer S1                                         
       Using output from proces [S1_Comp             ]                                              
       [RHOS2               ] overall bulk density layer S2                                         
       Using output from proces [S2_Comp             ]                                              
       [PORS1               ] porosity of sediment layer S1                                         
       Using constant nr374 with value: 0.300000                                                    
       [PORS2               ] porosity of sediment layer S2                                         
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
                                                                                                    
 Input for [Res_DM              ] Resuspension total bottom material (dry mass)                     
       [DMS1                ] total amount of dry matter in layer S1                                
       Using output from proces [S1_Comp             ]                                              
       [DMS2                ] total amount of dry matter in layer S2                                
       Using output from proces [S2_Comp             ]                                              
       [ZResDM              ] zeroth-order resuspension flux                                        
       Using constant nr357 with value:  25000.0                                                    
       [VResDM              ] first order resuspension velocity DM                                  
       using default value:  0.00000                                                                
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucRS1DM           ] critical shear stress for resuspension DM layer S1                    
       Using constant nr358 with value: 0.200000                                                    
       [TaucRS2DM           ] critical shear stress for resuspension DM layer S2                    
       using default value: 0.500000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [SWResusp            ] switch resuspension (0=z+f, 1=min(z,f))                               
       using default value:  0.00000                                                                
                                                                                                    
 Input for [Sum_Sedim           ] Total of all sedimenting substances                               
       [fSedIM1             ] sedimentation flux IM1 towards S1                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2             ] sedimentation flux IM2 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM3             ] sedimentation flux IM3 towards S1                                     
       using default value:  0.00000                                                                
       [fSedIM1S2           ] sedimentation flux IM1 towards S2                                     
       Using output from proces [Sed_IM1             ]                                              
       [fSedIM2S2           ] sedimentation flux IM2 towards S2                                     
       using default value:  0.00000                                                                
       [fSedIM3S2           ] sedimentation flux IM3 towards S2                                     
       using default value:  0.00000                                                                
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [fSedPOC2            ] sedimentation flux POC2                                               
       using default value:  0.00000                                                                
       [fSedPOC3            ] sedimentation flux POC3                                               
       using default value:  0.00000                                                                
       [fSedPOC4            ] sedimentation flux POC4                                               
       using default value:  0.00000                                                                
       [fSedPHYT            ] total sedimentation flux phytoplankton                                
       Using output from proces [SedPhBlo            ]                                              
       [fSedAlgDM           ] total sedimentation flux phytoplankton as DM                          
       Using output from proces [SedPhBlo            ]                                              
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       using default value:  2.50000                                                                
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       using default value:  2.50000                                                                
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       using default value:  2.50000                                                                
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       using default value:  2.50000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [VxSedIM1            ] sedimentation velocity IM1                                            
       Using output from proces [Sed_IM1             ]                                              
       [VxSedIM2            ] sedimentation velocity IM2                                            
       using default value:  0.00000                                                                
       [VxSedIM3            ] sedimentation velocity IM3                                            
       using default value:  0.00000                                                                
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
       [VxSedPOC2           ] sedimentation velocity POC2                                           
       using default value:  0.00000                                                                
       [VxSedPOC3           ] sedimentation velocity POC3                                           
       using default value:  0.00000                                                                
       [VxSedPOC4           ] sedimentation velocity POC4                                           
       using default value:  0.00000                                                                
                                                                                                    
 Input for [SedNPOC1            ] Sedim. nutrients in POC1                                          
       [fSedPOC1            ] sedimentation flux POC1                                               
       Using output from proces [Sed_POC1            ]                                              
       [C-NPOC1             ] C:N ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-PPOC1             ] C:P ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [C-SPOC1             ] C:S ratio fast decaying detritus                                      
       Using output from proces [Compos              ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [VxSedPOC1           ] sedimentation velocity POC1                                           
       Using output from proces [Sed_POC1            ]                                              
                                                                                                    
 Input for [Sed_POC1            ] Sedimentation POC1 3d                                             
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [ZSedPOC1            ] zeroth-order sedimentation flux POC1                                  
       using default value:  0.00000                                                                
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using output from proces [CalVS_POC1          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSPOC1           ] critical shear stress for sedimentation POC1                          
       Using constant nr263 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VSedPOC1            ] sedimentation velocity POC1                                           
       Using output from proces [CalVS_POC1          ]                                              
                                                                                                    
 Input for [Sed_Opal            ] Sedimentation Opal 3d                                             
       [Opal                ] Opal-Si                                                               
       Using substance nr   8                                                                       
       [ZSedOpal            ] zeroth-order sedimentation flux Opal                                  
       using default value:  0.00000                                                                
       [VSedOpal            ] sedimentation velocity Opal                                           
       Using constant nr260 with value: 0.500000                                                    
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSOpal           ] critical shear stress for sedimentation Opal                          
       Using constant nr261 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VSedOpal            ] sedimentation velocity Opal                                           
       Using constant nr260 with value: 0.500000                                                    
                                                                                                    
 Input for [SedPhBlo            ] Sum sedimentation of algae - Bloom                                
       [NAlgBloom           ] number of algae types in BLOOM                                        
       using default value:  30.0000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [FSEDMDI_E           ] sedimentation flux algae type 01                                      
       Using output from proces [SEDALG01            ]                                              
       [FSEDMDI_N           ] sedimentation flux algae type 02                                      
       Using output from proces [SEDALG02            ]                                              
       [FSEDMDI_P           ] sedimentation flux algae type 03                                      
       Using output from proces [SEDALG03            ]                                              
       [FSEDMFL_E           ] sedimentation flux algae type 04                                      
       Using output from proces [SEDALG04            ]                                              
       [FSEDMFL_N           ] sedimentation flux algae type 05                                      
       Using output from proces [SEDALG05            ]                                              
       [FSEDMFL_P           ] sedimentation flux algae type 06                                      
       Using output from proces [SEDALG06            ]                                              
       [FSEDDIN_E           ] sedimentation flux algae type 07                                      
       Using output from proces [SEDALG07            ]                                              
       [FSEDDIN_N           ] sedimentation flux algae type 08                                      
       Using output from proces [SEDALG08            ]                                              
       [FSEDDIN_P           ] sedimentation flux algae type 09                                      
       Using output from proces [SEDALG09            ]                                              
       [FSEDPHA_E           ] sedimentation flux algae type 10                                      
       Using output from proces [SEDALG10            ]                                              
       [FSEDPHA_N           ] sedimentation flux algae type 11                                      
       Using output from proces [SEDALG11            ]                                              
       [FSEDPHA_P           ] sedimentation flux algae type 12                                      
       Using output from proces [SEDALG12            ]                                              
       [fSedAlg13           ] sedimentation flux algae type 13                                      
       using default value:  0.00000                                                                
       [fSedAlg14           ] sedimentation flux algae type 14                                      
       using default value:  0.00000                                                                
       [fSedAlg15           ] sedimentation flux algae type 15                                      
       using default value:  0.00000                                                                
       [fSedAlg16           ] sedimentation flux algae type 16                                      
       using default value:  0.00000                                                                
       [fSedAlg17           ] sedimentation flux algae type 17                                      
       using default value:  0.00000                                                                
       [fSedAlg18           ] sedimentation flux algae type 18                                      
       using default value:  0.00000                                                                
       [fSedAlg19           ] sedimentation flux algae type 19                                      
       using default value:  0.00000                                                                
       [fSedAlg20           ] sedimentation flux algae type 20                                      
       using default value:  0.00000                                                                
       [fSedAlg21           ] sedimentation flux algae type 21                                      
       using default value:  0.00000                                                                
       [fSedAlg22           ] sedimentation flux algae type 22                                      
       using default value:  0.00000                                                                
       [fSedAlg23           ] sedimentation flux algae type 23                                      
       using default value:  0.00000                                                                
       [fSedAlg24           ] sedimentation flux algae type 24                                      
       using default value:  0.00000                                                                
       [fSedAlg25           ] sedimentation flux algae type 25                                      
       using default value:  0.00000                                                                
       [fSedAlg26           ] sedimentation flux algae type 26                                      
       using default value:  0.00000                                                                
       [fSedAlg27           ] sedimentation flux algae type 27                                      
       using default value:  0.00000                                                                
       [fSedAlg28           ] sedimentation flux algae type 28                                      
       using default value:  0.00000                                                                
       [fSedAlg29           ] sedimentation flux algae type 29                                      
       using default value:  0.00000                                                                
       [fSedAlg30           ] sedimentation flux algae type 30                                      
       using default value:  0.00000                                                                
       [DMCFMDI_E           ] DM:C ratio algae type 01                                              
       Using constant nr 82 with value:  3.00000                                                    
       [DMCFMDI_N           ] DM:C ratio algae type 02                                              
       Using constant nr 83 with value:  3.00000                                                    
       [DMCFMDI_P           ] DM:C ratio algae type 03                                              
       Using constant nr 84 with value:  3.00000                                                    
       [DMCFMFL_E           ] DM:C ratio algae type 04                                              
       Using constant nr 85 with value:  2.50000                                                    
       [DMCFMFL_N           ] DM:C ratio algae type 05                                              
       Using constant nr 86 with value:  2.50000                                                    
       [DMCFMFL_P           ] DM:C ratio algae type 06                                              
       Using constant nr 87 with value:  2.50000                                                    
       [DMCFDIN_E           ] DM:C ratio algae type 07                                              
       Using constant nr 88 with value:  2.50000                                                    
       [DMCFDIN_N           ] DM:C ratio algae type 08                                              
       Using constant nr 89 with value:  2.50000                                                    
       [DMCFDIN_P           ] DM:C ratio algae type 09                                              
       Using constant nr 90 with value:  2.50000                                                    
       [DMCFPHA_E           ] DM:C ratio algae type 10                                              
       Using constant nr 91 with value:  2.50000                                                    
       [DMCFPHA_N           ] DM:C ratio algae type 11                                              
       Using constant nr 92 with value:  2.50000                                                    
       [DMCFPHA_P           ] DM:C ratio algae type 12                                              
       Using constant nr 93 with value:  2.50000                                                    
       [DMCFAlg13           ] DM:C ratio algae type 13                                              
       using default value:  2.50000                                                                
       [DMCFAlg14           ] DM:C ratio algae type 14                                              
       using default value:  2.50000                                                                
       [DMCFAlg15           ] DM:C ratio algae type 15                                              
       using default value:  2.50000                                                                
       [DMCFAlg16           ] DM:C ratio algae type 16                                              
       using default value:  2.50000                                                                
       [DMCFAlg17           ] DM:C ratio algae type 17                                              
       using default value:  2.50000                                                                
       [DMCFAlg18           ] DM:C ratio algae type 18                                              
       using default value:  2.50000                                                                
       [DMCFAlg19           ] DM:C ratio algae type 19                                              
       using default value:  2.50000                                                                
       [DMCFAlg20           ] DM:C ratio algae type 20                                              
       using default value:  2.50000                                                                
       [DMCFAlg21           ] DM:C ratio algae type 21                                              
       using default value:  2.50000                                                                
       [DMCFAlg22           ] DM:C ratio algae type 22                                              
       using default value:  2.50000                                                                
       [DMCFAlg23           ] DM:C ratio algae type 23                                              
       using default value:  2.50000                                                                
       [DMCFAlg24           ] DM:C ratio algae type 24                                              
       using default value:  2.50000                                                                
       [DMCFAlg25           ] DM:C ratio algae type 25                                              
       using default value:  2.50000                                                                
       [DMCFAlg26           ] DM:C ratio algae type 26                                              
       using default value:  2.50000                                                                
       [DMCFAlg27           ] DM:C ratio algae type 27                                              
       using default value:  2.50000                                                                
       [DMCFAlg28           ] DM:C ratio algae type 28                                              
       using default value:  2.50000                                                                
       [DMCFAlg29           ] DM:C ratio algae type 29                                              
       using default value:  2.50000                                                                
       [DMCFAlg30           ] DM:C ratio algae type 30                                              
       using default value:  2.50000                                                                
       [NCRMDI_E            ] N:C ratio algae type 01                                               
       Using constant nr 94 with value: 0.255000                                                    
       [NCRMDI_N            ] N:C ratio algae type 02                                               
       Using constant nr 95 with value: 0.125000                                                    
       [NCRMDI_P            ] N:C ratio algae type 03                                               
       Using constant nr 96 with value: 0.150000                                                    
       [NCRMFL_E            ] N:C ratio algae type 04                                               
       Using constant nr 97 with value: 0.200000                                                    
       [NCRMFL_N            ] N:C ratio algae type 05                                               
       Using constant nr 98 with value: 0.140000                                                    
       [NCRMFL_P            ] N:C ratio algae type 06                                               
       Using constant nr 99 with value: 0.200000                                                    
       [NCRDIN_E            ] N:C ratio algae type 07                                               
       Using constant nr100 with value: 0.162500                                                    
       [NCRDIN_N            ] N:C ratio algae type 08                                               
       Using constant nr101 with value: 0.125000                                                    
       [NCRDIN_P            ] N:C ratio algae type 09                                               
       Using constant nr102 with value: 0.137500                                                    
       [NCRPHA_E            ] N:C ratio algae type 10                                               
       Using constant nr103 with value: 0.187500                                                    
       [NCRPHA_N            ] N:C ratio algae type 11                                               
       Using constant nr104 with value: 0.135000                                                    
       [NCRPHA_P            ] N:C ratio algae type 12                                               
       Using constant nr105 with value: 0.187500                                                    
       [NCRAlg13            ] N:C ratio algae type 13                                               
       using default value: 0.200000                                                                
       [NCRAlg14            ] N:C ratio algae type 14                                               
       using default value: 0.200000                                                                
       [NCRAlg15            ] N:C ratio algae type 15                                               
       using default value: 0.200000                                                                
       [NCRAlg16            ] N:C ratio algae type 16                                               
       using default value: 0.200000                                                                
       [NCRAlg17            ] N:C ratio algae type 17                                               
       using default value: 0.200000                                                                
       [NCRAlg18            ] N:C ratio algae type 18                                               
       using default value: 0.200000                                                                
       [NCRAlg19            ] N:C ratio algae type 19                                               
       using default value: 0.200000                                                                
       [NCRAlg20            ] N:C ratio algae type 20                                               
       using default value: 0.200000                                                                
       [NCRAlg21            ] N:C ratio algae type 21                                               
       using default value: 0.200000                                                                
       [NCRAlg22            ] N:C ratio algae type 22                                               
       using default value: 0.200000                                                                
       [NCRAlg23            ] N:C ratio algae type 23                                               
       using default value: 0.200000                                                                
       [NCRAlg24            ] N:C ratio algae type 24                                               
       using default value: 0.200000                                                                
       [NCRAlg25            ] N:C ratio algae type 25                                               
       using default value: 0.200000                                                                
       [NCRAlg26            ] N:C ratio algae type 26                                               
       using default value: 0.200000                                                                
       [NCRAlg27            ] N:C ratio algae type 27                                               
       using default value: 0.200000                                                                
       [NCRAlg28            ] N:C ratio algae type 28                                               
       using default value: 0.200000                                                                
       [NCRAlg29            ] N:C ratio algae type 29                                               
       using default value: 0.200000                                                                
       [NCRAlg30            ] N:C ratio algae type 30                                               
       using default value: 0.200000                                                                
       [PCRMDI_E            ] P:C ratio algae type 01                                               
       Using constant nr106 with value: 0.315000E-01                                                
       [PCRMDI_N            ] P:C ratio algae type 02                                               
       Using constant nr107 with value: 0.175000E-01                                                
       [PCRMDI_P            ] P:C ratio algae type 03                                               
       Using constant nr108 with value: 0.112500E-01                                                
       [PCRMFL_E            ] P:C ratio algae type 04                                               
       Using constant nr109 with value: 0.200000E-01                                                
       [PCRMFL_N            ] P:C ratio algae type 05                                               
       Using constant nr110 with value: 0.150000E-01                                                
       [PCRMFL_P            ] P:C ratio algae type 06                                               
       Using constant nr111 with value: 0.112500E-01                                                
       [PCRDIN_E            ] P:C ratio algae type 07                                               
       Using constant nr112 with value: 0.167500E-01                                                
       [PCRDIN_N            ] P:C ratio algae type 08                                               
       Using constant nr113 with value: 0.150000E-01                                                
       [PCRDIN_P            ] P:C ratio algae type 09                                               
       Using constant nr114 with value: 0.130000E-01                                                
       [PCRPHA_E            ] P:C ratio algae type 10                                               
       Using constant nr115 with value: 0.225000E-01                                                
       [PCRPHA_N            ] P:C ratio algae type 11                                               
       Using constant nr116 with value: 0.212500E-01                                                
       [PCRPHA_P            ] P:C ratio algae type 12                                               
       Using constant nr117 with value: 0.112500E-01                                                
       [PCRAlg13            ] P:C ratio algae type 13                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg14            ] P:C ratio algae type 14                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg15            ] P:C ratio algae type 15                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg16            ] P:C ratio algae type 16                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg17            ] P:C ratio algae type 17                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg18            ] P:C ratio algae type 18                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg19            ] P:C ratio algae type 19                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg20            ] P:C ratio algae type 20                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg21            ] P:C ratio algae type 21                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg22            ] P:C ratio algae type 22                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg23            ] P:C ratio algae type 23                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg24            ] P:C ratio algae type 24                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg25            ] P:C ratio algae type 25                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg26            ] P:C ratio algae type 26                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg27            ] P:C ratio algae type 27                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg28            ] P:C ratio algae type 28                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg29            ] P:C ratio algae type 29                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg30            ] P:C ratio algae type 30                                               
       using default value: 0.200000E-01                                                            
       [SCRMDI_E            ] Si:C ratio algae type 01                                              
       Using constant nr118 with value: 0.447000                                                    
       [SCRMDI_N            ] Si:C ratio algae type 02                                              
       Using constant nr119 with value: 0.283000                                                    
       [SCRMDI_P            ] Si:C ratio algae type 03                                              
       Using constant nr120 with value: 0.283000                                                    
       [SCRMFL_E            ] Si:C ratio algae type 04                                              
       Using constant nr121 with value:  0.00000                                                    
       [SCRMFL_N            ] Si:C ratio algae type 05                                              
       Using constant nr122 with value:  0.00000                                                    
       [SCRMFL_P            ] Si:C ratio algae type 06                                              
       Using constant nr123 with value:  0.00000                                                    
       [SCRDIN_E            ] Si:C ratio algae type 07                                              
       Using constant nr124 with value:  0.00000                                                    
       [SCRDIN_N            ] Si:C ratio algae type 08                                              
       Using constant nr125 with value:  0.00000                                                    
       [SCRDIN_P            ] Si:C ratio algae type 09                                              
       Using constant nr126 with value:  0.00000                                                    
       [SCRPHA_E            ] Si:C ratio algae type 10                                              
       Using constant nr127 with value:  0.00000                                                    
       [SCRPHA_N            ] Si:C ratio algae type 11                                              
       Using constant nr128 with value:  0.00000                                                    
       [SCRPHA_P            ] Si:C ratio algae type 12                                              
       Using constant nr129 with value:  0.00000                                                    
       [SCRAlg13            ] Si:C ratio algae type 13                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg14            ] Si:C ratio algae type 14                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg15            ] Si:C ratio algae type 15                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg16            ] Si:C ratio algae type 16                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg17            ] Si:C ratio algae type 17                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg18            ] Si:C ratio algae type 18                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg19            ] Si:C ratio algae type 19                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg20            ] Si:C ratio algae type 20                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg21            ] Si:C ratio algae type 21                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg22            ] Si:C ratio algae type 22                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg23            ] Si:C ratio algae type 23                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg24            ] Si:C ratio algae type 24                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg25            ] Si:C ratio algae type 25                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg26            ] Si:C ratio algae type 26                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg27            ] Si:C ratio algae type 27                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg28            ] Si:C ratio algae type 28                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg29            ] Si:C ratio algae type 29                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg30            ] Si:C ratio algae type 30                                              
       using default value: 0.200000E-02                                                            
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [VxSedAlg01          ] sedimentation velocity algae type 01                                  
       Using output from proces [SEDALG01            ]                                              
       [VxSedAlg02          ] sedimentation velocity algae type 02                                  
       Using output from proces [SEDALG02            ]                                              
       [VxSedAlg03          ] sedimentation velocity algae type 03                                  
       Using output from proces [SEDALG03            ]                                              
       [VxSedAlg04          ] sedimentation velocity algae type 04                                  
       Using output from proces [SEDALG04            ]                                              
       [VxSedAlg05          ] sedimentation velocity algae type 05                                  
       Using output from proces [SEDALG05            ]                                              
       [VxSedAlg06          ] sedimentation velocity algae type 06                                  
       Using output from proces [SEDALG06            ]                                              
       [VxSedAlg07          ] sedimentation velocity algae type 07                                  
       Using output from proces [SEDALG07            ]                                              
       [VxSedAlg08          ] sedimentation velocity algae type 08                                  
       Using output from proces [SEDALG08            ]                                              
       [VxSedAlg09          ] sedimentation velocity algae type 09                                  
       Using output from proces [SEDALG09            ]                                              
       [VxSedAlg10          ] sedimentation velocity algae type 10                                  
       Using output from proces [SEDALG10            ]                                              
       [VxSedAlg11          ] sedimentation velocity algae type 11                                  
       Using output from proces [SEDALG11            ]                                              
       [VxSedAlg12          ] sedimentation velocity algae type 12                                  
       Using output from proces [SEDALG12            ]                                              
       [VxSedAlg13          ] sedimentation velocity algae type 13                                  
       using default value:  0.00000                                                                
       [VxSedAlg14          ] sedimentation velocity algae type 14                                  
       using default value:  0.00000                                                                
       [VxSedAlg15          ] sedimentation velocity algae type 15                                  
       using default value:  0.00000                                                                
       [VxSedAlg16          ] sedimentation velocity algae type 16                                  
       using default value:  0.00000                                                                
       [VxSedAlg17          ] sedimentation velocity algae type 17                                  
       using default value:  0.00000                                                                
       [VxSedAlg18          ] sedimentation velocity algae type 18                                  
       using default value:  0.00000                                                                
       [VxSedAlg19          ] sedimentation velocity algae type 19                                  
       using default value:  0.00000                                                                
       [VxSedAlg20          ] sedimentation velocity algae type 20                                  
       using default value:  0.00000                                                                
       [VxSedAlg21          ] sedimentation velocity algae type 21                                  
       using default value:  0.00000                                                                
       [VxSedAlg22          ] sedimentation velocity algae type 22                                  
       using default value:  0.00000                                                                
       [VxSedAlg23          ] sedimentation velocity algae type 23                                  
       using default value:  0.00000                                                                
       [VxSedAlg24          ] sedimentation velocity algae type 24                                  
       using default value:  0.00000                                                                
       [VxSedAlg25          ] sedimentation velocity algae type 25                                  
       using default value:  0.00000                                                                
       [VxSedAlg26          ] sedimentation velocity algae type 26                                  
       using default value:  0.00000                                                                
       [VxSedAlg27          ] sedimentation velocity algae type 27                                  
       using default value:  0.00000                                                                
       [VxSedAlg28          ] sedimentation velocity algae type 28                                  
       using default value:  0.00000                                                                
       [VxSedAlg29          ] sedimentation velocity algae type 29                                  
       using default value:  0.00000                                                                
       [VxSedAlg30          ] sedimentation velocity algae type 30                                  
       using default value:  0.00000                                                                
                                                                                                    
 Input for [SEDALG12            ] Sedimentation of algae species 12                                 
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedPHA_P           ] sedimentation velocity algae type 12                                  
       Using output from proces [CalVSALG12          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedPHA_P           ] sedimentation velocity algae type 12                                  
       Using output from proces [CalVSALG12          ]                                              
                                                                                                    
 Input for [SEDALG11            ] Sedimentation of algae species 11                                 
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedPHA_N           ] sedimentation velocity algae type 11                                  
       Using output from proces [CalVSALG11          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedPHA_N           ] sedimentation velocity algae type 11                                  
       Using output from proces [CalVSALG11          ]                                              
                                                                                                    
 Input for [SEDALG10            ] Sedimentation of algae species 10                                 
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedPHA_E           ] sedimentation velocity algae type 10                                  
       Using output from proces [CalVSALG10          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedPHA_E           ] sedimentation velocity algae type 10                                  
       Using output from proces [CalVSALG10          ]                                              
                                                                                                    
 Input for [SEDALG09            ] Sedimentation of algae species 9                                  
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedDIN_P           ] sedimentation velocity algae type 09                                  
       Using output from proces [CalVSALG09          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedDIN_P           ] sedimentation velocity algae type 09                                  
       Using output from proces [CalVSALG09          ]                                              
                                                                                                    
 Input for [SEDALG08            ] Sedimentation of algae species 8                                  
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedDIN_N           ] sedimentation velocity algae type 08                                  
       Using output from proces [CalVSALG08          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedDIN_N           ] sedimentation velocity algae type 08                                  
       Using output from proces [CalVSALG08          ]                                              
                                                                                                    
 Input for [SEDALG07            ] Sedimentation of algae species 7                                  
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedDIN_E           ] sedimentation velocity algae type 07                                  
       Using output from proces [CalVSALG07          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedDIN_E           ] sedimentation velocity algae type 07                                  
       Using output from proces [CalVSALG07          ]                                              
                                                                                                    
 Input for [SEDALG06            ] Sedimentation of algae species 6                                  
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMFL_P           ] sedimentation velocity algae type 06                                  
       Using output from proces [CalVSALG06          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMFL_P           ] sedimentation velocity algae type 06                                  
       Using output from proces [CalVSALG06          ]                                              
                                                                                                    
 Input for [SEDALG05            ] Sedimentation of algae species 5                                  
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMFL_N           ] sedimentation velocity algae type 05                                  
       Using output from proces [CalVSALG05          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMFL_N           ] sedimentation velocity algae type 05                                  
       Using output from proces [CalVSALG05          ]                                              
                                                                                                    
 Input for [SEDALG04            ] Sedimentation of algae species 4                                  
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMFL_E           ] sedimentation velocity algae type 04                                  
       Using output from proces [CalVSALG04          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMFL_E           ] sedimentation velocity algae type 04                                  
       Using output from proces [CalVSALG04          ]                                              
                                                                                                    
 Input for [SEDALG03            ] Sedimentation of algae species 3                                  
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMDI_P           ] sedimentation velocity algae type 03                                  
       Using output from proces [CalVSALG03          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMDI_P           ] sedimentation velocity algae type 03                                  
       Using output from proces [CalVSALG03          ]                                              
                                                                                                    
 Input for [SEDALG02            ] Sedimentation of algae species 2                                  
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMDI_N           ] sedimentation velocity algae type 02                                  
       Using output from proces [CalVSALG02          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMDI_N           ] sedimentation velocity algae type 02                                  
       Using output from proces [CalVSALG02          ]                                              
                                                                                                    
 Input for [SEDALG01            ] Sedimentation of algae species 1                                  
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [ZSedAlg             ] zeroth-order sedimentation flux algae                                 
       using default value:  0.00000                                                                
       [VsedMDI_E           ] sedimentation velocity algae type 01                                  
       Using output from proces [CalVSALG01          ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucS               ] critical shear stress for sedimentation algae                         
       Using constant nr266 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [VsedMDI_E           ] sedimentation velocity algae type 01                                  
       Using output from proces [CalVSALG01          ]                                              
                                                                                                    
 Input for [Sed_IM1             ] Sedimentation IM1                                                 
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [ZSedIM1             ] zeroth-order sedimentation flux IM1                                   
       using default value:  0.00000                                                                
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using output from proces [CalVS_IM1           ]                                              
       [Tau                 ] total bottom shear stress                                             
       Using segment function nr  2                                                                 
       [TaucSIM1            ] critical shear stress for sedimentation IM1                           
       Using constant nr364 with value: 0.100000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [MinDepth            ] minimum waterdepth for sedimentation/resuspension                     
       Using constant nr262 with value: 0.100000                                                    
       [FrIM1SedS2          ] fraction sedimentation IM1 towards S2                                 
       using default value:  0.00000                                                                
       [FrTIMS2             ] fraction TIM in layer S2                                              
       using default value:  0.00000                                                                
       [FrTIMS2Max          ] maximum fraction TIM in layer S2 pick-up                              
       using default value:  1.00000                                                                
       [PsedminIM1          ] minimum sedimentation probability                                     
       using default value:  0.00000                                                                
       [VSedIM1             ] sedimentation velocity IM1                                            
       Using output from proces [CalVS_IM1           ]                                              
                                                                                                    
 Input for [CalVSALG12          ] Sedimentation velocity ALG12 = f (Temp SS Sal)                    
       [V0SedPHA_P          ] sedimentation velocity algae type 12                                  
       Using constant nr291 with value: 0.500000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nPHA_P              ] coefficient in flocculation function algae type 12                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg12          ] salinity enhanced settling factor algae type 12                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG11          ] Sedimentation velocity ALG11 = f (Temp SS Sal)                    
       [V0SedPHA_N          ] sedimentation velocity algae type 11                                  
       Using constant nr290 with value: 0.500000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nPHA_N              ] coefficient in flocculation function algae type 11                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg11          ] salinity enhanced settling factor algae type 11                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG10          ] Sedimentation velocity ALG10 = f (Temp SS Sal)                    
       [V0SedPHA_E          ] sedimentation velocity algae type 10                                  
       Using constant nr289 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nPHA_E              ] coefficient in flocculation function algae type 10                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg10          ] salinity enhanced settling factor algae type 10                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG09          ] Sedimentation velocity ALG09 = f (Temp SS Sal)                    
       [V0SedDIN_P          ] sedimentation velocity algae type 09                                  
       Using constant nr288 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nDIN_P              ] coefficient in flocculation function algae type 09                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg09          ] salinity enhanced settling factor algae type 09                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG08          ] Sedimentation velocity ALG08 = f (Temp SS Sal)                    
       [V0SedDIN_N          ] sedimentation velocity algae type 08                                  
       Using constant nr287 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nDIN_N              ] coefficient in flocculation function algae type 08                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg08          ] salinity enhanced settling factor algae type 08                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG07          ] Sedimentation velocity ALG07 = f (Temp SS Sal)                    
       [V0SedDIN_E          ] sedimentation velocity algae type 07                                  
       Using constant nr286 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nDIN_E              ] coefficient in flocculation function algae type 07                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg07          ] salinity enhanced settling factor algae type 07                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG06          ] Sedimentation velocity ALG06 = f (Temp SS Sal)                    
       [V0SedMFL_P          ] sedimentation velocity algae type 06                                  
       Using constant nr285 with value: 0.500000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMFL_P              ] coefficient in flocculation function algae type 06                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg06          ] salinity enhanced settling factor algae type 06                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG05          ] Sedimentation velocity ALG05 = f (Temp SS Sal)                    
       [V0SedMFL_N          ] sedimentation velocity algae type 05                                  
       Using constant nr284 with value: 0.500000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMFL_N              ] coefficient in flocculation function algae type 05                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg05          ] salinity enhanced settling factor algae type 05                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG04          ] Sedimentation velocity ALG04 = f (Temp SS Sal)                    
       [V0SedMFL_E          ] sedimentation velocity algae type 04                                  
       Using constant nr283 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMFL_E              ] coefficient in flocculation function algae type 04                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg04          ] salinity enhanced settling factor algae type 04                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG03          ] Sedimentation velocity ALG03 = f (Temp SS Sal)                    
       [V0SedMDI_P          ] sedimentation velocity algae type 03                                  
       Using constant nr282 with value:  1.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMDI_P              ] coefficient in flocculation function algae type 03                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg03          ] salinity enhanced settling factor algae type 03                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG02          ] Sedimentation velocity ALG02 = f (Temp SS Sal)                    
       [V0SedMDI_N          ] sedimentation velocity algae type 02                                  
       Using constant nr281 with value:  1.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMDI_N              ] coefficient in flocculation function algae type 02                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg02          ] salinity enhanced settling factor algae type 02                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVSALG01          ] Sedimentation velocity ALG01 = f (Temp SS Sal)                    
       [V0SedMDI_E          ] sedimentation velocity algae type 01                                  
       Using constant nr280 with value: 0.500000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nMDI_E              ] coefficient in flocculation function algae type 01                    
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSdAlg01          ] salinity enhanced settling factor algae type 01                       
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVS_POC1          ] Sedimentation velocity POC1 = f (Temp SS Sal)                     
       [V0SedPOC1           ] sedimentation velocity POC1                                           
       Using constant nr277 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nPOC1               ] coefficient in flocculation function POC1                             
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSedPOC1          ] salinity enhanced settling factor for POC1                            
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CalVS_IM1           ] Sedimentation velocity IM1 = f (Temp SS Sal)                      
       [V0SedIM1            ] sedimentation velocity IM1                                            
       Using constant nr365 with value:  0.00000                                                    
       [SS                  ] suspended solids                                                      
       Using output from proces [Compos              ]                                              
       [CrSS                ] crit. susp. solid concentration for flocculation                      
       using default value:  100.000                                                                
       [nIM1                ] coefficient in flocculation function IM1                              
       using default value:  0.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [TcSED               ] temperature coefficient for sedimentation                             
       Using constant nr382 with value:  1.00000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
       [SMax                ] salinity at which salinity function is maximal                        
       using default value:  5.00000                                                                
       [EnhSedIM1           ] salinity enhanced settling factor for IM1                             
       using default value:  1.00000                                                                
                                                                                                    
 Input for [CONSELAC            ] Consumption oxygen/other electron acceptors                       
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [FeIIIpa             ] particulate amorphous oxidizing iron                                  
       using default value:  0.00000                                                                
       [SO4                 ] sulphate (SO4)                                                        
       using default value:  0.00000                                                                
       [f_minPOC1           ] mineralization flux POC1                                              
       Using output from proces [DecFast             ]                                              
       [f_minPOC2           ] mineralization flux POC2                                              
       using default value:  0.00000                                                                
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
       Using function nr  1                                                                         
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [FrMetGeCH4          ] fraction of methanogenesis towards CH4                                
       using default value: 0.500000                                                                
       [SWOxCon             ] Switch: only OxCon (1) or not (0)                                     
       using default value:  0.00000                                                                
                                                                                                    
 Input for [DisSi               ] Dissolution of Si in opal (SWITCH defaults)                       
       [Si                  ] external Si concentration                                             
       Using substance nr   7                                                                       
       [Opal                ] Opal-Si                                                               
       Using substance nr   8                                                                       
       [Ceq_disSi           ] Saturation concentration of Si with opal                              
       using default value:  10.0000                                                                
       [RCdisSi20           ] 2nd order dissolution rate SiO2 at 20 oC                              
       Using constant nr259 with value: 0.100000E-03                                                
       [TCdisSi             ] temperature dependency dissolution Si                                 
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWDisSi             ] option: 0.0 2nd order diss., 1.0 1st order diss.                      
       using default value:  0.00000                                                                
                                                                                                    
 Input for [DecFast             ] Mineralization fast decomp. detritus POC1                         
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  11                                                                       
       [POS1                ] POS1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [IdDet1              ] identifier for detritus group POC1, POC2, POC3                        
       using default value:  1.00000                                                                
       [ku_dFdcC20          ] upper limit mineralization rate fast detr-C                           
       Using constant nr243 with value: 0.180000                                                    
       [kl_dFdcC20          ] lower limit mineralization rate fast detr-C                           
       Using constant nr244 with value: 0.120000                                                    
       [ku_dFdcN20          ] upper limit mineralization rate fast detr-N                           
       Using constant nr245 with value: 0.180000                                                    
       [kl_dFdcN20          ] lower limit mineralization rate fast detr-N                           
       Using constant nr246 with value: 0.120000                                                    
       [ku_dFdcP20          ] upper limit mineralization rate fast detr-P                           
       Using constant nr247 with value: 0.180000                                                    
       [kl_dFdcP20          ] lower limit mineralization rate fast detr-P                           
       Using constant nr248 with value: 0.120000                                                    
       [kT_dec              ] temperature coefficient for decomposition                             
       Using constant nr249 with value:  1.04700                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
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
       Using substance nr   2                                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [b_ni                ] attenuation factor decomp. in denitrifying zone                       
       using default value:  1.00000                                                                
       [b_su                ] attenuation factor decomp. in sulphate red.zone                       
       using default value:  1.00000                                                                
       [b_poc1poc2          ] fraction POC1 converted to POC2                                       
       Using constant nr250 with value:  1.00000                                                    
       [b_poc1doc           ] fraction POC1 converted to DOC                                        
       using default value:  0.00000                                                                
       [SWOMDec             ] option: 0.0 for stripping, 1.0 for different rates                    
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BODCOD              ] Mineralisation BOD and COD                                        
       [SwOXYDem            ] switch oxygen consumption(0=BOD, 1=COD, 2=both)                       
       using default value:  0.00000                                                                
       [CBOD5               ] carbonaceous BOD (first pool) at 5 days                               
       using default value:  0.00000                                                                
       [CBOD5_2             ] carbonaceous BOD (second pool) at 5 days                              
       using default value:  0.00000                                                                
       [CBODu               ] carbonaceous BOD (first pool) ultimate                                
       using default value:  0.00000                                                                
       [CBODu_2             ] carbonaceous BOD (second pool) ultimate                               
       using default value:  0.00000                                                                
       [COD_Cr              ] COD concentration by the Cr-method                                    
       using default value:  0.00000                                                                
       [COD_Mn              ] COD concentration by the Mn-method                                    
       using default value:  0.00000                                                                
       [NBOD5               ] nitrogenous BOD at 5 days                                             
       using default value:  0.00000                                                                
       [NBODu               ] nitrogenous BOD ultimate                                              
       using default value:  0.00000                                                                
       [RcBOD               ] decay rate BOD (first pool) at 20 oC                                  
       Using constant nr350 with value: 0.300000                                                    
       [RcBOD_2             ] decay rate BOD (second pool) at 20 oC                                 
       using default value: 0.150000                                                                
       [RcCOD               ] decay rate COD at 20 oC                                               
       using default value: 0.500000E-01                                                            
       [RcBODN              ] first-order mineralisation rate BODN                                  
       using default value: 0.300000                                                                
       [TcBOD               ] temperature coefficient decay BOD                                     
       using default value:  1.04000                                                                
       [TcCOD               ] temperature coefficient decay COD                                     
       using default value:  1.02000                                                                
       [TcBODN              ] temperature coefficient decay BODN                                    
       using default value:  1.08000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [COXBOD              ] critical oxygen concentration for BOD decay                           
       using default value:  1.00000                                                                
       [OOXBOD              ] optimum oxygen concentration for BOD decay                            
       using default value:  5.00000                                                                
       [CFLBOD              ] oxygen function level for oxygen below COXBOD                         
       using default value: 0.300000                                                                
       [CurvBOD             ] curvature of DO function for mineralisation BOD                       
       using default value:  0.00000                                                                
       [LAgeFun             ] lower value of age function BOD decay                                 
       using default value:  1.00000                                                                
       [UAgeFun             ] upper value of age function BOD decay                                 
       using default value:  1.00000                                                                
       [LAgeIndx            ] lower value of age index BOD decay                                    
       using default value:  2.00000                                                                
       [UAgeIndx            ] upper value of age index BOD decay                                    
       using default value:  3.00000                                                                
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_Blo             ]                                              
       [BOD5/uPHYT          ] BOD5:BODu ratio in phytoplankton                                      
       using default value: 0.600000                                                                
       [AlgFrBOD            ] fraction algae contributing to BOD-inf                                
       Using constant nr351 with value: 0.500000                                                    
       [OXCCF               ] O2:C ratio in mineralisation                                          
       using default value:  2.67000                                                                
       [POCnoa              ] total POC (no algae)                                                  
       Using output from proces [Compos              ]                                              
       [BOD5/infPO          ] BOD5:BODu ratio in POC                                                
       using default value: 0.600000                                                                
       [POCFrBOD            ] fraction of POC contributing to BOD-inf                               
       using default value:  1.00000                                                                
       [EffCOD_Cr           ] efficiency of Cr method for COD                                       
       using default value: 0.900000                                                                
       [EffCOD_Mn           ] efficiency of Mn method for COD                                       
       using default value: 0.500000                                                                
       [AMCCF               ] amount oxygen used for nitrogen in miner.                             
       using default value: 0.550000                                                                
                                                                                                    
 Input for [BMS1_DetSi          ] Mineralisation detritus silica in sediment S1                     
       [ZMinDetSS1          ] zeroth-order mineralisation flux DetSi in layer S1                    
       using default value:  0.00000                                                                
       [DetSiS1             ] DetSi in layer S1                                                     
       Using substance nr  27                                                                       
       [RcDetSiS1           ] first-order mineralisation rate DetSi in layer S1                     
       Using constant nr257 with value: 0.100000E-01                                                
       [TcBMDetSi           ] temp. coeff. mineralisation DetSi in sediment                         
       Using constant nr258 with value:  1.04700                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTMin               ] critical temperature for mineralisation                               
       Using constant nr367 with value: -1.00000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BMS1_DetP           ] Mineralisation detritus phosphorus in sediment S1                 
       [ZMinDetPS1          ] zeroth-order mineralisation flux DetP in layer S1                     
       using default value:  0.00000                                                                
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [RcDetPS1            ] first-order mineralisation rate DetP in layer S1                      
       Using constant nr254 with value: 0.400000E-01                                                
       [TcBMDetP            ] temperature coeff. mineralisation DetP in sediment                    
       Using constant nr255 with value:  1.15000                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTMin               ] critical temperature for mineralisation                               
       Using constant nr367 with value: -1.00000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BMS1_DetN           ] Mineralisation detritus nitrogen in sediment S1                   
       [ZMinDetNS1          ] zeroth-order mineralisation flux DetN in layer S1                     
       using default value:  0.00000                                                                
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [RcDetNS1            ] first-order mineralisation rate DetN in layer S1                      
       Using constant nr241 with value: 0.250000E-01                                                
       [TcBMDetN            ] temperature coeff. mineralisation DetN in sediment                    
       Using constant nr242 with value:  1.11000                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTMin               ] critical temperature for mineralisation                               
       Using constant nr367 with value: -1.00000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BMS1_DetC           ] Mineralisation detritus carbon in sediment S1                     
       [ZMinDetCS1          ] zeroth-order mineralisation flux DetC in layer S1                     
       using default value:  0.00000                                                                
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [RcDetCS1            ] first-order mineralisation rate DetC in layer S1                      
       Using constant nr238 with value: 0.150000E-01                                                
       [TcBMDetC            ] temperature coeff. mineralisation DetC in sediment                    
       Using constant nr239 with value:  1.11000                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTMin               ] critical temperature for mineralisation                               
       Using constant nr367 with value: -1.00000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [SedZoneSW           ] SWITCH 0=no SWITCH, <0 per segment, >0 per zone                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [RearOXY             ] Reaeration of oxygen                                              
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Velocity            ] horizontal flow velocity                                              
       Using constant nr314 with value: 0.150000                                                    
       [VWind               ] wind speed                                                            
       Using function nr  3                                                                         
       [SWRear              ] switch for oxygen reaeration formulation (1-13)                       
       Using constant nr236 with value:  9.00000                                                    
       [KLRear              ] reaeration transfer coefficient                                       
       Using constant nr237 with value:  4.00000                                                    
       [TCRear              ] temperature coefficient for rearation                                 
       using default value:  1.01600                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SaturOXY            ] saturation concentration                                              
       Using output from proces [SaturOXY            ]                                              
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
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
       Using substance nr   3                                                                       
                                                                                                    
 Input for [Nitrif_NH4          ] Nitrification of ammonium                                         
       [ZNit                ] zeroth-order nitrification flux                                       
       using default value:  0.00000                                                                
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   4                                                                       
       [RcNit20             ] MM- nitrification rate at 20 oC                                       
       using default value: 0.100000                                                                
       [TcNit               ] temperature coefficient for nitrification                             
       Using constant nr230 with value:  1.11000                                                    
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [KsAmNit             ] half saturation constant for ammonium cons.                           
       using default value: 0.500000                                                                
       [KsOxNit             ] half saturation constant for DO cons.                                 
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTNit               ] critical temperature for nitrification                                
       Using constant nr231 with value: -1.00000                                                    
       [Rc0NitOx            ] zero-order nitrification rate at neg. DO                              
       using default value:  0.00000                                                                
       [COXNIT              ] critical oxygen concentration for nitrification                       
       Using constant nr232 with value: -1.00000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnNit             ] switch for old (0), new (1), TEWOR (2) version                        
       using default value:  0.00000                                                                
       [RcNit               ] first-order nitrification rate                                        
       Using constant nr233 with value: 0.700000E-01                                                
       [OOXNIT              ] optimum oxygen concentration for nitrification                        
       Using constant nr234 with value:  0.00000                                                    
       [CFLNIT              ] oxygen function level for oxygen below COXNIT                         
       using default value:  0.00000                                                                
       [CurvNit             ] curvature of DO function for nitrification                            
       using default value:  0.00000                                                                
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
                                                                                                    
 Input for [DenWat_NO3          ] Denitrification in water column                                   
       [ZDenWat             ] zero-order denitrification rate in water column                       
       using default value:  0.00000                                                                
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [RcDen20             ] MM-denitrification reaction rate at 20 oC                             
       using default value: 0.100000                                                                
       [TcDenWat            ] temperature coefficient for denitrification                           
       Using constant nr226 with value:  1.11000                                                    
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [KsNiDen             ] half saturation constant for nitrate cons.                            
       using default value: 0.500000                                                                
       [KsOxDen             ] half saturation constant for oxygen inhib.                            
       using default value:  1.00000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTDEN               ] critical temperature for denitrification                              
       using default value:  2.00000                                                                
       [Rc0DenOx            ] zero-order denit. rate at low temperature                             
       using default value:  0.00000                                                                
       [COXDEN              ] critical oxygen concentration for denitrification                     
       Using constant nr227 with value:  101.000                                                    
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnDen             ] switch to select old (0) or new (1) version                           
       using default value:  0.00000                                                                
       [RcDenWat            ] first-order denitrification rate in water column                      
       Using constant nr228 with value: 0.600000E-02                                                
       [OOXDEN              ] optimum oxygen concentration for denitrification                      
       Using constant nr229 with value:  100.000                                                    
       [Curvat              ] curvature of DO function for denitrification                          
       using default value:  1.00000                                                                
                                                                                                    
 Input for [DenSed_NO3          ] Denitrification in sediment                                       
       [ZDenSed             ] zeroth-order denitrification flux in the sediment                     
       using default value:  0.00000                                                                
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [RcDenSed            ] first-order denitrification rate in the sediment                      
       Using constant nr252 with value:  0.00000                                                    
       [TcDen               ] temperature coefficient for denitrification                           
       using default value:  1.12000                                                                
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [CTDEN               ] critical temperature for denitrification                              
       using default value:  2.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
                                                                                                    
 Input for [AdsPO4AAP           ] Ad(De)Sorption ortho phosphorus to inorg. matter                  
       [SWAdsP              ] switch PO4 adsorption <0=Kd|1=Langmuir|2=pHdep>                       
       Using constant nr346 with value:  1.00000                                                    
       [PO4                 ] external P concentration                                              
       Using substance nr   6                                                                       
       [AAP                 ] adsorbed ortho phosphate                                              
       Using constant nr390 with value:  0.00000                                                    
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [KdPO4AAP            ] distrib. coeff. (-) or ads. eq. const.                                
       Using constant nr347 with value: 0.100000                                                    
       [MaxPO4AAP           ] adsorption capacity TIM for PO4                                       
       Using constant nr348 with value: 0.150000                                                    
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [KadsP_20            ] Adsorption equilibrium constant at 20 oC                              
       using default value:  3.80000                                                                
       [TCKadsP             ] temperature dependency constant Kads                                  
       using default value:  1.00000                                                                
       [RcAdPO4AAP          ] adsorption rate PO4 --> AAP                                           
       Using constant nr349 with value:  0.00000                                                    
       [a_OH-PO4            ] OH-:PO4 ratio in sorption reaction                                    
       using default value: 0.200000                                                                
       [fr_FeIM1            ] fraction Fe in inorg. matter IM1                                      
       using default value: 0.300000E-01                                                            
       [fr_FeIM2            ] fraction Fe in inorg. matter IM2                                      
       using default value: 0.500000E-02                                                            
       [fr_FeIM3            ] fraction Fe in inorg. matter IM3                                      
       using default value: 0.100000E-02                                                            
       [fr_Feox             ] fraction reactive Fe of total Fe                                      
       using default value:  1.00000                                                                
       [OXY                 ] Dissolved Oxygen                                                      
       Using substance nr   2                                                                       
       [Cc_oxPsor           ] critical oxygen conc for P sorption                                   
       using default value:  0.00000                                                                
       [pH                  ] pH                                                                    
       Using constant nr345 with value:  8.10000                                                    
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Poros               ] volumetric porosity                                                   
       using default value:  1.00000                                                                
       [SWVnAdsP            ] switch to select old(0) or new(1) version                             
       using default value:  0.00000                                                                
       [fr_Fe               ] fraction Fe in solid matter                                           
       using default value: 0.200000E-01                                                            
       [RCadsPgem           ] pseudo first-order rate PO4 sorption                                  
       using default value:  1.00000                                                                
                                                                                                    
 Input for [Compos              ] Composition                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   4                                                                       
       [PO4                 ] external P concentration                                              
       Using substance nr   6                                                                       
       [Si                  ] external Si concentration                                             
       Using substance nr   7                                                                       
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [Phyt                ] total carbon in phytoplankton                                         
       Using output from proces [Phy_Blo             ]                                              
       [AlgN                ] total nitrogen in algae                                               
       Using output from proces [Phy_Blo             ]                                              
       [AlgP                ] total phosphorus in algae                                             
       Using output from proces [Phy_Blo             ]                                              
       [AlgSi               ] total silica in algae                                                 
       Using output from proces [Phy_Blo             ]                                              
       [AlgDM               ] total DM in algae                                                     
       Using output from proces [Phy_Blo             ]                                              
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POC3                ] POC3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POC4                ] POC4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [DOC                 ] Dissolved Organic Carbon (DOC)                                        
       using default value:  0.00000                                                                
       [DON                 ] Dissolved Organic Nitrogen (DON)                                      
       using default value:  0.00000                                                                
       [DOP                 ] Dissolved Organic Phosphorus (DOP)                                    
       using default value:  0.00000                                                                
       [DOS                 ] Dissolved Organic Sulphur (DOS)                                       
       using default value:  0.00000                                                                
       [AAP                 ] adsorbed ortho phosphate                                              
       Using constant nr390 with value:  0.00000                                                    
       [VIVP                ] Vivianite-P                                                           
       using default value:  0.00000                                                                
       [APATP               ] Apatite-P                                                             
       using default value:  0.00000                                                                
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [PON2                ] PON2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [PON3                ] PON3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [PON4                ] PON4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  11                                                                       
       [POP2                ] POP2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POP3                ] POP3 (slow decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POP4                ] POP4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [POS1                ] POS1 (fast decomposing fraction)                                      
       using default value:  0.00000                                                                
       [POS2                ] POS2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
       [POS3                ] POS3 (slow decomposing  fraction)                                     
       using default value:  0.00000                                                                
       [POS4                ] POS4 (particulate refractory fraction)                                
       using default value:  0.00000                                                                
       [Opal                ] Opal-Si                                                               
       Using substance nr   8                                                                       
       [DmCfPOC1            ] DM:C ratio POC1                                                       
       using default value:  2.50000                                                                
       [DmCfPOC2            ] DM:C ratio POC2                                                       
       using default value:  2.50000                                                                
       [DmCfPOC3            ] DM:C ratio POC3                                                       
       using default value:  2.50000                                                                
       [DmCfPOC4            ] DM:C ratio POC4                                                       
       using default value:  2.50000                                                                
                                                                                                    
 Input for [S2_Comp             ] Composition sediment layer S2                                     
       [IM1S2               ] IM1 in layer S2                                                       
       using default value:  0.00000                                                                
       [IM2S2               ] IM2 in layer S2                                                       
       using default value:  0.00000                                                                
       [IM3S2               ] IM3 in layer S2                                                       
       using default value:  0.00000                                                                
       [DetCS2              ] DetC in layer S2                                                      
       using default value:  0.00000                                                                
       [OOCS2               ] OOC in layer S2                                                       
       using default value:  0.00000                                                                
       [DiatS2              ] Diatoms in layer S2                                                   
       using default value:  0.00000                                                                
       [GreenS2             ] Algae in layer S2                                                     
       using default value:  0.00000                                                                
       [AAPS2               ] adsorbed O-PO4 in layer S2                                            
       using default value:  0.00000                                                                
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [DMCFDetCS           ] DM:C ratio DetCS1 and DetCS2                                          
       using default value:  1.70000                                                                
       [DMCFOOCS            ] DM:C ratio POCS1 and POCS2                                            
       using default value:  1.70000                                                                
       [DMCFDiatS           ] DM:C ratio DiatS1 and DiatS2                                          
       using default value:  1.70000                                                                
       [DMCFGreenS          ] DM:C ratio GreenS1 and GreenS2                                        
       using default value:  1.70000                                                                
       [RHOIM1              ] bulk density IM1                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM2              ] bulk density IM2                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM3              ] bulk density IM3                                                      
       using default value: 0.260000E+07                                                            
       [RHODetC             ] bulk density DetC                                                     
       using default value: 0.130000E+07                                                            
       [RHOOOC              ] bulk density OOC                                                      
       using default value: 0.130000E+07                                                            
       [RHODiat             ] bulk density Diatoms                                                  
       using default value: 0.130000E+07                                                            
       [RHOGreen            ] bulk density Greens                                                   
       using default value: 0.130000E+07                                                            
       [PORS2               ] porosity of sediment layer S2                                         
       using default value:  0.00000                                                                
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DetNS2              ] DetN in layer S2                                                      
       using default value:  0.00000                                                                
       [DetPS2              ] DetP in layer S2                                                      
       using default value:  0.00000                                                                
       [DetSiS2             ] DetSi in layer S2                                                     
       using default value:  0.00000                                                                
       [OONS2               ] OON in layer S2                                                       
       using default value:  0.00000                                                                
       [OOPS2               ] OOP in layer S2                                                       
       using default value:  0.00000                                                                
       [OOSiS2              ] OOSi in layer S2                                                      
       using default value:  0.00000                                                                
       [MPB1peliS2          ] MPB epipelic biomass in layer S2                                      
       using default value:  0.00000                                                                
       [MPB2psamS2          ] MPB n-diat biomass in sediment S2                                     
       using default value:  0.00000                                                                
       [DmCfMPB1            ] DM:C ratio MPB1 algae                                                 
       using default value:  2.50000                                                                
       [DmCfMPB2            ] DM:C ratio MPB2 algae                                                 
       using default value:  2.50000                                                                
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
                                                                                                    
 Input for [S1_Comp             ] Composition sediment layer S1                                     
       [IM1S1               ] IM1 in layer S1                                                       
       Using constant nr265 with value: 0.100000E+08                                                
       [IM2S1               ] IM2 in layer S1                                                       
       using default value:  0.00000                                                                
       [IM3S1               ] IM3 in layer S1                                                       
       using default value:  0.00000                                                                
       [DetCS1              ] DetC in layer S1                                                      
       Using substance nr  24                                                                       
       [OOCS1               ] OOC in layer S1                                                       
       using default value:  0.00000                                                                
       [DiatS1              ] Diatoms in layer S1                                                   
       using default value:  0.00000                                                                
       [GreenS1             ] Algae in layer S1                                                     
       using default value:  0.00000                                                                
       [AAPS1               ] adsorbed O-PO4 in layer S1                                            
       using default value:  0.00000                                                                
       [DMCFIM1             ] DM:C ratio IM1                                                        
       using default value:  1.00000                                                                
       [DMCFIM2             ] DM:C ratio IM2                                                        
       using default value:  1.00000                                                                
       [DMCFIM3             ] DM:C ratio IM3                                                        
       using default value:  1.00000                                                                
       [DMCFDetCS           ] DM:C ratio DetCS1 and DetCS2                                          
       using default value:  1.70000                                                                
       [DMCFOOCS            ] DM:C ratio POCS1 and POCS2                                            
       using default value:  1.70000                                                                
       [DMCFDiatS           ] DM:C ratio DiatS1 and DiatS2                                          
       using default value:  1.70000                                                                
       [DMCFGreenS          ] DM:C ratio GreenS1 and GreenS2                                        
       using default value:  1.70000                                                                
       [RHOIM1              ] bulk density IM1                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM2              ] bulk density IM2                                                      
       using default value: 0.260000E+07                                                            
       [RHOIM3              ] bulk density IM3                                                      
       using default value: 0.260000E+07                                                            
       [RHODetC             ] bulk density DetC                                                     
       using default value: 0.130000E+07                                                            
       [RHOOOC              ] bulk density OOC                                                      
       using default value: 0.130000E+07                                                            
       [RHODiat             ] bulk density Diatoms                                                  
       using default value: 0.130000E+07                                                            
       [RHOGreen            ] bulk density Greens                                                   
       using default value: 0.130000E+07                                                            
       [PORS1               ] porosity of sediment layer S1                                         
       Using constant nr374 with value: 0.300000                                                    
       [Surf                ] horizontal surface area of a DELWAQ segment                           
       Using parameter nr  1                                                                        
       [DetNS1              ] DetN in layer S1                                                      
       Using substance nr  25                                                                       
       [DetPS1              ] DetP in layer S1                                                      
       Using substance nr  26                                                                       
       [DetSiS1             ] DetSi in layer S1                                                     
       Using substance nr  27                                                                       
       [OONS1               ] OON in layer S1                                                       
       using default value:  0.00000                                                                
       [OOPS1               ] OOP in layer S1                                                       
       using default value:  0.00000                                                                
       [OOSiS1              ] OOSi in layer S1                                                      
       using default value:  0.00000                                                                
       [MPB1peliS1          ] MPB epipelic biomass in layer S1                                      
       using default value:  0.00000                                                                
       [MPB2psamS1          ] MPB n-diat biomass in layer S1                                        
       using default value:  0.00000                                                                
       [DmCfMPB1            ] DM:C ratio MPB1 algae                                                 
       using default value:  2.50000                                                                
       [DmCfMPB2            ] DM:C ratio MPB2 algae                                                 
       using default value:  2.50000                                                                
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
       [RhoOM               ] dry bulk density organic matter                                       
       using default value: 0.130000E+07                                                            
                                                                                                    
 Input for [Phy_Blo             ] Computation of phytoplankton output - Bloom                       
       [NAlgBloom           ] number of algae types in BLOOM                                        
       using default value:  30.0000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [SpecAlg01           ] number of the group for algae type 01                                 
       using default value:  1.00000                                                                
       [SpecAlg02           ] number of the group for algae type 02                                 
       using default value:  1.00000                                                                
       [SpecAlg03           ] number of the group for algae type 03                                 
       using default value:  1.00000                                                                
       [SpecAlg04           ] number of the group for algae type 04                                 
       using default value:  2.00000                                                                
       [SpecAlg05           ] number of the group for algae type 05                                 
       using default value:  2.00000                                                                
       [SpecAlg06           ] number of the group for algae type 06                                 
       using default value:  2.00000                                                                
       [SpecAlg07           ] number of the group for algae type 07                                 
       using default value:  3.00000                                                                
       [SpecAlg08           ] number of the group for algae type 08                                 
       using default value:  3.00000                                                                
       [SpecAlg09           ] number of the group for algae type 09                                 
       using default value:  3.00000                                                                
       [SpecAlg10           ] number of the group for algae type 10                                 
       using default value:  4.00000                                                                
       [SpecAlg11           ] number of the group for algae type 11                                 
       using default value:  4.00000                                                                
       [SpecAlg12           ] number of the group for algae type 12                                 
       using default value:  4.00000                                                                
       [SpecAlg13           ] number of the group for algae type 13                                 
       using default value:  0.00000                                                                
       [SpecAlg14           ] number of the group for algae type 14                                 
       using default value:  0.00000                                                                
       [SpecAlg15           ] number of the group for algae type 15                                 
       using default value:  0.00000                                                                
       [SpecAlg16           ] number of the group for algae type 16                                 
       using default value:  0.00000                                                                
       [SpecAlg17           ] number of the group for algae type 17                                 
       using default value:  0.00000                                                                
       [SpecAlg18           ] number of the group for algae type 18                                 
       using default value:  0.00000                                                                
       [SpecAlg19           ] number of the group for algae type 19                                 
       using default value:  0.00000                                                                
       [SpecAlg20           ] number of the group for algae type 20                                 
       using default value:  0.00000                                                                
       [SpecAlg21           ] number of the group for algae type 21                                 
       using default value:  0.00000                                                                
       [SpecAlg22           ] number of the group for algae type 22                                 
       using default value:  0.00000                                                                
       [SpecAlg23           ] number of the group for algae type 23                                 
       using default value:  0.00000                                                                
       [SpecAlg24           ] number of the group for algae type 24                                 
       using default value:  0.00000                                                                
       [SpecAlg25           ] number of the group for algae type 25                                 
       using default value:  0.00000                                                                
       [SpecAlg26           ] number of the group for algae type 26                                 
       using default value:  0.00000                                                                
       [SpecAlg27           ] number of the group for algae type 27                                 
       using default value:  0.00000                                                                
       [SpecAlg28           ] number of the group for algae type 28                                 
       using default value:  0.00000                                                                
       [SpecAlg29           ] number of the group for algae type 29                                 
       using default value:  0.00000                                                                
       [SpecAlg30           ] number of the group for algae type 30                                 
       using default value:  0.00000                                                                
       [NCRMDI_E            ] N:C ratio algae type 01                                               
       Using constant nr 94 with value: 0.255000                                                    
       [NCRMDI_N            ] N:C ratio algae type 02                                               
       Using constant nr 95 with value: 0.125000                                                    
       [NCRMDI_P            ] N:C ratio algae type 03                                               
       Using constant nr 96 with value: 0.150000                                                    
       [NCRMFL_E            ] N:C ratio algae type 04                                               
       Using constant nr 97 with value: 0.200000                                                    
       [NCRMFL_N            ] N:C ratio algae type 05                                               
       Using constant nr 98 with value: 0.140000                                                    
       [NCRMFL_P            ] N:C ratio algae type 06                                               
       Using constant nr 99 with value: 0.200000                                                    
       [NCRDIN_E            ] N:C ratio algae type 07                                               
       Using constant nr100 with value: 0.162500                                                    
       [NCRDIN_N            ] N:C ratio algae type 08                                               
       Using constant nr101 with value: 0.125000                                                    
       [NCRDIN_P            ] N:C ratio algae type 09                                               
       Using constant nr102 with value: 0.137500                                                    
       [NCRPHA_E            ] N:C ratio algae type 10                                               
       Using constant nr103 with value: 0.187500                                                    
       [NCRPHA_N            ] N:C ratio algae type 11                                               
       Using constant nr104 with value: 0.135000                                                    
       [NCRPHA_P            ] N:C ratio algae type 12                                               
       Using constant nr105 with value: 0.187500                                                    
       [NCRAlg13            ] N:C ratio algae type 13                                               
       using default value: 0.200000                                                                
       [NCRAlg14            ] N:C ratio algae type 14                                               
       using default value: 0.200000                                                                
       [NCRAlg15            ] N:C ratio algae type 15                                               
       using default value: 0.200000                                                                
       [NCRAlg16            ] N:C ratio algae type 16                                               
       using default value: 0.200000                                                                
       [NCRAlg17            ] N:C ratio algae type 17                                               
       using default value: 0.200000                                                                
       [NCRAlg18            ] N:C ratio algae type 18                                               
       using default value: 0.200000                                                                
       [NCRAlg19            ] N:C ratio algae type 19                                               
       using default value: 0.200000                                                                
       [NCRAlg20            ] N:C ratio algae type 20                                               
       using default value: 0.200000                                                                
       [NCRAlg21            ] N:C ratio algae type 21                                               
       using default value: 0.200000                                                                
       [NCRAlg22            ] N:C ratio algae type 22                                               
       using default value: 0.200000                                                                
       [NCRAlg23            ] N:C ratio algae type 23                                               
       using default value: 0.200000                                                                
       [NCRAlg24            ] N:C ratio algae type 24                                               
       using default value: 0.200000                                                                
       [NCRAlg25            ] N:C ratio algae type 25                                               
       using default value: 0.200000                                                                
       [NCRAlg26            ] N:C ratio algae type 26                                               
       using default value: 0.200000                                                                
       [NCRAlg27            ] N:C ratio algae type 27                                               
       using default value: 0.200000                                                                
       [NCRAlg28            ] N:C ratio algae type 28                                               
       using default value: 0.200000                                                                
       [NCRAlg29            ] N:C ratio algae type 29                                               
       using default value: 0.200000                                                                
       [NCRAlg30            ] N:C ratio algae type 30                                               
       using default value: 0.200000                                                                
       [PCRMDI_E            ] P:C ratio algae type 01                                               
       Using constant nr106 with value: 0.315000E-01                                                
       [PCRMDI_N            ] P:C ratio algae type 02                                               
       Using constant nr107 with value: 0.175000E-01                                                
       [PCRMDI_P            ] P:C ratio algae type 03                                               
       Using constant nr108 with value: 0.112500E-01                                                
       [PCRMFL_E            ] P:C ratio algae type 04                                               
       Using constant nr109 with value: 0.200000E-01                                                
       [PCRMFL_N            ] P:C ratio algae type 05                                               
       Using constant nr110 with value: 0.150000E-01                                                
       [PCRMFL_P            ] P:C ratio algae type 06                                               
       Using constant nr111 with value: 0.112500E-01                                                
       [PCRDIN_E            ] P:C ratio algae type 07                                               
       Using constant nr112 with value: 0.167500E-01                                                
       [PCRDIN_N            ] P:C ratio algae type 08                                               
       Using constant nr113 with value: 0.150000E-01                                                
       [PCRDIN_P            ] P:C ratio algae type 09                                               
       Using constant nr114 with value: 0.130000E-01                                                
       [PCRPHA_E            ] P:C ratio algae type 10                                               
       Using constant nr115 with value: 0.225000E-01                                                
       [PCRPHA_N            ] P:C ratio algae type 11                                               
       Using constant nr116 with value: 0.212500E-01                                                
       [PCRPHA_P            ] P:C ratio algae type 12                                               
       Using constant nr117 with value: 0.112500E-01                                                
       [PCRAlg13            ] P:C ratio algae type 13                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg14            ] P:C ratio algae type 14                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg15            ] P:C ratio algae type 15                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg16            ] P:C ratio algae type 16                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg17            ] P:C ratio algae type 17                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg18            ] P:C ratio algae type 18                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg19            ] P:C ratio algae type 19                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg20            ] P:C ratio algae type 20                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg21            ] P:C ratio algae type 21                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg22            ] P:C ratio algae type 22                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg23            ] P:C ratio algae type 23                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg24            ] P:C ratio algae type 24                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg25            ] P:C ratio algae type 25                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg26            ] P:C ratio algae type 26                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg27            ] P:C ratio algae type 27                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg28            ] P:C ratio algae type 28                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg29            ] P:C ratio algae type 29                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg30            ] P:C ratio algae type 30                                               
       using default value: 0.200000E-01                                                            
       [SCRMDI_E            ] Si:C ratio algae type 01                                              
       Using constant nr118 with value: 0.447000                                                    
       [SCRMDI_N            ] Si:C ratio algae type 02                                              
       Using constant nr119 with value: 0.283000                                                    
       [SCRMDI_P            ] Si:C ratio algae type 03                                              
       Using constant nr120 with value: 0.283000                                                    
       [SCRMFL_E            ] Si:C ratio algae type 04                                              
       Using constant nr121 with value:  0.00000                                                    
       [SCRMFL_N            ] Si:C ratio algae type 05                                              
       Using constant nr122 with value:  0.00000                                                    
       [SCRMFL_P            ] Si:C ratio algae type 06                                              
       Using constant nr123 with value:  0.00000                                                    
       [SCRDIN_E            ] Si:C ratio algae type 07                                              
       Using constant nr124 with value:  0.00000                                                    
       [SCRDIN_N            ] Si:C ratio algae type 08                                              
       Using constant nr125 with value:  0.00000                                                    
       [SCRDIN_P            ] Si:C ratio algae type 09                                              
       Using constant nr126 with value:  0.00000                                                    
       [SCRPHA_E            ] Si:C ratio algae type 10                                              
       Using constant nr127 with value:  0.00000                                                    
       [SCRPHA_N            ] Si:C ratio algae type 11                                              
       Using constant nr128 with value:  0.00000                                                    
       [SCRPHA_P            ] Si:C ratio algae type 12                                              
       Using constant nr129 with value:  0.00000                                                    
       [SCRAlg13            ] Si:C ratio algae type 13                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg14            ] Si:C ratio algae type 14                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg15            ] Si:C ratio algae type 15                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg16            ] Si:C ratio algae type 16                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg17            ] Si:C ratio algae type 17                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg18            ] Si:C ratio algae type 18                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg19            ] Si:C ratio algae type 19                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg20            ] Si:C ratio algae type 20                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg21            ] Si:C ratio algae type 21                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg22            ] Si:C ratio algae type 22                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg23            ] Si:C ratio algae type 23                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg24            ] Si:C ratio algae type 24                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg25            ] Si:C ratio algae type 25                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg26            ] Si:C ratio algae type 26                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg27            ] Si:C ratio algae type 27                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg28            ] Si:C ratio algae type 28                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg29            ] Si:C ratio algae type 29                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg30            ] Si:C ratio algae type 30                                              
       using default value: 0.200000E-02                                                            
       [DMCFMDI_E           ] DM:C ratio algae type 01                                              
       Using constant nr 82 with value:  3.00000                                                    
       [DMCFMDI_N           ] DM:C ratio algae type 02                                              
       Using constant nr 83 with value:  3.00000                                                    
       [DMCFMDI_P           ] DM:C ratio algae type 03                                              
       Using constant nr 84 with value:  3.00000                                                    
       [DMCFMFL_E           ] DM:C ratio algae type 04                                              
       Using constant nr 85 with value:  2.50000                                                    
       [DMCFMFL_N           ] DM:C ratio algae type 05                                              
       Using constant nr 86 with value:  2.50000                                                    
       [DMCFMFL_P           ] DM:C ratio algae type 06                                              
       Using constant nr 87 with value:  2.50000                                                    
       [DMCFDIN_E           ] DM:C ratio algae type 07                                              
       Using constant nr 88 with value:  2.50000                                                    
       [DMCFDIN_N           ] DM:C ratio algae type 08                                              
       Using constant nr 89 with value:  2.50000                                                    
       [DMCFDIN_P           ] DM:C ratio algae type 09                                              
       Using constant nr 90 with value:  2.50000                                                    
       [DMCFPHA_E           ] DM:C ratio algae type 10                                              
       Using constant nr 91 with value:  2.50000                                                    
       [DMCFPHA_N           ] DM:C ratio algae type 11                                              
       Using constant nr 92 with value:  2.50000                                                    
       [DMCFPHA_P           ] DM:C ratio algae type 12                                              
       Using constant nr 93 with value:  2.50000                                                    
       [DMCFAlg13           ] DM:C ratio algae type 13                                              
       using default value:  2.50000                                                                
       [DMCFAlg14           ] DM:C ratio algae type 14                                              
       using default value:  2.50000                                                                
       [DMCFAlg15           ] DM:C ratio algae type 15                                              
       using default value:  2.50000                                                                
       [DMCFAlg16           ] DM:C ratio algae type 16                                              
       using default value:  2.50000                                                                
       [DMCFAlg17           ] DM:C ratio algae type 17                                              
       using default value:  2.50000                                                                
       [DMCFAlg18           ] DM:C ratio algae type 18                                              
       using default value:  2.50000                                                                
       [DMCFAlg19           ] DM:C ratio algae type 19                                              
       using default value:  2.50000                                                                
       [DMCFAlg20           ] DM:C ratio algae type 20                                              
       using default value:  2.50000                                                                
       [DMCFAlg21           ] DM:C ratio algae type 21                                              
       using default value:  2.50000                                                                
       [DMCFAlg22           ] DM:C ratio algae type 22                                              
       using default value:  2.50000                                                                
       [DMCFAlg23           ] DM:C ratio algae type 23                                              
       using default value:  2.50000                                                                
       [DMCFAlg24           ] DM:C ratio algae type 24                                              
       using default value:  2.50000                                                                
       [DMCFAlg25           ] DM:C ratio algae type 25                                              
       using default value:  2.50000                                                                
       [DMCFAlg26           ] DM:C ratio algae type 26                                              
       using default value:  2.50000                                                                
       [DMCFAlg27           ] DM:C ratio algae type 27                                              
       using default value:  2.50000                                                                
       [DMCFAlg28           ] DM:C ratio algae type 28                                              
       using default value:  2.50000                                                                
       [DMCFAlg29           ] DM:C ratio algae type 29                                              
       using default value:  2.50000                                                                
       [DMCFAlg30           ] DM:C ratio algae type 30                                              
       using default value:  2.50000                                                                
       [CHLACMDI_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr130 with value: 0.533000E-01                                                
       [CHLACMDI_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr131 with value: 0.150000E-01                                                
       [CHLACMDI_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr132 with value: 0.150000E-01                                                
       [CHLACMFL_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr133 with value: 0.228000E-01                                                
       [CHLACMFL_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr134 with value: 0.100000E-01                                                
       [CHLACMFL_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr135 with value: 0.100000E-01                                                
       [CHLACDIN_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr136 with value: 0.228000E-01                                                
       [CHLACDIN_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr137 with value: 0.100000E-01                                                
       [CHLACDIN_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr138 with value: 0.100000E-01                                                
       [CHLACPHA_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr139 with value: 0.228000E-01                                                
       [CHLACPHA_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr140 with value: 0.125000E-01                                                
       [CHLACPHA_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr141 with value: 0.125000E-01                                                
       [ChlaCAlg13          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg14          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg15          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg16          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg17          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg18          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg19          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg20          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg21          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg22          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg23          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg24          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg25          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg26          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg27          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg28          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg29          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg30          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [XNCRMDI_E           ] N:C ratio for heterotrophic algae type 01                             
       using default value: -1.00000                                                                
       [XNCRMDI_N           ] N:C ratio for heterotrophic algae type 02                             
       using default value: -1.00000                                                                
       [XNCRMDI_P           ] N:C ratio for heterotrophic algae type 03                             
       using default value: -1.00000                                                                
       [XNCRMFL_E           ] N:C ratio for heterotrophic algae type 04                             
       using default value: -1.00000                                                                
       [XNCRMFL_N           ] N:C ratio for heterotrophic algae type 05                             
       using default value: -1.00000                                                                
       [XNCRMFL_P           ] N:C ratio for heterotrophic algae type 06                             
       using default value: -1.00000                                                                
       [XNCRDIN_E           ] N:C ratio for heterotrophic algae type 07                             
       using default value: -1.00000                                                                
       [XNCRDIN_N           ] N:C ratio for heterotrophic algae type 08                             
       using default value: -1.00000                                                                
       [XNCRDIN_P           ] N:C ratio for heterotrophic algae type 09                             
       using default value: -1.00000                                                                
       [XNCRPHA_E           ] N:C ratio for heterotrophic algae type 10                             
       using default value: -1.00000                                                                
       [XNCRPHA_N           ] N:C ratio for heterotrophic algae type 11                             
       using default value: -1.00000                                                                
       [XNCRPHA_P           ] N:C ratio for heterotrophic algae type 12                             
       using default value: -1.00000                                                                
       [XNCRAlg13           ] N:C ratio for heterotrophic algae type 13                             
       using default value: -1.00000                                                                
       [XNCRAlg14           ] N:C ratio for heterotrophic algae type 14                             
       using default value: -1.00000                                                                
       [XNCRAlg15           ] N:C ratio for heterotrophic algae type 15                             
       using default value: -1.00000                                                                
       [XNCRAlg16           ] N:C ratio for heterotrophic algae type 16                             
       using default value: -1.00000                                                                
       [XNCRAlg17           ] N:C ratio for heterotrophic algae type 17                             
       using default value: -1.00000                                                                
       [XNCRAlg18           ] N:C ratio for heterotrophic algae type 18                             
       using default value: -1.00000                                                                
       [XNCRAlg19           ] N:C ratio for heterotrophic algae type 19                             
       using default value: -1.00000                                                                
       [XNCRAlg20           ] N:C ratio for heterotrophic algae type 20                             
       using default value: -1.00000                                                                
       [XNCRAlg21           ] N:C ratio for heterotrophic algae type 21                             
       using default value: -1.00000                                                                
       [XNCRAlg22           ] N:C ratio for heterotrophic algae type 22                             
       using default value: -1.00000                                                                
       [XNCRAlg23           ] N:C ratio for heterotrophic algae type 23                             
       using default value: -1.00000                                                                
       [XNCRAlg24           ] N:C ratio for heterotrophic algae type 24                             
       using default value: -1.00000                                                                
       [XNCRAlg25           ] N:C ratio for heterotrophic algae type 25                             
       using default value: -1.00000                                                                
       [XNCRAlg26           ] N:C ratio for heterotrophic algae type 26                             
       using default value: -1.00000                                                                
       [XNCRAlg27           ] N:C ratio for heterotrophic algae type 27                             
       using default value: -1.00000                                                                
       [XNCRAlg28           ] N:C ratio for heterotrophic algae type 28                             
       using default value: -1.00000                                                                
       [XNCRAlg29           ] N:C ratio for heterotrophic algae type 29                             
       using default value: -1.00000                                                                
       [XNCRAlg30           ] N:C ratio for heterotrophic algae type 30                             
       using default value: -1.00000                                                                
       [XPCRMDI_E           ] P:C ratio for heterotrophic algae type 01                             
       using default value: -1.00000                                                                
       [XPCRMDI_N           ] P:C ratio for heterotrophic algae type 02                             
       using default value: -1.00000                                                                
       [XPCRMDI_P           ] P:C ratio for heterotrophic algae type 03                             
       using default value: -1.00000                                                                
       [XPCRMFL_E           ] P:C ratio for heterotrophic algae type 04                             
       using default value: -1.00000                                                                
       [XPCRMFL_N           ] P:C ratio for heterotrophic algae type 05                             
       using default value: -1.00000                                                                
       [XPCRMFL_P           ] P:C ratio for heterotrophic algae type 06                             
       using default value: -1.00000                                                                
       [XPCRDIN_E           ] P:C ratio for heterotrophic algae type 07                             
       using default value: -1.00000                                                                
       [XPCRDIN_N           ] P:C ratio for heterotrophic algae type 08                             
       using default value: -1.00000                                                                
       [XPCRDIN_P           ] P:C ratio for heterotrophic algae type 09                             
       using default value: -1.00000                                                                
       [XPCRPHA_E           ] P:C ratio for heterotrophic algae type 10                             
       using default value: -1.00000                                                                
       [XPCRPHA_N           ] P:C ratio for heterotrophic algae type 11                             
       using default value: -1.00000                                                                
       [XPCRPHA_P           ] P:C ratio for heterotrophic algae type 12                             
       using default value: -1.00000                                                                
       [XPCRAlg13           ] P:C ratio for heterotrophic algae type 13                             
       using default value: -1.00000                                                                
       [XPCRAlg14           ] P:C ratio for heterotrophic algae type 14                             
       using default value: -1.00000                                                                
       [XPCRAlg15           ] P:C ratio for heterotrophic algae type 15                             
       using default value: -1.00000                                                                
       [XPCRAlg16           ] P:C ratio for heterotrophic algae type 16                             
       using default value: -1.00000                                                                
       [XPCRAlg17           ] P:C ratio for heterotrophic algae type 17                             
       using default value: -1.00000                                                                
       [XPCRAlg18           ] P:C ratio for heterotrophic algae type 18                             
       using default value: -1.00000                                                                
       [XPCRAlg19           ] P:C ratio for heterotrophic algae type 19                             
       using default value: -1.00000                                                                
       [XPCRAlg20           ] P:C ratio for heterotrophic algae type 20                             
       using default value: -1.00000                                                                
       [XPCRAlg21           ] P:C ratio for heterotrophic algae type 21                             
       using default value: -1.00000                                                                
       [XPCRAlg22           ] P:C ratio for heterotrophic algae type 22                             
       using default value: -1.00000                                                                
       [XPCRAlg23           ] P:C ratio for heterotrophic algae type 23                             
       using default value: -1.00000                                                                
       [XPCRAlg24           ] P:C ratio for heterotrophic algae type 24                             
       using default value: -1.00000                                                                
       [XPCRAlg25           ] P:C ratio for heterotrophic algae type 25                             
       using default value: -1.00000                                                                
       [XPCRAlg26           ] P:C ratio for heterotrophic algae type 26                             
       using default value: -1.00000                                                                
       [XPCRAlg27           ] P:C ratio for heterotrophic algae type 27                             
       using default value: -1.00000                                                                
       [XPCRAlg28           ] P:C ratio for heterotrophic algae type 28                             
       using default value: -1.00000                                                                
       [XPCRAlg29           ] P:C ratio for heterotrophic algae type 29                             
       using default value: -1.00000                                                                
       [XPCRAlg30           ] P:C ratio for heterotrophic algae type 30                             
       using default value: -1.00000                                                                
       [FNCRMDI_E           ] N:C ratio for nitrogen fixing algae type 01                           
       using default value: -1.00000                                                                
       [FNCRMDI_N           ] N:C ratio for nitrogen fixing algae type 02                           
       using default value: -1.00000                                                                
       [FNCRMDI_P           ] N:C ratio for nitrogen fixing algae type 03                           
       using default value: -1.00000                                                                
       [FNCRMFL_E           ] N:C ratio for nitrogen fixing algae type 04                           
       using default value: -1.00000                                                                
       [FNCRMFL_N           ] N:C ratio for nitrogen fixing algae type 05                           
       using default value: -1.00000                                                                
       [FNCRMFL_P           ] N:C ratio for nitrogen fixing algae type 06                           
       using default value: -1.00000                                                                
       [FNCRDIN_E           ] N:C ratio for nitrogen fixing algae type 07                           
       using default value: -1.00000                                                                
       [FNCRDIN_N           ] N:C ratio for nitrogen fixing algae type 08                           
       using default value: -1.00000                                                                
       [FNCRDIN_P           ] N:C ratio for nitrogen fixing algae type 09                           
       using default value: -1.00000                                                                
       [FNCRPHA_E           ] N:C ratio for nitrogen fixing algae type 10                           
       using default value: -1.00000                                                                
       [FNCRPHA_N           ] N:C ratio for nitrogen fixing algae type 11                           
       using default value: -1.00000                                                                
       [FNCRPHA_P           ] N:C ratio for nitrogen fixing algae type 12                           
       using default value: -1.00000                                                                
       [FNCRAlg13           ] N:C ratio for nitrogen fixing algae type 13                           
       using default value: -1.00000                                                                
       [FNCRAlg14           ] N:C ratio for nitrogen fixing algae type 14                           
       using default value: -1.00000                                                                
       [FNCRAlg15           ] N:C ratio for nitrogen fixing algae type 15                           
       using default value: -1.00000                                                                
       [FNCRAlg16           ] N:C ratio for nitrogen fixing algae type 16                           
       using default value: -1.00000                                                                
       [FNCRAlg17           ] N:C ratio for nitrogen fixing algae type 17                           
       using default value: -1.00000                                                                
       [FNCRAlg18           ] N:C ratio for nitrogen fixing algae type 18                           
       using default value: -1.00000                                                                
       [FNCRAlg19           ] N:C ratio for nitrogen fixing algae type 19                           
       using default value: -1.00000                                                                
       [FNCRAlg20           ] N:C ratio for nitrogen fixing algae type 20                           
       using default value: -1.00000                                                                
       [FNCRAlg21           ] N:C ratio for nitrogen fixing algae type 21                           
       using default value: -1.00000                                                                
       [FNCRAlg22           ] N:C ratio for nitrogen fixing algae type 22                           
       using default value: -1.00000                                                                
       [FNCRAlg23           ] N:C ratio for nitrogen fixing algae type 23                           
       using default value: -1.00000                                                                
       [FNCRAlg24           ] N:C ratio for nitrogen fixing algae type 24                           
       using default value: -1.00000                                                                
       [FNCRAlg25           ] N:C ratio for nitrogen fixing algae type 25                           
       using default value: -1.00000                                                                
       [FNCRAlg26           ] N:C ratio for nitrogen fixing algae type 26                           
       using default value: -1.00000                                                                
       [FNCRAlg27           ] N:C ratio for nitrogen fixing algae type 27                           
       using default value: -1.00000                                                                
       [FNCRAlg28           ] N:C ratio for nitrogen fixing algae type 28                           
       using default value: -1.00000                                                                
       [FNCRAlg29           ] N:C ratio for nitrogen fixing algae type 29                           
       using default value: -1.00000                                                                
       [FNCRAlg30           ] N:C ratio for nitrogen fixing algae type 30                           
       using default value: -1.00000                                                                
       [FixMDI_E            ] algae type 01 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_N            ] algae type 02 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_P            ] algae type 03 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_E            ] algae type 04 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_N            ] algae type 05 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_P            ] algae type 06 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_E            ] algae type 07 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_N            ] algae type 08 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_P            ] algae type 09 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_E            ] algae type 10 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_N            ] algae type 11 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_P            ] algae type 12 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg13            ] algae type 13 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg14            ] algae type 14 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg15            ] algae type 15 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg16            ] algae type 16 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg17            ] algae type 17 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg18            ] algae type 18 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg19            ] algae type 19 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg20            ] algae type 20 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg21            ] algae type 21 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg22            ] algae type 22 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg23            ] algae type 23 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg24            ] algae type 24 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg25            ] algae type 25 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg26            ] algae type 26 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg27            ] algae type 27 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg28            ] algae type 28 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg29            ] algae type 29 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg30            ] algae type 30 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
                                                                                                    
 Input for [BLOOM               ] BLOOM II algae module                                             
       [TimMultBl           ] ratio bloom/delwaq time step                                          
       Using constant nr 45 with value:  1.00000                                                    
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr304 with value: 0.180000                                                    
       [ExtVlPhyt           ] VL extinction by phytoplankton                                        
       Using output from proces [EXTINABVL           ]                                              
       [Temp                ] ambient water temperature                                             
       Using function nr  1                                                                         
       [Rad                 ] irradiation at the segment upper-boundary                             
       Using output from proces [CalcRad             ]                                              
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [BloomDepth          ] average depth over Bloom time step                                    
       Using output from proces [DepAve              ]                                              
       [DayL                ] daylength <0-1>                                                       
       Using output from proces [Daylength           ]                                              
       [NH4                 ] external NH4 concentration                                            
       Using substance nr   4                                                                       
       [NO3                 ] external NO3 concentration                                            
       Using substance nr   5                                                                       
       [PO4                 ] external P concentration                                              
       Using substance nr   6                                                                       
       [Si                  ] external Si concentration                                             
       Using substance nr   7                                                                       
       [ThrAlgNH4           ] threshold concentration uptake ammonium                               
       using default value:  0.00000                                                                
       [ThrAlgNO3           ] threshold concentration uptake nitrate                                
       using default value:  0.00000                                                                
       [ThrAlgPO4           ] threshold concentration uptake phosphate                              
       using default value:  0.00000                                                                
       [ThrAlgSi            ] threshold concentration uptake silicium                               
       using default value:  0.00000                                                                
       [PON1                ] PON1 (fast decomposing fraction)                                      
       Using substance nr  10                                                                       
       [POP1                ] POP1 (fast decomposing fraction)                                      
       Using substance nr  11                                                                       
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [SWBloomOut          ] switch on BLOOM output (0=no,1=yes)                                   
       Using constant nr315 with value:  0.00000                                                    
       [SWOxyProd           ] switch on oxygen prod. (0=BLOOM, 1=VAROXY)                            
       using default value:  0.00000                                                                
       [Cl                  ] Chloride                                                              
       using default value:  20000.0                                                                
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [SwVTRANS            ] switch effect of vertical mixing on light                             
       Using output from proces [vtrans              ]                                              
       [TIC                 ] total inorganic carbonate                                             
       using default value:  0.00000                                                                
       [CO2                 ] CO2                                                                   
       using default value:  0.00000                                                                
       [SWTICdummy          ] dummy option for TIC, do not change value                             
       using default value:  0.00000                                                                
       [SWCLim              ] Switch for C limitation (0=inactive 1=active)                         
       using default value:  0.00000                                                                
       [SWBloomSA           ] switch for BLOOM stand alone (0=no, 1=yes)                            
       using default value:  0.00000                                                                
       [TotNBLSA            ] Total nitrogen for BLOOM stand alone                                  
       using default value:  0.00000                                                                
       [TotPBLSA            ] Total phosphorous for BLOOM stand alone                               
       using default value:  0.00000                                                                
       [TotSiBLSA           ] Total silicium for BLOOM stand alone                                  
       using default value:  0.00000                                                                
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [SpecAlg01           ] number of the group for algae type 01                                 
       using default value:  1.00000                                                                
       [SpecAlg02           ] number of the group for algae type 02                                 
       using default value:  1.00000                                                                
       [SpecAlg03           ] number of the group for algae type 03                                 
       using default value:  1.00000                                                                
       [SpecAlg04           ] number of the group for algae type 04                                 
       using default value:  2.00000                                                                
       [SpecAlg05           ] number of the group for algae type 05                                 
       using default value:  2.00000                                                                
       [SpecAlg06           ] number of the group for algae type 06                                 
       using default value:  2.00000                                                                
       [SpecAlg07           ] number of the group for algae type 07                                 
       using default value:  3.00000                                                                
       [SpecAlg08           ] number of the group for algae type 08                                 
       using default value:  3.00000                                                                
       [SpecAlg09           ] number of the group for algae type 09                                 
       using default value:  3.00000                                                                
       [SpecAlg10           ] number of the group for algae type 10                                 
       using default value:  4.00000                                                                
       [SpecAlg11           ] number of the group for algae type 11                                 
       using default value:  4.00000                                                                
       [SpecAlg12           ] number of the group for algae type 12                                 
       using default value:  4.00000                                                                
       [SpecAlg13           ] number of the group for algae type 13                                 
       using default value:  0.00000                                                                
       [SpecAlg14           ] number of the group for algae type 14                                 
       using default value:  0.00000                                                                
       [SpecAlg15           ] number of the group for algae type 15                                 
       using default value:  0.00000                                                                
       [SpecAlg16           ] number of the group for algae type 16                                 
       using default value:  0.00000                                                                
       [SpecAlg17           ] number of the group for algae type 17                                 
       using default value:  0.00000                                                                
       [SpecAlg18           ] number of the group for algae type 18                                 
       using default value:  0.00000                                                                
       [SpecAlg19           ] number of the group for algae type 19                                 
       using default value:  0.00000                                                                
       [SpecAlg20           ] number of the group for algae type 20                                 
       using default value:  0.00000                                                                
       [SpecAlg21           ] number of the group for algae type 21                                 
       using default value:  0.00000                                                                
       [SpecAlg22           ] number of the group for algae type 22                                 
       using default value:  0.00000                                                                
       [SpecAlg23           ] number of the group for algae type 23                                 
       using default value:  0.00000                                                                
       [SpecAlg24           ] number of the group for algae type 24                                 
       using default value:  0.00000                                                                
       [SpecAlg25           ] number of the group for algae type 25                                 
       using default value:  0.00000                                                                
       [SpecAlg26           ] number of the group for algae type 26                                 
       using default value:  0.00000                                                                
       [SpecAlg27           ] number of the group for algae type 27                                 
       using default value:  0.00000                                                                
       [SpecAlg28           ] number of the group for algae type 28                                 
       using default value:  0.00000                                                                
       [SpecAlg29           ] number of the group for algae type 29                                 
       using default value:  0.00000                                                                
       [SpecAlg30           ] number of the group for algae type 30                                 
       using default value:  0.00000                                                                
       [FrAutMDI_E          ] fraction autolysis algae type 01                                      
       Using constant nr 46 with value: 0.300000                                                    
       [FrAutMDI_N          ] fraction autolysis algae type 02                                      
       Using constant nr 47 with value: 0.300000                                                    
       [FrAutMDI_P          ] fraction autolysis algae type 03                                      
       Using constant nr 48 with value: 0.300000                                                    
       [FrAutMFL_E          ] fraction autolysis algae type 04                                      
       Using constant nr 49 with value: 0.300000                                                    
       [FrAutMFL_N          ] fraction autolysis algae type 05                                      
       Using constant nr 50 with value: 0.300000                                                    
       [FrAutMFL_P          ] fraction autolysis algae type 06                                      
       Using constant nr 51 with value: 0.300000                                                    
       [FrAutDIN_E          ] fraction autolysis algae type 07                                      
       Using constant nr 52 with value: 0.300000                                                    
       [FrAutDIN_N          ] fraction autolysis algae type 08                                      
       Using constant nr 53 with value: 0.300000                                                    
       [FrAutDIN_P          ] fraction autolysis algae type 09                                      
       Using constant nr 54 with value: 0.300000                                                    
       [FrAutPHA_E          ] fraction autolysis algae type 10                                      
       Using constant nr 55 with value: 0.300000                                                    
       [FrAutPHA_N          ] fraction autolysis algae type 11                                      
       Using constant nr 56 with value: 0.300000                                                    
       [FrAutPHA_P          ] fraction autolysis algae type 12                                      
       Using constant nr 57 with value: 0.300000                                                    
       [FrAutAlg13          ] fraction autolysis algae type 13                                      
       using default value: 0.350000                                                                
       [FrAutAlg14          ] fraction autolysis algae type 14                                      
       using default value: 0.350000                                                                
       [FrAutAlg15          ] fraction autolysis algae type 15                                      
       using default value: 0.350000                                                                
       [FrAutAlg16          ] fraction autolysis algae type 16                                      
       using default value: 0.350000                                                                
       [FrAutAlg17          ] fraction autolysis algae type 17                                      
       using default value: 0.350000                                                                
       [FrAutAlg18          ] fraction autolysis algae type 18                                      
       using default value: 0.350000                                                                
       [FrAutAlg19          ] fraction autolysis algae type 19                                      
       using default value: 0.350000                                                                
       [FrAutAlg20          ] fraction autolysis algae type 20                                      
       using default value: 0.350000                                                                
       [FrAutAlg21          ] fraction autolysis algae type 21                                      
       using default value: 0.350000                                                                
       [FrAutAlg22          ] fraction autolysis algae type 22                                      
       using default value: 0.350000                                                                
       [FrAutAlg23          ] fraction autolysis algae type 23                                      
       using default value: 0.350000                                                                
       [FrAutAlg24          ] fraction autolysis algae type 24                                      
       using default value: 0.350000                                                                
       [FrAutAlg25          ] fraction autolysis algae type 25                                      
       using default value: 0.350000                                                                
       [FrAutAlg26          ] fraction autolysis algae type 26                                      
       using default value: 0.350000                                                                
       [FrAutAlg27          ] fraction autolysis algae type 27                                      
       using default value: 0.350000                                                                
       [FrAutAlg28          ] fraction autolysis algae type 28                                      
       using default value: 0.350000                                                                
       [FrAutAlg29          ] fraction autolysis algae type 29                                      
       using default value: 0.350000                                                                
       [FrAutAlg30          ] fraction autolysis algae type 30                                      
       using default value: 0.350000                                                                
       [FrDetMDI_E          ] fraction detritus by mortality algae type 01                          
       Using constant nr 58 with value: 0.700000                                                    
       [FrDetMDI_N          ] fraction detritus by mortality algae type 02                          
       Using constant nr 59 with value: 0.700000                                                    
       [FrDetMDI_P          ] fraction detritus by mortality algae type 03                          
       Using constant nr 60 with value: 0.700000                                                    
       [FrDetMFL_E          ] fraction detritus by mortality algae type 04                          
       Using constant nr 61 with value: 0.700000                                                    
       [FrDetMFL_N          ] fraction detritus by mortality algae type 05                          
       Using constant nr 62 with value: 0.700000                                                    
       [FrDetMFL_P          ] fraction detritus by mortality algae type 06                          
       Using constant nr 63 with value: 0.700000                                                    
       [FrDetDIN_E          ] fraction detritus by mortality algae type 07                          
       Using constant nr 64 with value: 0.700000                                                    
       [FrDetDIN_N          ] fraction detritus by mortality algae type 08                          
       Using constant nr 65 with value: 0.700000                                                    
       [FrDetDIN_P          ] fraction detritus by mortality algae type 09                          
       Using constant nr 66 with value: 0.700000                                                    
       [FrDetPHA_E          ] fraction detritus by mortality algae type 10                          
       Using constant nr 67 with value: 0.700000                                                    
       [FrDetPHA_N          ] fraction detritus by mortality algae type 11                          
       Using constant nr 68 with value: 0.700000                                                    
       [FrDetPHA_P          ] fraction detritus by mortality algae type 12                          
       Using constant nr 69 with value: 0.700000                                                    
       [FrDetAlg13          ] fraction detritus by mortality algae type 13                          
       using default value: 0.650000                                                                
       [FrDetAlg14          ] fraction detritus by mortality algae type 14                          
       using default value: 0.650000                                                                
       [FrDetAlg15          ] fraction detritus by mortality algae type 15                          
       using default value: 0.650000                                                                
       [FrDetAlg16          ] fraction detritus by mortality algae type 16                          
       using default value: 0.650000                                                                
       [FrDetAlg17          ] fraction detritus by mortality algae type 17                          
       using default value: 0.650000                                                                
       [FrDetAlg18          ] fraction detritus by mortality algae type 18                          
       using default value: 0.650000                                                                
       [FrDetAlg19          ] fraction detritus by mortality algae type 19                          
       using default value: 0.650000                                                                
       [FrDetAlg20          ] fraction detritus by mortality algae type 20                          
       using default value: 0.650000                                                                
       [FrDetAlg21          ] fraction detritus by mortality algae type 21                          
       using default value: 0.650000                                                                
       [FrDetAlg22          ] fraction detritus by mortality algae type 22                          
       using default value: 0.650000                                                                
       [FrDetAlg23          ] fraction detritus by mortality algae type 23                          
       using default value: 0.650000                                                                
       [FrDetAlg24          ] fraction detritus by mortality algae type 24                          
       using default value: 0.650000                                                                
       [FrDetAlg25          ] fraction detritus by mortality algae type 25                          
       using default value: 0.650000                                                                
       [FrDetAlg26          ] fraction detritus by mortality algae type 26                          
       using default value: 0.650000                                                                
       [FrDetAlg27          ] fraction detritus by mortality algae type 27                          
       using default value: 0.650000                                                                
       [FrDetAlg28          ] fraction detritus by mortality algae type 28                          
       using default value: 0.650000                                                                
       [FrDetAlg29          ] fraction detritus by mortality algae type 29                          
       using default value: 0.650000                                                                
       [FrDetAlg30          ] fraction detritus by mortality algae type 30                          
       using default value: 0.650000                                                                
       [EXTVLMDI_E          ] VL specific extinction coefficient algae type 01                      
       Using constant nr 70 with value: 0.240000                                                    
       [EXTVLMDI_N          ] VL specific extinction coefficient algae type 02                      
       Using constant nr 71 with value: 0.210000                                                    
       [EXTVLMDI_P          ] VL specific extinction coefficient algae type 03                      
       Using constant nr 72 with value: 0.210000                                                    
       [EXTVLMFL_E          ] VL specific extinction coefficient algae type 04                      
       Using constant nr 73 with value: 0.250000                                                    
       [EXTVLMFL_N          ] VL specific extinction coefficient algae type 05                      
       Using constant nr 74 with value: 0.225000                                                    
       [EXTVLMFL_P          ] VL specific extinction coefficient algae type 06                      
       Using constant nr 75 with value: 0.225000                                                    
       [EXTVLDIN_E          ] VL specific extinction coefficient algae type 07                      
       Using constant nr 76 with value: 0.200000                                                    
       [EXTVLDIN_N          ] VL specific extinction coefficient algae type 08                      
       Using constant nr 77 with value: 0.175000                                                    
       [EXTVLDIN_P          ] VL specific extinction coefficient algae type 09                      
       Using constant nr 78 with value: 0.175000                                                    
       [EXTVLPHA_E          ] VL specific extinction coefficient algae type 10                      
       Using constant nr 79 with value: 0.450000                                                    
       [EXTVLPHA_N          ] VL specific extinction coefficient algae type 11                      
       Using constant nr 80 with value: 0.412500                                                    
       [EXTVLPHA_P          ] VL specific extinction coefficient algae type 12                      
       Using constant nr 81 with value: 0.412500                                                    
       [ExtVlAlg13          ] VL specific extinction coefficient algae type 13                      
       using default value: 0.200000                                                                
       [ExtVlAlg14          ] VL specific extinction coefficient algae type 14                      
       using default value: 0.200000                                                                
       [ExtVlAlg15          ] VL specific extinction coefficient algae type 15                      
       using default value: 0.200000                                                                
       [ExtVlAlg16          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg17          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg18          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg19          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg20          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg21          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg22          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg23          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg24          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg25          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg26          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg27          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg28          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg29          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg30          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [DMCFMDI_E           ] DM:C ratio algae type 01                                              
       Using constant nr 82 with value:  3.00000                                                    
       [DMCFMDI_N           ] DM:C ratio algae type 02                                              
       Using constant nr 83 with value:  3.00000                                                    
       [DMCFMDI_P           ] DM:C ratio algae type 03                                              
       Using constant nr 84 with value:  3.00000                                                    
       [DMCFMFL_E           ] DM:C ratio algae type 04                                              
       Using constant nr 85 with value:  2.50000                                                    
       [DMCFMFL_N           ] DM:C ratio algae type 05                                              
       Using constant nr 86 with value:  2.50000                                                    
       [DMCFMFL_P           ] DM:C ratio algae type 06                                              
       Using constant nr 87 with value:  2.50000                                                    
       [DMCFDIN_E           ] DM:C ratio algae type 07                                              
       Using constant nr 88 with value:  2.50000                                                    
       [DMCFDIN_N           ] DM:C ratio algae type 08                                              
       Using constant nr 89 with value:  2.50000                                                    
       [DMCFDIN_P           ] DM:C ratio algae type 09                                              
       Using constant nr 90 with value:  2.50000                                                    
       [DMCFPHA_E           ] DM:C ratio algae type 10                                              
       Using constant nr 91 with value:  2.50000                                                    
       [DMCFPHA_N           ] DM:C ratio algae type 11                                              
       Using constant nr 92 with value:  2.50000                                                    
       [DMCFPHA_P           ] DM:C ratio algae type 12                                              
       Using constant nr 93 with value:  2.50000                                                    
       [DMCFAlg13           ] DM:C ratio algae type 13                                              
       using default value:  2.50000                                                                
       [DMCFAlg14           ] DM:C ratio algae type 14                                              
       using default value:  2.50000                                                                
       [DMCFAlg15           ] DM:C ratio algae type 15                                              
       using default value:  2.50000                                                                
       [DMCFAlg16           ] DM:C ratio algae type 16                                              
       using default value:  2.50000                                                                
       [DMCFAlg17           ] DM:C ratio algae type 17                                              
       using default value:  2.50000                                                                
       [DMCFAlg18           ] DM:C ratio algae type 18                                              
       using default value:  2.50000                                                                
       [DMCFAlg19           ] DM:C ratio algae type 19                                              
       using default value:  2.50000                                                                
       [DMCFAlg20           ] DM:C ratio algae type 20                                              
       using default value:  2.50000                                                                
       [DMCFAlg21           ] DM:C ratio algae type 21                                              
       using default value:  2.50000                                                                
       [DMCFAlg22           ] DM:C ratio algae type 22                                              
       using default value:  2.50000                                                                
       [DMCFAlg23           ] DM:C ratio algae type 23                                              
       using default value:  2.50000                                                                
       [DMCFAlg24           ] DM:C ratio algae type 24                                              
       using default value:  2.50000                                                                
       [DMCFAlg25           ] DM:C ratio algae type 25                                              
       using default value:  2.50000                                                                
       [DMCFAlg26           ] DM:C ratio algae type 26                                              
       using default value:  2.50000                                                                
       [DMCFAlg27           ] DM:C ratio algae type 27                                              
       using default value:  2.50000                                                                
       [DMCFAlg28           ] DM:C ratio algae type 28                                              
       using default value:  2.50000                                                                
       [DMCFAlg29           ] DM:C ratio algae type 29                                              
       using default value:  2.50000                                                                
       [DMCFAlg30           ] DM:C ratio algae type 30                                              
       using default value:  2.50000                                                                
       [NCRMDI_E            ] N:C ratio algae type 01                                               
       Using constant nr 94 with value: 0.255000                                                    
       [NCRMDI_N            ] N:C ratio algae type 02                                               
       Using constant nr 95 with value: 0.125000                                                    
       [NCRMDI_P            ] N:C ratio algae type 03                                               
       Using constant nr 96 with value: 0.150000                                                    
       [NCRMFL_E            ] N:C ratio algae type 04                                               
       Using constant nr 97 with value: 0.200000                                                    
       [NCRMFL_N            ] N:C ratio algae type 05                                               
       Using constant nr 98 with value: 0.140000                                                    
       [NCRMFL_P            ] N:C ratio algae type 06                                               
       Using constant nr 99 with value: 0.200000                                                    
       [NCRDIN_E            ] N:C ratio algae type 07                                               
       Using constant nr100 with value: 0.162500                                                    
       [NCRDIN_N            ] N:C ratio algae type 08                                               
       Using constant nr101 with value: 0.125000                                                    
       [NCRDIN_P            ] N:C ratio algae type 09                                               
       Using constant nr102 with value: 0.137500                                                    
       [NCRPHA_E            ] N:C ratio algae type 10                                               
       Using constant nr103 with value: 0.187500                                                    
       [NCRPHA_N            ] N:C ratio algae type 11                                               
       Using constant nr104 with value: 0.135000                                                    
       [NCRPHA_P            ] N:C ratio algae type 12                                               
       Using constant nr105 with value: 0.187500                                                    
       [NCRAlg13            ] N:C ratio algae type 13                                               
       using default value: 0.200000                                                                
       [NCRAlg14            ] N:C ratio algae type 14                                               
       using default value: 0.200000                                                                
       [NCRAlg15            ] N:C ratio algae type 15                                               
       using default value: 0.200000                                                                
       [NCRAlg16            ] N:C ratio algae type 16                                               
       using default value: 0.200000                                                                
       [NCRAlg17            ] N:C ratio algae type 17                                               
       using default value: 0.200000                                                                
       [NCRAlg18            ] N:C ratio algae type 18                                               
       using default value: 0.200000                                                                
       [NCRAlg19            ] N:C ratio algae type 19                                               
       using default value: 0.200000                                                                
       [NCRAlg20            ] N:C ratio algae type 20                                               
       using default value: 0.200000                                                                
       [NCRAlg21            ] N:C ratio algae type 21                                               
       using default value: 0.200000                                                                
       [NCRAlg22            ] N:C ratio algae type 22                                               
       using default value: 0.200000                                                                
       [NCRAlg23            ] N:C ratio algae type 23                                               
       using default value: 0.200000                                                                
       [NCRAlg24            ] N:C ratio algae type 24                                               
       using default value: 0.200000                                                                
       [NCRAlg25            ] N:C ratio algae type 25                                               
       using default value: 0.200000                                                                
       [NCRAlg26            ] N:C ratio algae type 26                                               
       using default value: 0.200000                                                                
       [NCRAlg27            ] N:C ratio algae type 27                                               
       using default value: 0.200000                                                                
       [NCRAlg28            ] N:C ratio algae type 28                                               
       using default value: 0.200000                                                                
       [NCRAlg29            ] N:C ratio algae type 29                                               
       using default value: 0.200000                                                                
       [NCRAlg30            ] N:C ratio algae type 30                                               
       using default value: 0.200000                                                                
       [PCRMDI_E            ] P:C ratio algae type 01                                               
       Using constant nr106 with value: 0.315000E-01                                                
       [PCRMDI_N            ] P:C ratio algae type 02                                               
       Using constant nr107 with value: 0.175000E-01                                                
       [PCRMDI_P            ] P:C ratio algae type 03                                               
       Using constant nr108 with value: 0.112500E-01                                                
       [PCRMFL_E            ] P:C ratio algae type 04                                               
       Using constant nr109 with value: 0.200000E-01                                                
       [PCRMFL_N            ] P:C ratio algae type 05                                               
       Using constant nr110 with value: 0.150000E-01                                                
       [PCRMFL_P            ] P:C ratio algae type 06                                               
       Using constant nr111 with value: 0.112500E-01                                                
       [PCRDIN_E            ] P:C ratio algae type 07                                               
       Using constant nr112 with value: 0.167500E-01                                                
       [PCRDIN_N            ] P:C ratio algae type 08                                               
       Using constant nr113 with value: 0.150000E-01                                                
       [PCRDIN_P            ] P:C ratio algae type 09                                               
       Using constant nr114 with value: 0.130000E-01                                                
       [PCRPHA_E            ] P:C ratio algae type 10                                               
       Using constant nr115 with value: 0.225000E-01                                                
       [PCRPHA_N            ] P:C ratio algae type 11                                               
       Using constant nr116 with value: 0.212500E-01                                                
       [PCRPHA_P            ] P:C ratio algae type 12                                               
       Using constant nr117 with value: 0.112500E-01                                                
       [PCRAlg13            ] P:C ratio algae type 13                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg14            ] P:C ratio algae type 14                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg15            ] P:C ratio algae type 15                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg16            ] P:C ratio algae type 16                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg17            ] P:C ratio algae type 17                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg18            ] P:C ratio algae type 18                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg19            ] P:C ratio algae type 19                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg20            ] P:C ratio algae type 20                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg21            ] P:C ratio algae type 21                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg22            ] P:C ratio algae type 22                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg23            ] P:C ratio algae type 23                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg24            ] P:C ratio algae type 24                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg25            ] P:C ratio algae type 25                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg26            ] P:C ratio algae type 26                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg27            ] P:C ratio algae type 27                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg28            ] P:C ratio algae type 28                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg29            ] P:C ratio algae type 29                                               
       using default value: 0.200000E-01                                                            
       [PCRAlg30            ] P:C ratio algae type 30                                               
       using default value: 0.200000E-01                                                            
       [SCRMDI_E            ] Si:C ratio algae type 01                                              
       Using constant nr118 with value: 0.447000                                                    
       [SCRMDI_N            ] Si:C ratio algae type 02                                              
       Using constant nr119 with value: 0.283000                                                    
       [SCRMDI_P            ] Si:C ratio algae type 03                                              
       Using constant nr120 with value: 0.283000                                                    
       [SCRMFL_E            ] Si:C ratio algae type 04                                              
       Using constant nr121 with value:  0.00000                                                    
       [SCRMFL_N            ] Si:C ratio algae type 05                                              
       Using constant nr122 with value:  0.00000                                                    
       [SCRMFL_P            ] Si:C ratio algae type 06                                              
       Using constant nr123 with value:  0.00000                                                    
       [SCRDIN_E            ] Si:C ratio algae type 07                                              
       Using constant nr124 with value:  0.00000                                                    
       [SCRDIN_N            ] Si:C ratio algae type 08                                              
       Using constant nr125 with value:  0.00000                                                    
       [SCRDIN_P            ] Si:C ratio algae type 09                                              
       Using constant nr126 with value:  0.00000                                                    
       [SCRPHA_E            ] Si:C ratio algae type 10                                              
       Using constant nr127 with value:  0.00000                                                    
       [SCRPHA_N            ] Si:C ratio algae type 11                                              
       Using constant nr128 with value:  0.00000                                                    
       [SCRPHA_P            ] Si:C ratio algae type 12                                              
       Using constant nr129 with value:  0.00000                                                    
       [SCRAlg13            ] Si:C ratio algae type 13                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg14            ] Si:C ratio algae type 14                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg15            ] Si:C ratio algae type 15                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg16            ] Si:C ratio algae type 16                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg17            ] Si:C ratio algae type 17                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg18            ] Si:C ratio algae type 18                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg19            ] Si:C ratio algae type 19                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg20            ] Si:C ratio algae type 20                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg21            ] Si:C ratio algae type 21                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg22            ] Si:C ratio algae type 22                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg23            ] Si:C ratio algae type 23                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg24            ] Si:C ratio algae type 24                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg25            ] Si:C ratio algae type 25                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg26            ] Si:C ratio algae type 26                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg27            ] Si:C ratio algae type 27                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg28            ] Si:C ratio algae type 28                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg29            ] Si:C ratio algae type 29                                              
       using default value: 0.200000E-02                                                            
       [SCRAlg30            ] Si:C ratio algae type 30                                              
       using default value: 0.200000E-02                                                            
       [XNCRMDI_E           ] N:C ratio for heterotrophic algae type 01                             
       using default value: -1.00000                                                                
       [XNCRMDI_N           ] N:C ratio for heterotrophic algae type 02                             
       using default value: -1.00000                                                                
       [XNCRMDI_P           ] N:C ratio for heterotrophic algae type 03                             
       using default value: -1.00000                                                                
       [XNCRMFL_E           ] N:C ratio for heterotrophic algae type 04                             
       using default value: -1.00000                                                                
       [XNCRMFL_N           ] N:C ratio for heterotrophic algae type 05                             
       using default value: -1.00000                                                                
       [XNCRMFL_P           ] N:C ratio for heterotrophic algae type 06                             
       using default value: -1.00000                                                                
       [XNCRDIN_E           ] N:C ratio for heterotrophic algae type 07                             
       using default value: -1.00000                                                                
       [XNCRDIN_N           ] N:C ratio for heterotrophic algae type 08                             
       using default value: -1.00000                                                                
       [XNCRDIN_P           ] N:C ratio for heterotrophic algae type 09                             
       using default value: -1.00000                                                                
       [XNCRPHA_E           ] N:C ratio for heterotrophic algae type 10                             
       using default value: -1.00000                                                                
       [XNCRPHA_N           ] N:C ratio for heterotrophic algae type 11                             
       using default value: -1.00000                                                                
       [XNCRPHA_P           ] N:C ratio for heterotrophic algae type 12                             
       using default value: -1.00000                                                                
       [XNCRAlg13           ] N:C ratio for heterotrophic algae type 13                             
       using default value: -1.00000                                                                
       [XNCRAlg14           ] N:C ratio for heterotrophic algae type 14                             
       using default value: -1.00000                                                                
       [XNCRAlg15           ] N:C ratio for heterotrophic algae type 15                             
       using default value: -1.00000                                                                
       [XNCRAlg16           ] N:C ratio for heterotrophic algae type 16                             
       using default value: -1.00000                                                                
       [XNCRAlg17           ] N:C ratio for heterotrophic algae type 17                             
       using default value: -1.00000                                                                
       [XNCRAlg18           ] N:C ratio for heterotrophic algae type 18                             
       using default value: -1.00000                                                                
       [XNCRAlg19           ] N:C ratio for heterotrophic algae type 19                             
       using default value: -1.00000                                                                
       [XNCRAlg20           ] N:C ratio for heterotrophic algae type 20                             
       using default value: -1.00000                                                                
       [XNCRAlg21           ] N:C ratio for heterotrophic algae type 21                             
       using default value: -1.00000                                                                
       [XNCRAlg22           ] N:C ratio for heterotrophic algae type 22                             
       using default value: -1.00000                                                                
       [XNCRAlg23           ] N:C ratio for heterotrophic algae type 23                             
       using default value: -1.00000                                                                
       [XNCRAlg24           ] N:C ratio for heterotrophic algae type 24                             
       using default value: -1.00000                                                                
       [XNCRAlg25           ] N:C ratio for heterotrophic algae type 25                             
       using default value: -1.00000                                                                
       [XNCRAlg26           ] N:C ratio for heterotrophic algae type 26                             
       using default value: -1.00000                                                                
       [XNCRAlg27           ] N:C ratio for heterotrophic algae type 27                             
       using default value: -1.00000                                                                
       [XNCRAlg28           ] N:C ratio for heterotrophic algae type 28                             
       using default value: -1.00000                                                                
       [XNCRAlg29           ] N:C ratio for heterotrophic algae type 29                             
       using default value: -1.00000                                                                
       [XNCRAlg30           ] N:C ratio for heterotrophic algae type 30                             
       using default value: -1.00000                                                                
       [XPCRMDI_E           ] P:C ratio for heterotrophic algae type 01                             
       using default value: -1.00000                                                                
       [XPCRMDI_N           ] P:C ratio for heterotrophic algae type 02                             
       using default value: -1.00000                                                                
       [XPCRMDI_P           ] P:C ratio for heterotrophic algae type 03                             
       using default value: -1.00000                                                                
       [XPCRMFL_E           ] P:C ratio for heterotrophic algae type 04                             
       using default value: -1.00000                                                                
       [XPCRMFL_N           ] P:C ratio for heterotrophic algae type 05                             
       using default value: -1.00000                                                                
       [XPCRMFL_P           ] P:C ratio for heterotrophic algae type 06                             
       using default value: -1.00000                                                                
       [XPCRDIN_E           ] P:C ratio for heterotrophic algae type 07                             
       using default value: -1.00000                                                                
       [XPCRDIN_N           ] P:C ratio for heterotrophic algae type 08                             
       using default value: -1.00000                                                                
       [XPCRDIN_P           ] P:C ratio for heterotrophic algae type 09                             
       using default value: -1.00000                                                                
       [XPCRPHA_E           ] P:C ratio for heterotrophic algae type 10                             
       using default value: -1.00000                                                                
       [XPCRPHA_N           ] P:C ratio for heterotrophic algae type 11                             
       using default value: -1.00000                                                                
       [XPCRPHA_P           ] P:C ratio for heterotrophic algae type 12                             
       using default value: -1.00000                                                                
       [XPCRAlg13           ] P:C ratio for heterotrophic algae type 13                             
       using default value: -1.00000                                                                
       [XPCRAlg14           ] P:C ratio for heterotrophic algae type 14                             
       using default value: -1.00000                                                                
       [XPCRAlg15           ] P:C ratio for heterotrophic algae type 15                             
       using default value: -1.00000                                                                
       [XPCRAlg16           ] P:C ratio for heterotrophic algae type 16                             
       using default value: -1.00000                                                                
       [XPCRAlg17           ] P:C ratio for heterotrophic algae type 17                             
       using default value: -1.00000                                                                
       [XPCRAlg18           ] P:C ratio for heterotrophic algae type 18                             
       using default value: -1.00000                                                                
       [XPCRAlg19           ] P:C ratio for heterotrophic algae type 19                             
       using default value: -1.00000                                                                
       [XPCRAlg20           ] P:C ratio for heterotrophic algae type 20                             
       using default value: -1.00000                                                                
       [XPCRAlg21           ] P:C ratio for heterotrophic algae type 21                             
       using default value: -1.00000                                                                
       [XPCRAlg22           ] P:C ratio for heterotrophic algae type 22                             
       using default value: -1.00000                                                                
       [XPCRAlg23           ] P:C ratio for heterotrophic algae type 23                             
       using default value: -1.00000                                                                
       [XPCRAlg24           ] P:C ratio for heterotrophic algae type 24                             
       using default value: -1.00000                                                                
       [XPCRAlg25           ] P:C ratio for heterotrophic algae type 25                             
       using default value: -1.00000                                                                
       [XPCRAlg26           ] P:C ratio for heterotrophic algae type 26                             
       using default value: -1.00000                                                                
       [XPCRAlg27           ] P:C ratio for heterotrophic algae type 27                             
       using default value: -1.00000                                                                
       [XPCRAlg28           ] P:C ratio for heterotrophic algae type 28                             
       using default value: -1.00000                                                                
       [XPCRAlg29           ] P:C ratio for heterotrophic algae type 29                             
       using default value: -1.00000                                                                
       [XPCRAlg30           ] P:C ratio for heterotrophic algae type 30                             
       using default value: -1.00000                                                                
       [FNCRMDI_E           ] N:C ratio for nitrogen fixing algae type 01                           
       using default value: -1.00000                                                                
       [FNCRMDI_N           ] N:C ratio for nitrogen fixing algae type 02                           
       using default value: -1.00000                                                                
       [FNCRMDI_P           ] N:C ratio for nitrogen fixing algae type 03                           
       using default value: -1.00000                                                                
       [FNCRMFL_E           ] N:C ratio for nitrogen fixing algae type 04                           
       using default value: -1.00000                                                                
       [FNCRMFL_N           ] N:C ratio for nitrogen fixing algae type 05                           
       using default value: -1.00000                                                                
       [FNCRMFL_P           ] N:C ratio for nitrogen fixing algae type 06                           
       using default value: -1.00000                                                                
       [FNCRDIN_E           ] N:C ratio for nitrogen fixing algae type 07                           
       using default value: -1.00000                                                                
       [FNCRDIN_N           ] N:C ratio for nitrogen fixing algae type 08                           
       using default value: -1.00000                                                                
       [FNCRDIN_P           ] N:C ratio for nitrogen fixing algae type 09                           
       using default value: -1.00000                                                                
       [FNCRPHA_E           ] N:C ratio for nitrogen fixing algae type 10                           
       using default value: -1.00000                                                                
       [FNCRPHA_N           ] N:C ratio for nitrogen fixing algae type 11                           
       using default value: -1.00000                                                                
       [FNCRPHA_P           ] N:C ratio for nitrogen fixing algae type 12                           
       using default value: -1.00000                                                                
       [FNCRAlg13           ] N:C ratio for nitrogen fixing algae type 13                           
       using default value: -1.00000                                                                
       [FNCRAlg14           ] N:C ratio for nitrogen fixing algae type 14                           
       using default value: -1.00000                                                                
       [FNCRAlg15           ] N:C ratio for nitrogen fixing algae type 15                           
       using default value: -1.00000                                                                
       [FNCRAlg16           ] N:C ratio for nitrogen fixing algae type 16                           
       using default value: -1.00000                                                                
       [FNCRAlg17           ] N:C ratio for nitrogen fixing algae type 17                           
       using default value: -1.00000                                                                
       [FNCRAlg18           ] N:C ratio for nitrogen fixing algae type 18                           
       using default value: -1.00000                                                                
       [FNCRAlg19           ] N:C ratio for nitrogen fixing algae type 19                           
       using default value: -1.00000                                                                
       [FNCRAlg20           ] N:C ratio for nitrogen fixing algae type 20                           
       using default value: -1.00000                                                                
       [FNCRAlg21           ] N:C ratio for nitrogen fixing algae type 21                           
       using default value: -1.00000                                                                
       [FNCRAlg22           ] N:C ratio for nitrogen fixing algae type 22                           
       using default value: -1.00000                                                                
       [FNCRAlg23           ] N:C ratio for nitrogen fixing algae type 23                           
       using default value: -1.00000                                                                
       [FNCRAlg24           ] N:C ratio for nitrogen fixing algae type 24                           
       using default value: -1.00000                                                                
       [FNCRAlg25           ] N:C ratio for nitrogen fixing algae type 25                           
       using default value: -1.00000                                                                
       [FNCRAlg26           ] N:C ratio for nitrogen fixing algae type 26                           
       using default value: -1.00000                                                                
       [FNCRAlg27           ] N:C ratio for nitrogen fixing algae type 27                           
       using default value: -1.00000                                                                
       [FNCRAlg28           ] N:C ratio for nitrogen fixing algae type 28                           
       using default value: -1.00000                                                                
       [FNCRAlg29           ] N:C ratio for nitrogen fixing algae type 29                           
       using default value: -1.00000                                                                
       [FNCRAlg30           ] N:C ratio for nitrogen fixing algae type 30                           
       using default value: -1.00000                                                                
       [CHLACMDI_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr130 with value: 0.533000E-01                                                
       [CHLACMDI_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr131 with value: 0.150000E-01                                                
       [CHLACMDI_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr132 with value: 0.150000E-01                                                
       [CHLACMFL_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr133 with value: 0.228000E-01                                                
       [CHLACMFL_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr134 with value: 0.100000E-01                                                
       [CHLACMFL_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr135 with value: 0.100000E-01                                                
       [CHLACDIN_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr136 with value: 0.228000E-01                                                
       [CHLACDIN_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr137 with value: 0.100000E-01                                                
       [CHLACDIN_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr138 with value: 0.100000E-01                                                
       [CHLACPHA_E          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr139 with value: 0.228000E-01                                                
       [CHLACPHA_N          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr140 with value: 0.125000E-01                                                
       [CHLACPHA_P          ] Chlorophyll-a:C ratio per algae type                                  
       Using constant nr141 with value: 0.125000E-01                                                
       [ChlaCAlg13          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg14          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg15          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg16          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg17          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg18          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg19          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg20          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg21          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg22          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg23          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg24          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg25          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg26          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg27          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg28          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg29          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [ChlaCAlg30          ] Chlorophyll-a:C ratio per algae type                                  
       using default value: 0.300000E-01                                                            
       [PPMAXMDI_E          ] maximum production rate algae type 01                                 
       Using constant nr142 with value: 0.700000E-01                                                
       [PPMAXMDI_N          ] maximum production rate algae type 02                                 
       Using constant nr143 with value: 0.540000E-01                                                
       [PPMAXMDI_P          ] maximum production rate algae type 03                                 
       Using constant nr144 with value: 0.540000E-01                                                
       [PPMAXMFL_E          ] maximum production rate algae type 04                                 
       Using constant nr145 with value: 0.900000E-01                                                
       [PPMAXMFL_N          ] maximum production rate algae type 05                                 
       Using constant nr146 with value: 0.750000E-01                                                
       [PPMAXMFL_P          ] maximum production rate algae type 06                                 
       Using constant nr147 with value: 0.750000E-01                                                
       [PPMAXDIN_E          ] maximum production rate algae type 07                                 
       Using constant nr148 with value: 0.132000                                                    
       [PPMAXDIN_N          ] maximum production rate algae type 08                                 
       Using constant nr149 with value: 0.113000                                                    
       [PPMAXDIN_P          ] maximum production rate algae type 09                                 
       Using constant nr150 with value: 0.113000                                                    
       [PPMAXPHA_E          ] maximum production rate algae type 10                                 
       Using constant nr151 with value: 0.600000E-01                                                
       [PPMAXPHA_N          ] maximum production rate algae type 11                                 
       Using constant nr152 with value: 0.550000E-01                                                
       [PPMAXPHA_P          ] maximum production rate algae type 12                                 
       Using constant nr153 with value: 0.550000E-01                                                
       [PPMaxAlg13          ] maximum production rate algae type 13                                 
       using default value: 0.350000                                                                
       [PPMaxAlg14          ] maximum production rate algae type 14                                 
       using default value: 0.350000                                                                
       [PPMaxAlg15          ] maximum production rate algae type 15                                 
       using default value: 0.350000                                                                
       [PPMaxAlg16          ] maximum production rate algae type 16                                 
       using default value: 0.350000                                                                
       [PPMaxAlg17          ] maximum production rate algae type 17                                 
       using default value: 0.350000                                                                
       [PPMaxAlg18          ] maximum production rate algae type 18                                 
       using default value: 0.350000                                                                
       [PPMaxAlg19          ] maximum production rate algae type 19                                 
       using default value: 0.350000                                                                
       [PPMaxAlg20          ] maximum production rate algae type 20                                 
       using default value: 0.350000                                                                
       [PPMaxAlg21          ] maximum production rate algae type 21                                 
       using default value: 0.350000                                                                
       [PPMaxAlg22          ] maximum production rate algae type 22                                 
       using default value: 0.350000                                                                
       [PPMaxAlg23          ] maximum production rate algae type 23                                 
       using default value: 0.350000                                                                
       [PPMaxAlg24          ] maximum production rate algae type 24                                 
       using default value: 0.350000                                                                
       [PPMaxAlg25          ] maximum production rate algae type 25                                 
       using default value: 0.350000                                                                
       [PPMaxAlg26          ] maximum production rate algae type 26                                 
       using default value: 0.350000                                                                
       [PPMaxAlg27          ] maximum production rate algae type 27                                 
       using default value: 0.350000                                                                
       [PPMaxAlg28          ] maximum production rate algae type 28                                 
       using default value: 0.350000                                                                
       [PPMaxAlg29          ] maximum production rate algae type 29                                 
       using default value: 0.350000                                                                
       [PPMaxAlg30          ] maximum production rate algae type 30                                 
       using default value: 0.350000                                                                
       [TCPMXMDI_E          ] temp. coeff. for growth processes algae type 01                       
       Using constant nr154 with value: -4.50000                                                    
       [TCPMXMDI_N          ] temp. coeff. for growth processes algae type 02                       
       Using constant nr155 with value: -4.17000                                                    
       [TCPMXMDI_P          ] temp. coeff. for growth processes algae type 03                       
       Using constant nr156 with value: -4.17000                                                    
       [TCPMXMFL_E          ] temp. coeff. for growth processes algae type 04                       
       Using constant nr157 with value: -1.00000                                                    
       [TCPMXMFL_N          ] temp. coeff. for growth processes algae type 05                       
       Using constant nr158 with value: -1.00000                                                    
       [TCPMXMFL_P          ] temp. coeff. for growth processes algae type 06                       
       Using constant nr159 with value: -1.00000                                                    
       [TCPMXDIN_E          ] temp. coeff. for growth processes algae type 07                       
       Using constant nr160 with value:  5.50000                                                    
       [TCPMXDIN_N          ] temp. coeff. for growth processes algae type 08                       
       Using constant nr161 with value:  4.75000                                                    
       [TCPMXDIN_P          ] temp. coeff. for growth processes algae type 09                       
       Using constant nr162 with value:  4.75000                                                    
       [TCPMXPHA_E          ] temp. coeff. for growth processes algae type 10                       
       Using constant nr163 with value: -8.00000                                                    
       [TCPMXPHA_N          ] temp. coeff. for growth processes algae type 11                       
       Using constant nr164 with value: -8.00000                                                    
       [TCPMXPHA_P          ] temp. coeff. for growth processes algae type 12                       
       Using constant nr165 with value: -8.00000                                                    
       [TcPMxAlg13          ] temp. coeff. for growth processes algae type 13                       
       using default value:  1.06000                                                                
       [TcPMxAlg14          ] temp. coeff. for growth processes algae type 14                       
       using default value:  1.06000                                                                
       [TcPMxAlg15          ] temp. coeff. for growth processes algae type 15                       
       using default value:  1.06000                                                                
       [TcPMxAlg16          ] temp. coeff. for growth processes algae type 16                       
       using default value:  1.06000                                                                
       [TcPMxAlg17          ] temp. coeff. for growth processes algae type 17                       
       using default value:  1.06000                                                                
       [TcPMxAlg18          ] temp. coeff. for growth processes algae type 18                       
       using default value:  1.06000                                                                
       [TcPMxAlg19          ] temp. coeff. for growth processes algae type 19                       
       using default value:  1.06000                                                                
       [TcPMxAlg20          ] temp. coeff. for growth processes algae type 20                       
       using default value:  1.06000                                                                
       [TcPMxAlg21          ] temp. coeff. for growth processes algae type 21                       
       using default value:  1.06000                                                                
       [TcPMxAlg22          ] temp. coeff. for growth processes algae type 22                       
       using default value:  1.06000                                                                
       [TcPMxAlg23          ] temp. coeff. for growth processes algae type 23                       
       using default value:  1.06000                                                                
       [TcPMxAlg24          ] temp. coeff. for growth processes algae type 24                       
       using default value:  1.06000                                                                
       [TcPMxAlg25          ] temp. coeff. for growth processes algae type 25                       
       using default value:  1.06000                                                                
       [TcPMxAlg26          ] temp. coeff. for growth processes algae type 26                       
       using default value:  1.06000                                                                
       [TcPMxAlg27          ] temp. coeff. for growth processes algae type 27                       
       using default value:  1.06000                                                                
       [TcPMxAlg28          ] temp. coeff. for growth processes algae type 28                       
       using default value:  1.06000                                                                
       [TcPMxAlg29          ] temp. coeff. for growth processes algae type 29                       
       using default value:  1.06000                                                                
       [TcPMxAlg30          ] temp. coeff. for growth processes algae type 30                       
       using default value:  1.06000                                                                
       [TFPMXMDI_E          ] temp. dependency PMAX algae type01 (0=lin,<>0=exp)                    
       Using constant nr166 with value:  0.00000                                                    
       [TFPMXMDI_N          ] temp. dependency PMAX algae type02 (0=lin,<>0=exp)                    
       Using constant nr167 with value:  0.00000                                                    
       [TFPMXMDI_P          ] temp. dependency PMAX algae type03 (0=lin,<>0=exp)                    
       Using constant nr168 with value:  0.00000                                                    
       [TFPMXMFL_E          ] temp. dependency PMAX algae type04 (0=lin,<>0=exp)                    
       Using constant nr169 with value:  0.00000                                                    
       [TFPMXMFL_N          ] temp. dependency PMAX algae type05 (0=lin,<>0=exp)                    
       Using constant nr170 with value:  0.00000                                                    
       [TFPMXMFL_P          ] temp. dependency PMAX algae type06 (0=lin,<>0=exp)                    
       Using constant nr171 with value:  0.00000                                                    
       [TFPMXDIN_E          ] temp. dependency PMAX algae type07 (0=lin,<>0=exp)                    
       Using constant nr172 with value:  0.00000                                                    
       [TFPMXDIN_N          ] temp. dependency PMAX algae type08 (0=lin,<>0=exp)                    
       Using constant nr173 with value:  0.00000                                                    
       [TFPMXDIN_P          ] temp. dependency PMAX algae type09 (0=lin,<>0=exp)                    
       Using constant nr174 with value:  0.00000                                                    
       [TFPMXPHA_E          ] temp. dependency PMAX algae type10 (0=lin,<>0=exp)                    
       Using constant nr175 with value:  0.00000                                                    
       [TFPMXPHA_N          ] temp. dependency PMAX algae type11 (0=lin,<>0=exp)                    
       Using constant nr176 with value:  0.00000                                                    
       [TFPMXPHA_P          ] temp. dependency PMAX algae type12 (0=lin,<>0=exp)                    
       Using constant nr177 with value:  0.00000                                                    
       [TFPMxAlg13          ] temp. dependency PMAX algae type13 (0=lin,<>0=exp)                    
       using default value:  1.00000                                                                
       [TFPMxAlg14          ] temp. dependency PMAX algae type14 (0=lin,<>0=exp)                    
       using default value:  1.00000                                                                
       [TFPMxAlg15          ] temp. dependency PMAX algae type15 (0=lin,<>0=exp)                    
       using default value:  1.00000                                                                
       [TFPMxAlg16          ] temp. dependency PMAX algae type16 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg17          ] temp. dependency PMAX algae type17 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg18          ] temp. dependency PMAX algae type18 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg19          ] temp. dependency PMAX algae type19 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg20          ] temp. dependency PMAX algae type20 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg21          ] temp. dependency PMAX algae type21 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg22          ] temp. dependency PMAX algae type22 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg23          ] temp. dependency PMAX algae type23 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg24          ] temp. dependency PMAX algae type24 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg25          ] temp. dependency PMAX algae type25 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg26          ] temp. dependency PMAX algae type26 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg27          ] temp. dependency PMAX algae type27 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg28          ] temp. dependency PMAX algae type28 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg29          ] temp. dependency PMAX algae type29 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [TFPMxAlg30          ] temp. dependency PMAX algae type30 (0=lin,<>0=e                       
       using default value:  1.00000                                                                
       [MORT0MDI_E          ] mortality rate at 0 oC algae type 01                                  
       Using constant nr178 with value: 0.700000E-01                                                
       [MORT0MDI_N          ] mortality rate at 0 oC algae type 02                                  
       Using constant nr179 with value: 0.800000E-01                                                
       [MORT0MDI_P          ] mortality rate at 0 oC algae type 03                                  
       Using constant nr180 with value: 0.800000E-01                                                
       [MORT0MFL_E          ] mortality rate at 0 oC algae type 04                                  
       Using constant nr181 with value: 0.700000E-01                                                
       [MORT0MFL_N          ] mortality rate at 0 oC algae type 05                                  
       Using constant nr182 with value: 0.800000E-01                                                
       [MORT0MFL_P          ] mortality rate at 0 oC algae type 06                                  
       Using constant nr183 with value: 0.800000E-01                                                
       [MORT0DIN_E          ] mortality rate at 0 oC algae type 07                                  
       Using constant nr184 with value: 0.700000E-01                                                
       [MORT0DIN_N          ] mortality rate at 0 oC algae type 08                                  
       Using constant nr185 with value: 0.800000E-01                                                
       [MORT0DIN_P          ] mortality rate at 0 oC algae type 09                                  
       Using constant nr186 with value: 0.800000E-01                                                
       [MORT0PHA_E          ] mortality rate at 0 oC algae type 10                                  
       Using constant nr187 with value: 0.700000E-01                                                
       [MORT0PHA_N          ] mortality rate at 0 oC algae type 11                                  
       Using constant nr188 with value: 0.800000E-01                                                
       [MORT0PHA_P          ] mortality rate at 0 oC algae type 12                                  
       Using constant nr189 with value: 0.800000E-01                                                
       [Mort0Alg13          ] mortality rate at 0 oC algae type 13                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg14          ] mortality rate at 0 oC algae type 14                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg15          ] mortality rate at 0 oC algae type 15                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg16          ] mortality rate at 0 oC algae type 16                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg17          ] mortality rate at 0 oC algae type 17                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg18          ] mortality rate at 0 oC algae type 18                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg19          ] mortality rate at 0 oC algae type 19                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg20          ] mortality rate at 0 oC algae type 20                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg21          ] mortality rate at 0 oC algae type 21                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg22          ] mortality rate at 0 oC algae type 22                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg23          ] mortality rate at 0 oC algae type 23                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg24          ] mortality rate at 0 oC algae type 24                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg25          ] mortality rate at 0 oC algae type 25                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg26          ] mortality rate at 0 oC algae type 26                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg27          ] mortality rate at 0 oC algae type 27                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg28          ] mortality rate at 0 oC algae type 28                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg29          ] mortality rate at 0 oC algae type 29                                  
       using default value: 0.450000E-01                                                            
       [Mort0Alg30          ] mortality rate at 0 oC algae type 30                                  
       using default value: 0.450000E-01                                                            
       [TCMRTMDI_E          ] temperature coeff. for mortality algae type 01                        
       Using constant nr190 with value:  1.07200                                                    
       [TCMRTMDI_N          ] temperature coeff. for mortality algae type 02                        
       Using constant nr191 with value:  1.08500                                                    
       [TCMRTMDI_P          ] temperature coeff. for mortality algae type 03                        
       Using constant nr192 with value:  1.08500                                                    
       [TCMRTMFL_E          ] temperature coeff. for mortality algae type 04                        
       Using constant nr193 with value:  1.07200                                                    
       [TCMRTMFL_N          ] temperature coeff. for mortality algae type 05                        
       Using constant nr194 with value:  1.08500                                                    
       [TCMRTMFL_P          ] temperature coeff. for mortality algae type 06                        
       Using constant nr195 with value:  1.08500                                                    
       [TCMRTDIN_E          ] temperature coeff. for mortality algae type 07                        
       Using constant nr196 with value:  1.07200                                                    
       [TCMRTDIN_N          ] temperature coeff. for mortality algae type 08                        
       Using constant nr197 with value:  1.08500                                                    
       [TCMRTDIN_P          ] temperature coeff. for mortality algae type 09                        
       Using constant nr198 with value:  1.08500                                                    
       [TCMRTPHA_E          ] temperature coeff. for mortality algae type 10                        
       Using constant nr199 with value:  1.07200                                                    
       [TCMRTPHA_N          ] temperature coeff. for mortality algae type 11                        
       Using constant nr200 with value:  1.08500                                                    
       [TCMRTPHA_P          ] temperature coeff. for mortality algae type 12                        
       Using constant nr201 with value:  1.08500                                                    
       [TcMrtAlg13          ] temperature coeff. for mortality algae type 13                        
       using default value:  1.08500                                                                
       [TcMrtAlg14          ] temperature coeff. for mortality algae type 14                        
       using default value:  1.08500                                                                
       [TcMrtAlg15          ] temperature coeff. for mortality algae type 15                        
       using default value:  1.08500                                                                
       [TcMrtAlg16          ] temperature coeff. for mortality algae type 16                        
       using default value:  1.08500                                                                
       [TcMrtAlg17          ] temperature coeff. for mortality algae type 17                        
       using default value:  1.08500                                                                
       [TcMrtAlg18          ] temperature coeff. for mortality algae type 18                        
       using default value:  1.08500                                                                
       [TcMrtAlg19          ] temperature coeff. for mortality algae type 19                        
       using default value:  1.08500                                                                
       [TcMrtAlg20          ] temperature coeff. for mortality algae type 20                        
       using default value:  1.08500                                                                
       [TcMrtAlg21          ] temperature coeff. for mortality algae type 21                        
       using default value:  1.08500                                                                
       [TcMrtAlg22          ] temperature coeff. for mortality algae type 22                        
       using default value:  1.08500                                                                
       [TcMrtAlg23          ] temperature coeff. for mortality algae type 23                        
       using default value:  1.08500                                                                
       [TcMrtAlg24          ] temperature coeff. for mortality algae type 24                        
       using default value:  1.08500                                                                
       [TcMrtAlg25          ] temperature coeff. for mortality algae type 25                        
       using default value:  1.08500                                                                
       [TcMrtAlg26          ] temperature coeff. for mortality algae type 26                        
       using default value:  1.08500                                                                
       [TcMrtAlg27          ] temperature coeff. for mortality algae type 27                        
       using default value:  1.08500                                                                
       [TcMrtAlg28          ] temperature coeff. for mortality algae type 28                        
       using default value:  1.08500                                                                
       [TcMrtAlg29          ] temperature coeff. for mortality algae type 29                        
       using default value:  1.08500                                                                
       [TcMrtAlg30          ] temperature coeff. for mortality algae type 30                        
       using default value:  1.08500                                                                
       [MRESPMDI_E          ] maintenance respiration rate algae type 01                            
       Using constant nr202 with value: 0.600000E-01                                                
       [MRESPMDI_N          ] maintenance respiration rate algae type 02                            
       Using constant nr203 with value: 0.600000E-01                                                
       [MRESPMDI_P          ] maintenance respiration rate algae type 03                            
       Using constant nr204 with value: 0.600000E-01                                                
       [MRESPMFL_E          ] maintenance respiration rate algae type 04                            
       Using constant nr205 with value: 0.600000E-01                                                
       [MRESPMFL_N          ] maintenance respiration rate algae type 05                            
       Using constant nr206 with value: 0.600000E-01                                                
       [MRESPMFL_P          ] maintenance respiration rate algae type 06                            
       Using constant nr207 with value: 0.600000E-01                                                
       [MRESPDIN_E          ] maintenance respiration rate algae type 07                            
       Using constant nr208 with value: 0.600000E-01                                                
       [MRESPDIN_N          ] maintenance respiration rate algae type 08                            
       Using constant nr209 with value: 0.600000E-01                                                
       [MRESPDIN_P          ] maintenance respiration rate algae type 09                            
       Using constant nr210 with value: 0.600000E-01                                                
       [MRESPPHA_E          ] maintenance respiration rate algae type 10                            
       Using constant nr211 with value: 0.600000E-01                                                
       [MRESPPHA_N          ] maintenance respiration rate algae type 11                            
       Using constant nr212 with value: 0.600000E-01                                                
       [MRESPPHA_P          ] maintenance respiration rate algae type 12                            
       Using constant nr213 with value: 0.600000E-01                                                
       [MRespAlg13          ] maintenance respiration rate algae type 13                            
       using default value: 0.310000E-01                                                            
       [MRespAlg14          ] maintenance respiration rate algae type 14                            
       using default value: 0.310000E-01                                                            
       [MRespAlg15          ] maintenance respiration rate algae type 15                            
       using default value: 0.310000E-01                                                            
       [MRespAlg16          ] maintenance respiration rate algae type 16                            
       using default value: 0.310000E-01                                                            
       [MRespAlg17          ] maintenance respiration rate algae type 17                            
       using default value: 0.310000E-01                                                            
       [MRespAlg18          ] maintenance respiration rate algae type 18                            
       using default value: 0.310000E-01                                                            
       [MRespAlg19          ] maintenance respiration rate algae type 19                            
       using default value: 0.310000E-01                                                            
       [MRespAlg20          ] maintenance respiration rate algae type 20                            
       using default value: 0.310000E-01                                                            
       [MRespAlg21          ] maintenance respiration rate algae type 21                            
       using default value: 0.310000E-01                                                            
       [MRespAlg22          ] maintenance respiration rate algae type 22                            
       using default value: 0.310000E-01                                                            
       [MRespAlg23          ] maintenance respiration rate algae type 23                            
       using default value: 0.310000E-01                                                            
       [MRespAlg24          ] maintenance respiration rate algae type 24                            
       using default value: 0.310000E-01                                                            
       [MRespAlg25          ] maintenance respiration rate algae type 25                            
       using default value: 0.310000E-01                                                            
       [MRespAlg26          ] maintenance respiration rate algae type 26                            
       using default value: 0.310000E-01                                                            
       [MRespAlg27          ] maintenance respiration rate algae type 27                            
       using default value: 0.310000E-01                                                            
       [MRespAlg28          ] maintenance respiration rate algae type 28                            
       using default value: 0.310000E-01                                                            
       [MRespAlg29          ] maintenance respiration rate algae type 29                            
       using default value: 0.310000E-01                                                            
       [MRespAlg30          ] maintenance respiration rate algae type 30                            
       using default value: 0.310000E-01                                                            
       [TCRSPMDI_E          ] temperature coeff. for respiration algae type 01                      
       Using constant nr214 with value:  1.06600                                                    
       [TCRSPMDI_N          ] temperature coeff. for respiration algae type 02                      
       Using constant nr215 with value:  1.06600                                                    
       [TCRSPMDI_P          ] temperature coeff. for respiration algae type 03                      
       Using constant nr216 with value:  1.06600                                                    
       [TCRSPMFL_E          ] temperature coeff. for respiration algae type 04                      
       Using constant nr217 with value:  1.06600                                                    
       [TCRSPMFL_N          ] temperature coeff. for respiration algae type 05                      
       Using constant nr218 with value:  1.06600                                                    
       [TCRSPMFL_P          ] temperature coeff. for respiration algae type 06                      
       Using constant nr219 with value:  1.06600                                                    
       [TCRSPDIN_E          ] temperature coeff. for respiration algae type 07                      
       Using constant nr220 with value:  1.06600                                                    
       [TCRSPDIN_N          ] temperature coeff. for respiration algae type 08                      
       Using constant nr221 with value:  1.06600                                                    
       [TCRSPDIN_P          ] temperature coeff. for respiration algae type 09                      
       Using constant nr222 with value:  1.06600                                                    
       [TCRSPPHA_E          ] temperature coeff. for respiration algae type 10                      
       Using constant nr223 with value:  1.06600                                                    
       [TCRSPPHA_N          ] temperature coeff. for respiration algae type 11                      
       Using constant nr224 with value:  1.06600                                                    
       [TCRSPPHA_P          ] temperature coeff. for respiration algae type 12                      
       Using constant nr225 with value:  1.06600                                                    
       [TcRspAlg13          ] temperature coeff. for respiration algae type 13                      
       using default value:  1.07200                                                                
       [TcRspAlg14          ] temperature coeff. for respiration algae type 14                      
       using default value:  1.07200                                                                
       [TcRspAlg15          ] temperature coeff. for respiration algae type 15                      
       using default value:  1.07200                                                                
       [TcRspAlg16          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg17          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg18          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg19          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg20          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg21          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg22          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg23          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg24          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg25          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg26          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg27          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg28          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg29          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [TcRspAlg30          ] temperature coeff. for respiration algae type 1                       
       using default value:  1.07200                                                                
       [SDMIXMDI_E          ] distribution in water column algae type 01                            
       using default value:  1.00000                                                                
       [SDMIXMDI_N          ] distribution in water column algae type 02                            
       using default value:  1.00000                                                                
       [SDMIXMDI_P          ] distribution in water column algae type 03                            
       using default value:  1.00000                                                                
       [SDMIXMFL_E          ] distribution in water column algae type 04                            
       using default value:  1.00000                                                                
       [SDMIXMFL_N          ] distribution in water column algae type 05                            
       using default value:  1.00000                                                                
       [SDMIXMFL_P          ] distribution in water column algae type 06                            
       using default value:  1.00000                                                                
       [SDMIXDIN_E          ] distribution in water column algae type 07                            
       using default value:  1.00000                                                                
       [SDMIXDIN_N          ] distribution in water column algae type 08                            
       using default value:  1.00000                                                                
       [SDMIXDIN_P          ] distribution in water column algae type 09                            
       using default value:  1.00000                                                                
       [SDMIXPHA_E          ] distribution in water column algae type 10                            
       using default value:  1.00000                                                                
       [SDMIXPHA_N          ] distribution in water column algae type 11                            
       using default value:  1.00000                                                                
       [SDMIXPHA_P          ] distribution in water column algae type 12                            
       using default value:  1.00000                                                                
       [SDMixAlg13          ] distribution in water column algae type 13                            
       using default value:  1.00000                                                                
       [SDMixAlg14          ] distribution in water column algae type 14                            
       using default value:  1.00000                                                                
       [SDMixAlg15          ] distribution in water column algae type 15                            
       using default value:  1.00000                                                                
       [SDMixAlg16          ] distribution in water column algae type 16                            
       using default value:  1.00000                                                                
       [SDMixAlg17          ] distribution in water column algae type 17                            
       using default value:  1.00000                                                                
       [SDMixAlg18          ] distribution in water column algae type 18                            
       using default value:  1.00000                                                                
       [SDMixAlg19          ] distribution in water column algae type 19                            
       using default value:  1.00000                                                                
       [SDMixAlg20          ] distribution in water column algae type 20                            
       using default value:  1.00000                                                                
       [SDMixAlg21          ] distribution in water column algae type 21                            
       using default value:  1.00000                                                                
       [SDMixAlg22          ] distribution in water column algae type 22                            
       using default value:  1.00000                                                                
       [SDMixAlg23          ] distribution in water column algae type 23                            
       using default value:  1.00000                                                                
       [SDMixAlg24          ] distribution in water column algae type 24                            
       using default value:  1.00000                                                                
       [SDMixAlg25          ] distribution in water column algae type 25                            
       using default value:  1.00000                                                                
       [SDMixAlg26          ] distribution in water column algae type 26                            
       using default value:  1.00000                                                                
       [SDMixAlg27          ] distribution in water column algae type 27                            
       using default value:  1.00000                                                                
       [SDMixAlg28          ] distribution in water column algae type 28                            
       using default value:  1.00000                                                                
       [SDMixAlg29          ] distribution in water column algae type 29                            
       using default value:  1.00000                                                                
       [SDMixAlg30          ] distribution in water column algae type 30                            
       using default value:  1.00000                                                                
       [MrtExMDI_E          ] coefficient increased mortality rate algae type 01                    
       Using constant nr316 with value:  0.00000                                                    
       [MrtExMDI_N          ] coefficient increased mortality rate algae type 02                    
       Using constant nr317 with value:  0.00000                                                    
       [MrtExMDI_P          ] coefficient increased mortality rate algae type 03                    
       Using constant nr318 with value:  0.00000                                                    
       [MrtExMFL_E          ] coefficient increased mortality rate algae type 04                    
       Using constant nr319 with value:  0.00000                                                    
       [MrtExMFL_N          ] coefficient increased mortality rate algae type 05                    
       Using constant nr320 with value:  0.00000                                                    
       [MrtExMFL_P          ] coefficient increased mortality rate algae type 06                    
       Using constant nr321 with value:  0.00000                                                    
       [MrtExDIN_E          ] coefficient increased mortality rate algae type 07                    
       Using constant nr322 with value:  0.00000                                                    
       [MrtExDIN_N          ] coefficient increased mortality rate algae type 08                    
       Using constant nr323 with value:  0.00000                                                    
       [MrtExDIN_P          ] coefficient increased mortality rate algae type 09                    
       Using constant nr324 with value:  0.00000                                                    
       [MrtExPHA_E          ] coefficient increased mortality rate algae type 10                    
       Using constant nr325 with value:  0.00000                                                    
       [MrtExPHA_N          ] coefficient increased mortality rate algae type 11                    
       Using constant nr326 with value:  0.00000                                                    
       [MrtExPHA_P          ] coefficient increased mortality rate algae type 12                    
       Using constant nr327 with value:  0.00000                                                    
       [MrtExAlg13          ] coefficient increased mortality rate algae type 13                    
       using default value:  0.00000                                                                
       [MrtExAlg14          ] coefficient increased mortality rate algae type 14                    
       using default value:  0.00000                                                                
       [MrtExAlg15          ] coefficient increased mortality rate algae type 15                    
       using default value:  0.00000                                                                
       [MrtExAlg16          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg17          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg18          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg19          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg20          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg21          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg22          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg23          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg24          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg25          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg26          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg27          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg28          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg29          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [MrtExAlg30          ] coefficient increased mortality rate algae                            
       using default value:  0.00000                                                                
       [Mort2MDI_E          ] salinity dependent mortality rate algae type 01                       
       using default value:  0.00000                                                                
       [Mort2MDI_N          ] salinity dependent mortality rate algae type 02                       
       using default value:  0.00000                                                                
       [Mort2MDI_P          ] salinity dependent mortality rate algae type 03                       
       using default value:  0.00000                                                                
       [Mort2MFL_E          ] salinity dependent mortality rate algae type 04                       
       using default value:  0.00000                                                                
       [Mort2MFL_N          ] salinity dependent mortality rate algae type 05                       
       using default value:  0.00000                                                                
       [Mort2MFL_P          ] salinity dependent mortality rate algae type 06                       
       using default value:  0.00000                                                                
       [Mort2DIN_E          ] salinity dependent mortality rate algae type 07                       
       using default value:  0.00000                                                                
       [Mort2DIN_N          ] salinity dependent mortality rate algae type 08                       
       using default value:  0.00000                                                                
       [Mort2DIN_P          ] salinity dependent mortality rate algae type 09                       
       using default value:  0.00000                                                                
       [Mort2PHA_E          ] salinity dependent mortality rate algae type 10                       
       using default value:  0.00000                                                                
       [Mort2PHA_N          ] salinity dependent mortality rate algae type 11                       
       using default value:  0.00000                                                                
       [Mort2PHA_P          ] salinity dependent mortality rate algae type 12                       
       using default value:  0.00000                                                                
       [Mort2Alg13          ] salinity dependent mortality rate algae type 13                       
       using default value:  0.00000                                                                
       [Mort2Alg14          ] salinity dependent mortality rate algae type 14                       
       using default value:  0.00000                                                                
       [Mort2Alg15          ] salinity dependent mortality rate algae type 15                       
       using default value:  0.00000                                                                
       [Mort2Alg16          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg17          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg18          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg19          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg20          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg21          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg22          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg23          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg24          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg25          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg26          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg27          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg28          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg29          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [Mort2Alg30          ] salinity dependent mortality rate algae type                          
       using default value:  0.00000                                                                
       [MrtB1MDI_E          ] coefficient b1 in salinity stress funct. algae 01                     
       using default value: 0.200000E-02                                                            
       [MrtB1MDI_N          ] coefficient b1 in salinity stress funct. algae 02                     
       using default value: 0.200000E-02                                                            
       [MrtB1MDI_P          ] coefficient b1 in salinity stress funct. algae 03                     
       using default value: 0.200000E-02                                                            
       [MrtB1MFL_E          ] coefficient b1 in salinity stress funct. algae 04                     
       using default value: 0.200000E-02                                                            
       [MrtB1MFL_N          ] coefficient b1 in salinity stress funct. algae 05                     
       using default value: 0.200000E-02                                                            
       [MrtB1MFL_P          ] coefficient b1 in salinity stress funct. algae 06                     
       using default value: 0.200000E-02                                                            
       [MrtB1DIN_E          ] coefficient b1 in salinity stress funct. algae 07                     
       using default value: 0.200000E-02                                                            
       [MrtB1DIN_N          ] coefficient b1 in salinity stress funct. algae 08                     
       using default value: 0.200000E-02                                                            
       [MrtB1DIN_P          ] coefficient b1 in salinity stress funct. algae 09                     
       using default value: 0.200000E-02                                                            
       [MrtB1PHA_E          ] coefficient b1 in salinity stress funct. algae 10                     
       using default value: 0.200000E-02                                                            
       [MrtB1PHA_N          ] coefficient b1 in salinity stress funct. algae 11                     
       using default value: 0.200000E-02                                                            
       [MrtB1PHA_P          ] coefficient b1 in salinity stress funct. algae 12                     
       using default value: 0.200000E-02                                                            
       [MrtB1Alg13          ] coefficient b1 in salinity stress funct. algae 13                     
       using default value: 0.200000E-02                                                            
       [MrtB1Alg14          ] coefficient b1 in salinity stress funct. algae 14                     
       using default value: 0.200000E-02                                                            
       [MrtB1Alg15          ] coefficient b1 in salinity stress funct. algae 15                     
       using default value: 0.200000E-02                                                            
       [MrtB1Alg16          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg17          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg18          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg19          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg20          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg21          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg22          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg23          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg24          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg25          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg26          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg27          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg28          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg29          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB1Alg30          ] coefficient b1 in salinity stress funct. a                            
       using default value: 0.200000E-02                                                            
       [MrtB2MDI_E          ] coefficient b2 in salinity stress funct. algae 01                     
       using default value:  8000.00                                                                
       [MrtB2MDI_N          ] coefficient b2 in salinity stress funct. algae 02                     
       using default value:  8000.00                                                                
       [MrtB2MDI_P          ] coefficient b2 in salinity stress funct. algae 03                     
       using default value:  8000.00                                                                
       [MrtB2MFL_E          ] coefficient b2 in salinity stress funct. algae 04                     
       using default value:  8000.00                                                                
       [MrtB2MFL_N          ] coefficient b2 in salinity stress funct. algae 05                     
       using default value:  8000.00                                                                
       [MrtB2MFL_P          ] coefficient b2 in salinity stress funct. algae 06                     
       using default value:  8000.00                                                                
       [MrtB2DIN_E          ] coefficient b2 in salinity stress funct. algae 07                     
       using default value:  8000.00                                                                
       [MrtB2DIN_N          ] coefficient b2 in salinity stress funct. algae 08                     
       using default value:  8000.00                                                                
       [MrtB2DIN_P          ] coefficient b2 in salinity stress funct. algae 09                     
       using default value:  8000.00                                                                
       [MrtB2PHA_E          ] coefficient b2 in salinity stress funct. algae 10                     
       using default value:  8000.00                                                                
       [MrtB2PHA_N          ] coefficient b2 in salinity stress funct. algae 11                     
       using default value:  8000.00                                                                
       [MrtB2PHA_P          ] coefficient b2 in salinity stress funct. algae 12                     
       using default value:  8000.00                                                                
       [MrtB2Alg13          ] coefficient b2 in salinity stress funct. algae 13                     
       using default value:  8000.00                                                                
       [MrtB2Alg14          ] coefficient b2 in salinity stress funct. algae 14                     
       using default value:  8000.00                                                                
       [MrtB2Alg15          ] coefficient b2 in salinity stress funct. algae 15                     
       using default value:  8000.00                                                                
       [MrtB2Alg16          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg17          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg18          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg19          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg20          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg21          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg22          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg23          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg24          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg25          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg26          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg27          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg28          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg29          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [MrtB2Alg30          ] coefficient b2 in salinity stress funct. a                            
       using default value:  8000.00                                                                
       [FixMDI_E            ] algae type 01 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_N            ] algae type 02 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_P            ] algae type 03 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_E            ] algae type 04 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_N            ] algae type 05 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_P            ] algae type 06 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_E            ] algae type 07 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_N            ] algae type 08 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_P            ] algae type 09 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_E            ] algae type 10 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_N            ] algae type 11 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_P            ] algae type 12 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg13            ] algae type 13 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg14            ] algae type 14 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg15            ] algae type 15 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg16            ] algae type 16 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg17            ] algae type 17 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg18            ] algae type 18 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg19            ] algae type 19 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg20            ] algae type 20 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg21            ] algae type 21 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg22            ] algae type 22 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg23            ] algae type 23 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg24            ] algae type 24 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg25            ] algae type 25 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg26            ] algae type 26 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg27            ] algae type 27 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg28            ] algae type 28 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg29            ] algae type 29 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg30            ] algae type 30 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [EffiALG01           ] average light efficiency algae 01 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG02           ] average light efficiency algae 02 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG03           ] average light efficiency algae 03 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG04           ] average light efficiency algae 04 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG05           ] average light efficiency algae 05 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG06           ] average light efficiency algae 06 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG07           ] average light efficiency algae 07 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG08           ] average light efficiency algae 08 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG09           ] average light efficiency algae 09 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG10           ] average light efficiency algae 10 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG11           ] average light efficiency algae 11 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG12           ] average light efficiency algae 12 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG13           ] average light efficiency algae 13 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG14           ] average light efficiency algae 14 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG15           ] average light efficiency algae 15 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG16           ] average light efficiency algae 16 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG17           ] average light efficiency algae 17 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG18           ] average light efficiency algae 18 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG19           ] average light efficiency algae 19 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG20           ] average light efficiency algae 20 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG21           ] average light efficiency algae 21 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG22           ] average light efficiency algae 22 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG23           ] average light efficiency algae 23 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG24           ] average light efficiency algae 24 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG25           ] average light efficiency algae 25 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG26           ] average light efficiency algae 26 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG27           ] average light efficiency algae 27 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG28           ] average light efficiency algae 28 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG29           ] average light efficiency algae 29 (BLOOM step)                        
       using default value: -1.00000                                                                
       [EffiALG30           ] average light efficiency algae 30 (BLOOM step)                        
       using default value: -1.00000                                                                
                                                                                                    
 Input for [vtrans              ] Vertical mixing distribution over a period                        
       [IDT                 ] DELWAQ timestep                                                       
       Using DELWAQ timestep                                                                        
       [DELT                ] timestep for processes                                                
       Using DELWAQ timestep in days                                                                
       [PeriodVTRA          ] period for calculating vertical distribution                          
       Using constant nr275 with value:  24.0000                                                    
       [Volume              ] volume of computational cell                                          
       Using DELWAQ volume                                                                          
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [VertDisp            ] vertical dispersion                                                   
       Using output from proces [VertDisp            ]                                              
       [XArea               ] exchange area                                                         
       Using DELWAQ exchange area                                                                   
       [XLenFrom            ] from-length                                                           
       Using DELWAQ from- length                                                                    
       [XLenTo              ] to-length                                                             
       Using DELWAQ to- length                                                                      
       [Disp3               ] uniform dispersion in third direction                                 
       using default value:  0.00000                                                                
                                                                                                    
 Input for [DepAve              ] Average depth for Bloom step                                      
       [SWDepAve            ] switch for module DepAve (0=off, 1=on)                                
       Using constant nr272 with value:  1.00000                                                    
       [TimMultBl           ] ratio bloom/delwaq time step                                          
       Using constant nr 45 with value:  1.00000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [BloomDepth          ] average depth over Bloom time step                                    
       Using output from proces [DepAve              ]                                              
                                                                                                    
 Input for [Daylength           ] Daylength calculation                                             
       [ITIME               ] DELWAQ time                                                           
       Using DELWAQ time                                                                            
       [Latitude            ] latitude of study area                                                
       Using constant nr273 with value:  52.1000                                                    
       [RefDay              ] daynumber of reference day simulation                                 
       Using constant nr274 with value:  0.00000                                                    
       [AuxSys              ] ratio between days and system clock                                   
       using default value:  86400.0                                                                
                                                                                                    
 Input for [CalcRad             ] Radiation at segment upper and lower boundaries                   
       [ExtVl               ] total extinction coefficient visible light                            
       Using constant nr304 with value: 0.180000                                                    
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [RadSurf             ] irradiation at the water surface                                      
       Using function nr  2                                                                         
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
       Using constant nr267 with value: 0.250000E-01                                                
       [ExtVlIM2            ] VL specific extinction coefficient IM2                                
       Using constant nr355 with value: 0.250000E-01                                                
       [ExtVlIM3            ] VL specific extinction coefficient IM3                                
       using default value: 0.100000E-01                                                            
       [ExtVlPOC1           ] VL specific extinction coefficient POC1                               
       Using constant nr268 with value: 0.100000                                                    
       [ExtVlBak            ] background extinction visible light                                   
       Using constant nr269 with value: 0.800000E-01                                                
       [ExtVlPhyt           ] VL extinction by phytoplankton                                        
       Using output from proces [EXTINABVL           ]                                              
       [ExtVlMacro          ] VL extinction by macrophytes                                          
       using default value:  0.00000                                                                
       [IM1                 ] inorganic matter (IM1)                                                
       Using constant nr240 with value:  0.00000                                                    
       [IM2                 ] inorganic matter (IM2)                                                
       using default value:  0.00000                                                                
       [IM3                 ] inorganic matter (IM3)                                                
       using default value:  0.00000                                                                
       [POC1                ] POC1 (fast decomposing fraction)                                      
       Using substance nr   9                                                                       
       [POC2                ] POC2 (medium decomposing fraction)                                    
       using default value:  0.00000                                                                
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
       Using constant nr270 with value: 0.970000                                                    
       [Salinity            ] Salinity                                                              
       Using substance nr   3                                                                       
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
                                                                                                    
 Input for [EXTINABVL           ] Extinction of light by algae (Bloom)                              
       [NAlgBloom           ] number of algae types in BLOOM                                        
       using default value:  30.0000                                                                
       [SW_fixin_y          ] switch possible scaling of input, DO NOT EDIT                         
       using default value:  1.00000                                                                
       [Depth               ] depth of segment                                                      
       Using output from proces [DynDepth            ]                                              
       [EXTVLMDI_E          ] VL specific extinction coefficient algae type 01                      
       Using constant nr 70 with value: 0.240000                                                    
       [EXTVLMDI_N          ] VL specific extinction coefficient algae type 02                      
       Using constant nr 71 with value: 0.210000                                                    
       [EXTVLMDI_P          ] VL specific extinction coefficient algae type 03                      
       Using constant nr 72 with value: 0.210000                                                    
       [EXTVLMFL_E          ] VL specific extinction coefficient algae type 04                      
       Using constant nr 73 with value: 0.250000                                                    
       [EXTVLMFL_N          ] VL specific extinction coefficient algae type 05                      
       Using constant nr 74 with value: 0.225000                                                    
       [EXTVLMFL_P          ] VL specific extinction coefficient algae type 06                      
       Using constant nr 75 with value: 0.225000                                                    
       [EXTVLDIN_E          ] VL specific extinction coefficient algae type 07                      
       Using constant nr 76 with value: 0.200000                                                    
       [EXTVLDIN_N          ] VL specific extinction coefficient algae type 08                      
       Using constant nr 77 with value: 0.175000                                                    
       [EXTVLDIN_P          ] VL specific extinction coefficient algae type 09                      
       Using constant nr 78 with value: 0.175000                                                    
       [EXTVLPHA_E          ] VL specific extinction coefficient algae type 10                      
       Using constant nr 79 with value: 0.450000                                                    
       [EXTVLPHA_N          ] VL specific extinction coefficient algae type 11                      
       Using constant nr 80 with value: 0.412500                                                    
       [EXTVLPHA_P          ] VL specific extinction coefficient algae type 12                      
       Using constant nr 81 with value: 0.412500                                                    
       [ExtVlAlg13          ] VL specific extinction coefficient algae type 13                      
       using default value: 0.200000                                                                
       [ExtVlAlg14          ] VL specific extinction coefficient algae type 14                      
       using default value: 0.200000                                                                
       [ExtVlAlg15          ] VL specific extinction coefficient algae type 15                      
       using default value: 0.200000                                                                
       [ExtVlAlg16          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg17          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg18          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg19          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg20          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg21          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg22          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg23          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg24          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg25          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg26          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg27          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg28          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg29          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [ExtVlAlg30          ] VL specific extinction coefficient algae ty                           
       using default value: 0.200000                                                                
       [MDIATOMS_E          ] concentration of algae type 1                                         
       Using substance nr  15                                                                       
       [MDIATOMS_N          ] concentration of algae type 2                                         
       Using substance nr  16                                                                       
       [MDIATOMS_P          ] concentration of algae type 3                                         
       Using substance nr  17                                                                       
       [MFLAGELA_E          ] concentration of algae type 4                                         
       Using substance nr  18                                                                       
       [MFLAGELA_N          ] concentration of algae type 5                                         
       Using substance nr  19                                                                       
       [MFLAGELA_P          ] concentration of algae type 6                                         
       Using substance nr  20                                                                       
       [DINOFLAG_E          ] concentration of algae type 7                                         
       Using substance nr  12                                                                       
       [DINOFLAG_N          ] concentration of algae type 8                                         
       Using substance nr  13                                                                       
       [DINOFLAG_P          ] concentration of algae type 9                                         
       Using substance nr  14                                                                       
       [PHAEOCYS_E          ] concentration of algae type 10                                        
       Using substance nr  21                                                                       
       [PHAEOCYS_N          ] concentration of algae type 11                                        
       Using substance nr  22                                                                       
       [PHAEOCYS_P          ] concentration of algae type 12                                        
       Using substance nr  23                                                                       
       [BLOOMALG13          ] concentration of algae type 13                                        
       using default value: -101.000                                                                
       [BLOOMALG14          ] concentration of algae type 14                                        
       using default value: -101.000                                                                
       [BLOOMALG15          ] concentration of algae type 15                                        
       using default value: -101.000                                                                
       [BLOOMALG16          ] concentration of algae type 16                                        
       using default value: -101.000                                                                
       [BLOOMALG17          ] concentration of algae type 17                                        
       using default value: -101.000                                                                
       [BLOOMALG18          ] concentration of algae type 18                                        
       using default value: -101.000                                                                
       [BLOOMALG19          ] concentration of algae type 19                                        
       using default value: -101.000                                                                
       [BLOOMALG20          ] concentration of algae type 20                                        
       using default value: -101.000                                                                
       [BLOOMALG21          ] concentration of algae type 21                                        
       using default value: -101.000                                                                
       [BLOOMALG22          ] concentration of algae type 22                                        
       using default value: -101.000                                                                
       [BLOOMALG23          ] concentration of algae type 23                                        
       using default value: -101.000                                                                
       [BLOOMALG24          ] concentration of algae type 24                                        
       using default value: -101.000                                                                
       [BLOOMALG25          ] concentration of algae type 25                                        
       using default value: -101.000                                                                
       [BLOOMALG26          ] concentration of algae type 26                                        
       using default value: -101.000                                                                
       [BLOOMALG27          ] concentration of algae type 27                                        
       using default value: -101.000                                                                
       [BLOOMALG28          ] concentration of algae type 28                                        
       using default value: -101.000                                                                
       [BLOOMALG29          ] concentration of algae type 29                                        
       using default value: -101.000                                                                
       [BLOOMALG30          ] concentration of algae type 30                                        
       using default value: -101.000                                                                
       [FixMDI_E            ] algae type 01 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_N            ] algae type 02 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMDI_P            ] algae type 03 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_E            ] algae type 04 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_N            ] algae type 05 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixMFL_P            ] algae type 06 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_E            ] algae type 07 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_N            ] algae type 08 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixDIN_P            ] algae type 09 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_E            ] algae type 10 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_N            ] algae type 11 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixPHA_P            ] algae type 12 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg13            ] algae type 13 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg14            ] algae type 14 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg15            ] algae type 15 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg16            ] algae type 16 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg17            ] algae type 17 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg18            ] algae type 18 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg19            ] algae type 19 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg20            ] algae type 20 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg21            ] algae type 21 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg22            ] algae type 22 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg23            ] algae type 23 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg24            ] algae type 24 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg25            ] algae type 25 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg26            ] algae type 26 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg27            ] algae type 27 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg28            ] algae type 28 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg29            ] algae type 29 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [FixAlg30            ] algae type 30 fixed (0=not app,>0=sus,<0=fixed)                       
       using default value:  0.00000                                                                
       [SDMIXMDI_E          ] distribution in water column algae type 01                            
       using default value:  1.00000                                                                
       [SDMIXMDI_N          ] distribution in water column algae type 02                            
       using default value:  1.00000                                                                
       [SDMIXMDI_P          ] distribution in water column algae type 03                            
       using default value:  1.00000                                                                
       [SDMIXMFL_E          ] distribution in water column algae type 04                            
       using default value:  1.00000                                                                
       [SDMIXMFL_N          ] distribution in water column algae type 05                            
       using default value:  1.00000                                                                
       [SDMIXMFL_P          ] distribution in water column algae type 06                            
       using default value:  1.00000                                                                
       [SDMIXDIN_E          ] distribution in water column algae type 07                            
       using default value:  1.00000                                                                
       [SDMIXDIN_N          ] distribution in water column algae type 08                            
       using default value:  1.00000                                                                
       [SDMIXDIN_P          ] distribution in water column algae type 09                            
       using default value:  1.00000                                                                
       [SDMIXPHA_E          ] distribution in water column algae type 10                            
       using default value:  1.00000                                                                
       [SDMIXPHA_N          ] distribution in water column algae type 11                            
       using default value:  1.00000                                                                
       [SDMIXPHA_P          ] distribution in water column algae type 12                            
       using default value:  1.00000                                                                
       [SDMixAlg13          ] distribution in water column algae type 13                            
       using default value:  1.00000                                                                
       [SDMixAlg14          ] distribution in water column algae type 14                            
       using default value:  1.00000                                                                
       [SDMixAlg15          ] distribution in water column algae type 15                            
       using default value:  1.00000                                                                
       [SDMixAlg16          ] distribution in water column algae type 16                            
       using default value:  1.00000                                                                
       [SDMixAlg17          ] distribution in water column algae type 17                            
       using default value:  1.00000                                                                
       [SDMixAlg18          ] distribution in water column algae type 18                            
       using default value:  1.00000                                                                
       [SDMixAlg19          ] distribution in water column algae type 19                            
       using default value:  1.00000                                                                
       [SDMixAlg20          ] distribution in water column algae type 20                            
       using default value:  1.00000                                                                
       [SDMixAlg21          ] distribution in water column algae type 21                            
       using default value:  1.00000                                                                
       [SDMixAlg22          ] distribution in water column algae type 22                            
       using default value:  1.00000                                                                
       [SDMixAlg23          ] distribution in water column algae type 23                            
       using default value:  1.00000                                                                
       [SDMixAlg24          ] distribution in water column algae type 24                            
       using default value:  1.00000                                                                
       [SDMixAlg25          ] distribution in water column algae type 25                            
       using default value:  1.00000                                                                
       [SDMixAlg26          ] distribution in water column algae type 26                            
       using default value:  1.00000                                                                
       [SDMixAlg27          ] distribution in water column algae type 27                            
       using default value:  1.00000                                                                
       [SDMixAlg28          ] distribution in water column algae type 28                            
       using default value:  1.00000                                                                
       [SDMixAlg29          ] distribution in water column algae type 29                            
       using default value:  1.00000                                                                
       [SDMixAlg30          ] distribution in water column algae type 30                            
       using default value:  1.00000                                                                
                                                                                                    
 Input for [VertDisp            ] Vertical dispersion (segment -> exchange)                         
       [VertDisper          ] vertical dispersion                                                   
       Using segment function nr  1                                                                 
       [ScaleVdisp          ] scaling factor for vertical diffusion                                 
       Using constant nr391 with value:  1.00000                                                    
                                                                                                    
 Input for [Veloc               ] Horizontal flow velocity                                          
       [WSNoseg1            ] workspace array no. 1                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg2            ] workspace array no. 2                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg3            ] workspace array no. 3                                                 
       Using output from proces [Veloc               ]                                              
       [WSNoseg4            ] workspace array no. 4                                                 
       Using output from proces [Veloc               ]                                              
       [MaxVeloc            ] maximum horizontal flow velocity                                      
       Using constant nr276 with value:  0.00000                                                    
       [Orient_1            ] orientation of main positive flow direction                           
       using default value: -1.00000                                                                
       [Orient_2            ] orientation of secondary positive flow direct                         
       using default value: -1.00000                                                                
       [SWCalcVelo          ] switch (1=lin avg, 2=Flow avg, 3=Area avg)                            
       using default value:  1.00000                                                                
       [SWAvgVelo           ] switch (1=Pythagoras, 2=Min, 3=Max)                                   
       using default value:  1.00000                                                                
       [XArea               ] exchange area                                                         
       Using DELWAQ exchange area                                                                   
       [Flow                ] flow rate                                                             
       Using DELWAQ flow                                                                            
                                                                                                    
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
                                                                                
 info: constant [VertDisper] is not used by the proces system                   
 info: constant [VWind     ] is not used by the proces system                   
 info: constant [RadSurf   ] is not used by the proces system                   
 info: constant [CLOSE_ERR ] is not used by the proces system                   
 info: constant [NOTHREADS ] is not used by the proces system                   
 info: constant [DRY_THRESH] is not used by the proces system                   
 info: constant [maxiter   ] is not used by the proces system                   
 info: constant [tolerance ] is not used by the proces system                   
 info: constant [iteration ] is not used by the proces system                   
 info: constant [SWRearCO2 ] is not used by the proces system                   
 info: constant [MrtExULS_E] is not used by the proces system                   
 info: constant [MrtExULS_N] is not used by the proces system                   
 info: constant [MrtExULS_P] is not used by the proces system                   
 info: constant [MrtExULF_E] is not used by the proces system                   
 info: constant [MrtExULF_N] is not used by the proces system                   
 info: constant [MrtExULF_P] is not used by the proces system                   
 info: constant [RcDetC    ] is not used by the proces system                   
 info: constant [TcDetC    ] is not used by the proces system                   
 info: constant [TauCSDetC ] is not used by the proces system                   
 info: constant [SecchiExt1] is not used by the proces system                   
 info: constant [RcDetN    ] is not used by the proces system                   
 info: constant [TcDetN    ] is not used by the proces system                   
 info: constant [RcDetP    ] is not used by the proces system                   
 info: constant [TcDetP    ] is not used by the proces system                   
 info: constant [TcBMDetPS1] is not used by the proces system                   
 info: constant [RcDetSi   ] is not used by the proces system                   
 info: constant [TcDetSi   ] is not used by the proces system                   
 info: constant [fSODaut   ] is not used by the proces system                   
 info: constant [RcSOD     ] is not used by the proces system                   
 info: constant [TcSOD     ] is not used by the proces system                   
 info: constant [SWTau     ] is not used by the proces system                   
 info: constant [OON       ] is not used by the proces system                   
 info: constant [ExtVlDetC ] is not used by the proces system                   
 info: constant [FETCH     ] is not used by the proces system                   
 info: constant [InitDepth ] is not used by the proces system                   
 info: constant [SwChezy   ] is not used by the proces system                   
 info: constant [CRTemp    ] is not used by the proces system                   
 info: constant [NCMinLimH ] is not used by the proces system                   
 info: constant [NCMinLimL ] is not used by the proces system                   
 info: constant [nDetC     ] is not used by the proces system                   
 info: constant [PCMinLimH ] is not used by the proces system                   
 info: constant [PCMinLimL ] is not used by the proces system                   
 info: constant [RcDetCHigh] is not used by the proces system                   
 info: constant [RcDetNHigh] is not used by the proces system                   
 info: constant [RcDetPHigh] is not used by the proces system                   
 info: constant [RcDetSHigh] is not used by the proces system                   
 info: constant [SiCMinLimH] is not used by the proces system                   
 info: constant [SiCMinLimL] is not used by the proces system                   
 info: constant [tau       ] is not used by the proces system                   
 info: constant [V0SedDetC ] is not used by the proces system                   
 info: constant [V0SedULS_E] is not used by the proces system                   
 info: constant [V0SedULS_N] is not used by the proces system                   
 info: constant [V0SedULS_P] is not used by the proces system                   
 info: constant [V0SedULF_E] is not used by the proces system                   
 info: constant [V0SedULF_N] is not used by the proces system                   
 info: constant [V0SedULF_P] is not used by the proces system                   
 info: constant [ChlaCULF_E] is not used by the proces system                   
 info: constant [ChlaCULF_N] is not used by the proces system                   
 info: constant [ChlaCULF_P] is not used by the proces system                   
 info: constant [DMCFULF_E ] is not used by the proces system                   
 info: constant [DMCFULF_N ] is not used by the proces system                   
 info: constant [DMCFULF_P ] is not used by the proces system                   
 info: constant [ExtVlULF_E] is not used by the proces system                   
 info: constant [ExtVlULF_N] is not used by the proces system                   
 info: constant [ExtVlULF_P] is not used by the proces system                   
 info: constant [FrAutULF_E] is not used by the proces system                   
 info: constant [FrAutULF_N] is not used by the proces system                   
 info: constant [FrAutULF_P] is not used by the proces system                   
 info: constant [FrDetULF_E] is not used by the proces system                   
 info: constant [FrDetULF_N] is not used by the proces system                   
 info: constant [FrDetULF_P] is not used by the proces system                   
 info: constant [Mort0ULF_E] is not used by the proces system                   
 info: constant [Mort0ULF_N] is not used by the proces system                   
 info: constant [Mort0ULF_P] is not used by the proces system                   
 info: constant [MRespULF_E] is not used by the proces system                   
 info: constant [MRespULF_N] is not used by the proces system                   
 info: constant [MRespULF_P] is not used by the proces system                   
 info: constant [NCRULF_E  ] is not used by the proces system                   
 info: constant [NCRULF_N  ] is not used by the proces system                   
 info: constant [NCRULF_P  ] is not used by the proces system                   
 info: constant [PCRULF_E  ] is not used by the proces system                   
 info: constant [PCRULF_N  ] is not used by the proces system                   
 info: constant [PCRULF_P  ] is not used by the proces system                   
 info: constant [PPMaxULF_E] is not used by the proces system                   
 info: constant [PPMaxULF_N] is not used by the proces system                   
 info: constant [PPMaxULF_P] is not used by the proces system                   
 info: constant [SCRULF_E  ] is not used by the proces system                   
 info: constant [SCRULF_N  ] is not used by the proces system                   
 info: constant [SCRULF_P  ] is not used by the proces system                   
 info: constant [TcMrtULF_E] is not used by the proces system                   
 info: constant [TcMrtULF_N] is not used by the proces system                   
 info: constant [TcMrtULF_P] is not used by the proces system                   
 info: constant [TcPMxULF_E] is not used by the proces system                   
 info: constant [TcPMxULF_N] is not used by the proces system                   
 info: constant [TcPMxULF_P] is not used by the proces system                   
 info: constant [TcRspULF_E] is not used by the proces system                   
 info: constant [TcRspULF_N] is not used by the proces system                   
 info: constant [TcRspULF_P] is not used by the proces system                   
 info: constant [TFPMxULF_E] is not used by the proces system                   
 info: constant [TFPMxULF_N] is not used by the proces system                   
 info: constant [TFPMxULF_P] is not used by the proces system                   
 info: constant [SDMIXULF_E] is not used by the proces system                   
 info: constant [SDMIXULF_N] is not used by the proces system                   
 info: constant [SDMIXULF_P] is not used by the proces system                   
 info: constant [FixULF_E  ] is not used by the proces system                   
 info: constant [FixULF_N  ] is not used by the proces system                   
 info: constant [FixULF_P  ] is not used by the proces system                   
 info: constant [ChlaCULS_E] is not used by the proces system                   
 info: constant [ChlaCULS_N] is not used by the proces system                   
 info: constant [ChlaCULS_P] is not used by the proces system                   
 info: constant [DMCFULS_E ] is not used by the proces system                   
 info: constant [DMCFULS_N ] is not used by the proces system                   
 info: constant [DMCFULS_P ] is not used by the proces system                   
 info: constant [ExtVlULS_E] is not used by the proces system                   
 info: constant [ExtVlULS_N] is not used by the proces system                   
 info: constant [ExtVlULS_P] is not used by the proces system                   
 info: constant [FrAutULS_E] is not used by the proces system                   
 info: constant [FrAutULS_N] is not used by the proces system                   
 info: constant [FrAutULS_P] is not used by the proces system                   
 info: constant [FrDetULS_E] is not used by the proces system                   
 info: constant [FrDetULS_N] is not used by the proces system                   
 info: constant [FrDetULS_P] is not used by the proces system                   
 info: constant [Mort0ULS_E] is not used by the proces system                   
 info: constant [Mort0ULS_N] is not used by the proces system                   
 info: constant [Mort0ULS_P] is not used by the proces system                   
 info: constant [MRespULS_E] is not used by the proces system                   
 info: constant [MRespULS_N] is not used by the proces system                   
 info: constant [MRespULS_P] is not used by the proces system                   
 info: constant [NCRULS_E  ] is not used by the proces system                   
 info: constant [NCRULS_N  ] is not used by the proces system                   
 info: constant [NCRULS_P  ] is not used by the proces system                   
 info: constant [PCRULS_E  ] is not used by the proces system                   
 info: constant [PCRULS_N  ] is not used by the proces system                   
 info: constant [PCRULS_P  ] is not used by the proces system                   
 info: constant [PPMaxULS_E] is not used by the proces system                   
 info: constant [PPMaxULS_N] is not used by the proces system                   
 info: constant [PPMaxULS_P] is not used by the proces system                   
 info: constant [SCRULS_E  ] is not used by the proces system                   
 info: constant [SCRULS_N  ] is not used by the proces system                   
 info: constant [SCRULS_P  ] is not used by the proces system                   
 info: constant [TcMrtULS_E] is not used by the proces system                   
 info: constant [TcMrtULS_N] is not used by the proces system                   
 info: constant [TcMrtULS_P] is not used by the proces system                   
 info: constant [TcPMxULS_E] is not used by the proces system                   
 info: constant [TcPMxULS_N] is not used by the proces system                   
 info: constant [TcPMxULS_P] is not used by the proces system                   
 info: constant [TcRspULS_E] is not used by the proces system                   
 info: constant [TcRspULS_N] is not used by the proces system                   
 info: constant [TcRspULS_P] is not used by the proces system                   
 info: constant [TFPMxULS_E] is not used by the proces system                   
 info: constant [TFPMxULS_N] is not used by the proces system                   
 info: constant [TFPMxULS_P] is not used by the proces system                   
 info: constant [SDMIXULS_E] is not used by the proces system                   
 info: constant [SDMIXULS_N] is not used by the proces system                   
 info: constant [SDMIXULS_P] is not used by the proces system                   
 info: constant [FixULS_E  ] is not used by the proces system                   
 info: constant [FixULS_N  ] is not used by the proces system                   
 info: constant [FixULS_P  ] is not used by the proces system                   
 info: constant [xACTIVE_CO] is not used by the proces system                   
 info: constant [MALGPR01  ] is not used by the proces system                   
 info: constant [MALGPR02  ] is not used by the proces system                   
 info: constant [MALGPR03  ] is not used by the proces system                   
 info: constant [MALGPR04  ] is not used by the proces system                   
 info: constant [MALGPR05  ] is not used by the proces system                   
 info: constant [MALGPR06  ] is not used by the proces system                   
 info: constant [MALGPR07  ] is not used by the proces system                   
 info: constant [MALGPR08  ] is not used by the proces system                   
 info: constant [MALGPR09  ] is not used by the proces system                   
 info: constant [MALGPR10  ] is not used by the proces system                   
 info: constant [MALGPR11  ] is not used by the proces system                   
 info: constant [MALGPR12  ] is not used by the proces system                   
 info: constant [MALGPR13  ] is not used by the proces system                   
 info: constant [MALGPR14  ] is not used by the proces system                   
 info: constant [MALGPR15  ] is not used by the proces system                   
 info: constant [MALGPR16  ] is not used by the proces system                   
 info: constant [MALGPR17  ] is not used by the proces system                   
 info: constant [MALGPR18  ] is not used by the proces system                   
 info: constant [MDETPR    ] is not used by the proces system                   
 info: constant [MGRZMO    ] is not used by the proces system                   
 info: constant [MGRZRM    ] is not used by the proces system                   
 info: constant [MGRZFM    ] is not used by the proces system                   
 info: constant [MTMPFM    ] is not used by the proces system                   
 info: constant [MTMPRM    ] is not used by the proces system                   
 info: constant [MGRZMM    ] is not used by the proces system                   
 info: constant [MGRZMC    ] is not used by the proces system                   
 info: constant [MGRZGM    ] is not used by the proces system                   
 info: constant [MGRZSE    ] is not used by the proces system                   
 info: constant [MGRZRE    ] is not used by the proces system                   
 info: constant [MUnitSW   ] is not used by the proces system                   
 info: constant [Zooplank  ] is not used by the proces system                   
 info: constant [SWBEN     ] is not used by the proces system                   
 info: constant [SwV1      ] is not used by the proces system                   
                                                                                
# locating requested output from active processes                                                   
                                                                                                    
 output [ExtVlPhyt           ] from proces [EXTINABVL ]                                             
 output [Depth               ] from proces [DynDepth  ]                                             
 output [DayL                ] from proces [Daylength ]                                             
 output [Limit Chlo          ] from proces [BLOOM     ]                                             
 output [Limit nit           ] from proces [BLOOM     ]                                             
 output [Limit pho           ] from proces [BLOOM     ]                                             
 output [Limit sil           ] from proces [BLOOM     ]                                             
 output [Limit e             ] from proces [BLOOM     ]                                             
 output [Limit gro           ] from proces [BLOOM     ]                                             
 output [Limit mor           ] from proces [BLOOM     ]                                             
 output [fPPtot              ] from proces [BLOOM     ]                                             
 output [fResptot            ] from proces [BLOOM     ]                                             
 output [SaturOXY            ] from proces [SaturOXY  ]                                             
 output [TotalDepth          ] from proces [TotDepth  ]                                             
 output [SatPercOXY          ] from proces [RearOXY   ]                                             
 output [Phyt                ] from proces [Phy_Blo   ]                                             
 output [AlgN                ] from proces [Phy_Blo   ]                                             
 output [AlgP                ] from proces [Phy_Blo   ]                                             
 output [AlgSi               ] from proces [Phy_Blo   ]                                             
 output [AlgDM               ] from proces [Phy_Blo   ]                                             
 output [SS                  ] from proces [Compos    ]                                             
 output [TIM                 ] from proces [Compos    ]                                             
 output [POM                 ] from proces [Compos    ]                                             
 output [TOC                 ] from proces [Compos    ]                                             
 output [POC                 ] from proces [Compos    ]                                             
 output [TotN                ] from proces [Compos    ]                                             
 output [KjelN               ] from proces [Compos    ]                                             
 output [DIN                 ] from proces [Compos    ]                                             
 output [TON                 ] from proces [Compos    ]                                             
 output [PON                 ] from proces [Compos    ]                                             
 output [TotP                ] from proces [Compos    ]                                             
 output [TOP                 ] from proces [Compos    ]                                             
 output [POP                 ] from proces [Compos    ]                                             
 output [PIP                 ] from proces [Compos    ]                                             
 output [TotSi               ] from proces [Compos    ]                                             
 output [VSedPOC1            ] from proces [CalVS_POC1]                                             
 output [fSedPOC1            ] from proces [Sed_POC1  ]                                             
 output [SecchiDept          ] from proces [Secchi    ]                                             
 output [POCS1               ] from proces [S1_Comp   ]                                             
 output [fSedMDI_E           ] from proces [SEDALG01  ]                                             
 output [fSedMDI_N           ] from proces [SEDALG02  ]                                             
 output [fSedMDI_P           ] from proces [SEDALG03  ]                                             
 output [fSedMFL_E           ] from proces [SEDALG04  ]                                             
 output [fSedMFL_N           ] from proces [SEDALG05  ]                                             
 output [fSedMFL_P           ] from proces [SEDALG06  ]                                             
 output [fSedDIN_E           ] from proces [SEDALG07  ]                                             
 output [fSedDIN_N           ] from proces [SEDALG08  ]                                             
 output [fSedDIN_P           ] from proces [SEDALG09  ]                                             
 output [fSedPHA_E           ] from proces [SEDALG10  ]                                             
 output [fSedPHA_N           ] from proces [SEDALG11  ]                                             
 output [fSedPHA_P           ] from proces [SEDALG12  ]                                             
 output [fSedPHYT            ] from proces [SedPhBlo  ]                                             
 output [Chlfa               ] from proces [Phy_Blo   ]                                             
 warning: output [BLOOMGRP            ] not located                                                 
 output [ExtVlISS            ] from proces [Extinc_VLG]                                             
 output [ExtVlOSS            ] from proces [Extinc_VLG]                                             
 output [ExtVlODS            ] from proces [Extinc_VLG]                                             
 output [ExtVlFresh          ] from proces [Extinc_VLG]                                             
 output [RadBot              ] from proces [CalcRad   ]                                             
 output [FRACTIME01          ] from proces [vtrans    ]                                             
 output [FRACTIME03          ] from proces [vtrans    ]                                             
 output [FRACTIME05          ] from proces [vtrans    ]                                             
 output [LocalDepth          ] from proces [TotDepth  ]                                             
 output [fSedPOC             ] from proces [Sum_Sedim ]                                             
 output [DINOFLAG            ] from proces [Phy_Blo   ]                                             
 output [MDIATOMS            ] from proces [Phy_Blo   ]                                             
 output [MFLAGELA            ] from proces [Phy_Blo   ]                                             
 output [PHAEOCYS            ] from proces [Phy_Blo   ]                                             
 output [BmLayMAL            ] from proces [MALDIS    ]                                             
 output [BrochP              ] from proces [FlMALC    ]                                             
 output [ExudMALC            ] from proces [FlMALC    ]                                             
 output [FrBmMALS            ] from proces [MALDIS    ]                                             
 output [GrosMALC            ] from proces [FlMALC    ]                                             
 output [LimDenS             ] from proces [FlMALS    ]                                             
 output [LimMALC             ] from proces [FlMALS    ]                                             
 output [LimMALN             ] from proces [FlMALS    ]                                             
 output [LimMALP             ] from proces [FlMALS    ]                                             
 output [LimN                ] from proces [FlMALN    ]                                             
 output [LimNutS             ] from proces [FlMALS    ]                                             
 output [LimP                ] from proces [FlMALN    ]                                             
 output [LimPhoS             ] from proces [FlMALS    ]                                             
 output [LimTemS             ] from proces [FlMALS    ]                                             
 output [LimVel              ] from proces [FlMALN    ]                                             
 output [LocDecS             ] from proces [FlMALS    ]                                             
 output [LocGroC             ] from proces [FlMALS    ]                                             
 output [LocGroN             ] from proces [FlMALS    ]                                             
 output [LocGroP             ] from proces [FlMALS    ]                                             
 output [LocGroPS            ] from proces [FlMALS    ]                                             
 output [LocNetPS            ] from proces [FlMALS    ]                                             
 output [LocUpC              ] from proces [FlMALC    ]                                             
 output [LocUpN              ] from proces [FlMALN    ]                                             
 output [LocUpP              ] from proces [FlMALN    ]                                             
 output [MALSCDM             ] from proces [FlMALS    ]                                             
 output [MALSNDM             ] from proces [FlMALS    ]                                             
 output [MALSPDM             ] from proces [FlMALS    ]                                             
 output [MALSNC              ] from proces [FlMALS    ]                                             
 output [MALSPC              ] from proces [FlMALS    ]                                             
 output [muMALS              ] from proces [FlMALS    ]                                             
 output [RespMALC            ] from proces [FlMALC    ]                                             
 output [Wdry                ] from proces [FlMALS    ]                                             
 output [Wwet                ] from proces [FlMALS    ]                                             
 output [WdryTot             ] from proces [FlMALS    ]                                             
 output [WwetTot             ] from proces [FlMALS    ]                                             
 output [MALCDMS             ] from proces [FlMALS    ]                                             
 output [MALNDMS             ] from proces [FlMALS    ]                                             
 output [MALPDMS             ] from proces [FlMALS    ]                                             
 output [FootDepth           ] default from [MALDIS              ]                                  
 output [FrondArea           ] from proces [MALDIS    ]                                             
 output [LocAreaMAL          ] from proces [MALDIS    ]                                             
 output [TotAreaMAL          ] from proces [MALDIS    ]                                             
 output [LengthMAL           ] from proces [MALDIS    ]                                             
 output [TipDepth            ] from proces [MALDIS    ]                                             
                                                                                                    
