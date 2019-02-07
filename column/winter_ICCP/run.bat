
set execpath= ..\..\..\exe\waq\bin
set waq=      -p ..\..\..\exe\waq\default\proc_def

set filename=monopile_pH_winter_ICCP40seg_LZ8910_y27
%execpath%\delwaq1.exe %filename%.inp %waq%
%execpath%\delwaq2.exe %filename%.inp 

pause