:: update data on git repo
::@ECHO OFF
set PROJECT=%~1
echo %PROJECT%
RMDIR /Q/S %PROJECT%
dir
