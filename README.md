# MALG
MacroALGae module of DELWAQ

Macroalgae, kelp, or seaweed, are macroscopic multicellular marine algae that cover a large range of taxonomic groups. 
They are of interest from an ecological point of view as they provide habitat for marine animals. They are also interesting from an economic point of view as they can be cultivated and harvested while offering a bio-remediating service to marine waters. There specifically is interest in the use of macroalgae as a bioremediator in integrated multitrophic aquaculture (IMTA) systems, where they can convert excess farm nutrients into biomass and value added products such as alginate. 
The macroalgae module (MALG) in DELWAQ models the the dynamics of the kelp \textit{Saccharina latissima} and is based almost entirely on the model described in \cite{broch2012}. 
Its applicability to seaweed in general is not known at this time and up to the user to determine. Note that numerous changes have been made to the equations in \cite{broch2012} to allow for compatibility with DELWAQ's mass based systems, and also to allow for the inclusion of MALG in 3D models, whereby the size of the seaweed needs to be modelled in addition to the biomass. 
The primary motivation for this development is for application in the assessment of IMTA systems. 

It is a program written in FORTRAN as a *.dll of the DELWAQ process library. Information on DELWAQ and the Delft3D Flexible Mesh Suite can be found here https://www.deltares.nl/en/software/delft3d-flexible-mesh-suite/#modules.

# Usage
The compiled *.dll is only available for windows. The batch file for executing a model should look like this:

"MALG\exe\dwaq\bin\delwaq1.exe" model.inp -p "MALG\code\tables\proc_def" 
"MALG\exe\dwaq\bin\delwaq2.exe" model.inp -openpb "MALG\code\x63\Debug\D3Dwaq_OpenPL.dll" 

# Copyright
This code is available under GPLv3 conditions: https://www.gnu.org/licenses/gpl-3.0.html


