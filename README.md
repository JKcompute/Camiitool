# Camiitool

## Warning
This repo is in a development state.  It is work in progress and you should expect it to be unstable. 

## Project Info
This is an attmept to create a swift wrapper of the C library Amiitool. 
The intention is to setup the package with amiitool included as submodule, so that updates to the amiitool library could be taken with minimal effort.  
Since amiitool contains a submodule dependency, this project requires a recursive clone.  

`git clone --recursive-submodules git@github.com:JKcompute/Camiitool.git`

^^ this has not been tested yet.  You also might need to run a make command to generate a file.  This needs to be fixed
`cd Sources/Camiitool`
`make gitversion.h`
