:: update data on git repo
::@ECHO OFF
set PROJECT=%~1
echo %PROJECT%
mkdir %PROJECT%
cd %PROJECT%
..\.apicra\-apicra-download.bat
dir
