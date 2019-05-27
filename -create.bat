:: update data on git repo
@ECHO OFF
set PROJECT=%~1
mkdir %PROJECT%
cd %PROJECT%
../-apicra-download.bat
