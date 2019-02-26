rem SET PATH=%PATH%;c:\Deltares\repos\Delft3D\src\bin\x64\share\bin\
SET PATH=%PATH%;d:\projects\IMPAQT\MALG\exe\share\bin\
"..\..\exe\dwaq\bin\delwaq1.exe" MALG_col.inp -p "..\..\code\tables\proc_def" 

pause

rem "..\..\exe\dwaq\bin\delwaq2.exe" MALG_col.inp -openpb "..\..\code\x64\Release\D3Dwaq_OpenPL.dll" 
"..\..\exe\dwaq\bin\delwaq2.exe" MALG_col.inp -openpb "..\..\code\x64\Debug\D3Dwaq_OpenPL.dll" 

pause
