# Camiitool

## Warning
This repo is in a work in progress state.  It will build when running `swift build`.  However, when running `swift package generate-xcodeproj`, and then attempting to build the project, we get a Framework Not found error. 

## Project Info
This is an attmept to create a swift wrapper of the C library Amiitool. 
The intention is to setup the package with amiitool included as submodule, so that updates to the amiitool library could be taken with minimal effort.  
Since amiitool contains a submodule dependency, this project requires a recursive clone.  

`git clone --recursive-submodules git@github.com:JKcompute/Camiitool.git`
