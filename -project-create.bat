:: create folder and .apicra, .gitingore
:: @ECHO OFF
set PROJECT=%~1
mkdir %PROJECT%
cd %PROJECT%
::@ECHO ON
echo # %PROJECT% > README.md
echo # Licence > LICENCE.md
..\.apicra\-apicra-download.bat
echo Project: "%PROJECT%" is Created
dir
