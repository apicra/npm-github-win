:: create folder and .apicra, .gitingore
:: @ECHO OFF
set GIT_USER=%~1
set PROJECT=%~2
mkdir %PROJECT%
cd %PROJECT%
::@ECHO ON
echo # %PROJECT% > README.md
echo # Licence > LICENCE.md
..\.apicra\-apicra-download.bat
echo Project: "%PROJECT%" is Created
-git-create.bat %GIT_USER% %PROJECT%
dir
