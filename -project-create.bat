:: create folder and .apicra, .gitingore
:: @ECHO OFF
set PROJECT=%~1
mkdir %PROJECT%
cd %PROJECT%
..\.apicra\-apicra-download.bat
::@ECHO ON
echo # %PROJECT% >> README.md
echo # Licence >> LICENCE.md
echo Project: %PROJECT% is Created
dir
