:: update data on git repo
@ECHO OFF
set PROJECT=%~1
mkdir %PROJECT%
cd %PROJECT%
..\.apicra\-apicra-download.bat
@ECHO ON
echo Project: %PROJECT% is Created
dir
