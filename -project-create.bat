:: create folder and .apicra, .gitingore
:: @ECHO OFF
set GIT_USER=%~1
set PROJECT=%~2
set /P DESCRIPTION= < ..\.apicra\variable\DESCRIPTION.txt
mkdir %PROJECT%
cd %PROJECT%
::@ECHO ON
echo # %PROJECT% > README.md
echo %DESCRIPTION% >> README.md
echo # Licence > LICENCE.md
..\.apicra\-git-create.bat %GIT_USER% %PROJECT%
echo Project: "%PROJECT%" is Created
..\.apicra\-apicra-download.bat
..\.apicra\-open-git-url.bat
dir
