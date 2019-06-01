:: .apicra\.apicra.bat %~1
@echo off
:: Variables
set PARAM=%~1
set MODULE=%~2
set OS=win
set APICRA_PATH=.apicra
set CMD=.apicra.bat
set NAME=Apicra
:: get Variable from File
IF "%PARAM%"=="" GOTO help
::::::::::::::
:: config
if "%PARAM%"=="c" GOTO config
if "%PARAM%"=="config" GOTO config
:: install
if "%PARAM%"=="i" GOTO install
if "%PARAM%"=="install" GOTO install
:: reinstall
if "%PARAM%"=="r" GOTO reinstall
if "%PARAM%"=="reinstall" GOTO reinstall
:: delete
if "%PARAM%"=="d" GOTO delete
if "%PARAM%"=="delete" GOTO delete
:: update
if "%PARAM%"=="u" GOTO update
if "%PARAM%"=="update" GOTO update
::::::::::::::
:help
echo %CMD% exist
echo %CMD% config
echo %CMD% install
echo %CMD% install "modulname"
echo %CMD% reinstall
echo %CMD% delete
echo %CMD% delete "modulname"
GOTO end
::::::::::::::
:exist
IF EXIST ".apicra" (
    ECHO true
) ELSE (
    ECHO false
)
GOTO end
::::::::::::::
:reinstall
RMDIR /Q/S .apicra && echo %NAME% folder is deleted
del /f apicra.txt && echo %NAME% config file is deleted
GOTO install
::::::::::::::
:install
IF NOT "%MODULE%"=="" GOTO install_module
IF EXIST %APICRA_PATH% (
    ECHO %NAME% exist
    GOTO help
)
git clone https://github.com/apicra/npm-github-win.git .apicra && echo %NAME% is installed
GOTO config
::::::::::::::
:install_module
.apicra/-module.bat install %MODULE%
GOTO end
::::::::::::::
:config
echo github > apicra.txt
GOTO end
::::::::::::::
:update
git -C .apicra pull origin master && echo %NAME% is updated
GOTO end
::::::::::::::
:delete
IF NOT "%MODULE%"=="" GOTO delete_module
IF NOT EXIST %APICRA_PATH% (
    ECHO Apicra not exist
    GOTO help
)
RMDIR /Q/S .apicra && echo %NAME% folder is deleted
del /f apicra.txt && echo %NAME% config file is deleted
GOTO end
::::::::::::::
:delete_module
.apicra/-module.bat delete %MODULE%
GOTO end
::::::::::::::
:end
