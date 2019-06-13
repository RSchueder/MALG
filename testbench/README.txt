README - Testbenches

broch -> 
1DV 10 segment model for Broch paper reproduction

col -> 
A10 layer 90 segment model 
first model used to test the code
abandoned after broch model
col-hyd contains the hydrodynamics

tidal_flume_farm ->
a dummy 3D model with tidal variation used to test the allocation of biomass 
in a sigmalayer model with tidal variation in waterlevel
	farm3D               = hydro, although it was run on the p drive and then copied outside this directory due to size limitations
	farm3DWQ             = test case for high biomass
	Farm3DWQ_1frond      = test case for a single frond (should be close to broch)
	farm3DWQ_NZB         = biomass settings set to what is known about NZB
	                       29 may overwritten with what was on p drive, includes mussels, can be recovered using github if needed
	farm3DWQ_NZB_stretch = with stretch factor, should be same results
June 13 - decide to move Farm3D to root project directory so that simulations can be kept during project commits.





