:: update data on git repo
::@ECHO OFF
set PROJECT=%~1
RMDIR /Q/S %PROJECT%
echo Project: %PROJECT% is Removed
dir
