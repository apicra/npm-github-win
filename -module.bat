@echo off
:: Variables
set PARAM=%~1
set MODULE=%~2
set OS=win
set MODULE_PATH=.apicra\module\%MODULE%
set APICRA_CONFIG=.apicra\module\%MODULE%\apicra.txt
set VARIABLE_PATH=.apicra\variable\%MODULE%.txt
:: get Variable from File
IF "%MODULE%"=="" GOTO help
IF EXIST %MODULE_PATH% (
::    set PROJECT_VAR = < module\%CMD%.txt
::    ECHO Module %MODULE% exist
) ELSE (
::    ECHO Module %MODULE% not exist
::    GOTO end
)
::::::::::::::
:: install
if "%PARAM%"=="i" GOTO install
if "%PARAM%"=="install" GOTO install
:: remove
::if "%PARAM%"=="r" GOTO remove
::if "%PARAM%"=="remove" GOTO remove
if "%PARAM%"=="d" GOTO delete
if "%PARAM%"=="delete" GOTO delete
:: update
if "%PARAM%"=="u" GOTO update
if "%PARAM%"=="update" GOTO update
::::::::::::::
:help
echo all modules
dir module
echo %CMD% exist
echo %CMD% name
echo %CMD% install wordpress
echo %CMD% remove wordpress
GOTO end
::::::::::::::
:exist
IF EXIST "module\%MODULE%.txt" (
    ECHO true
) ELSE (
    ECHO false
)
GOTO end
::::::::::::::
:name
IF EXIST ".apicra\module\%MODULE%.txt" (
    ECHO < .apicra\module\%CMD%.txt
) ELSE (
::    ECHO false
)
GOTO end
::::::::::::::
:install
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Install module :: %MODULE%
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if "%MODULE%"=="" GOTO model_empty
::mkdir .apicra
::echo model/%MODULE%/ >> .gitignore
git clone https://github.com/apicra/%OS%-%MODULE%.git .apicra\module\%MODULE% && echo %MODULE% is installed
:: Create config file
echo "" > %VARIABLE_PATH%
IF EXIST %VARIABLE_PATH% echo Variable for %MODULE% is created
::install_module_from_config
IF EXIST %APICRA_CONFIG% (
    ECHO Install All modules from config file %APICRA_CONFIG%
    GOTO install_module_from_config
) ELSE (
    GOTO end
)
::::::::::::::
:install_module_from_config
for /f "delims==" %%a in (%APICRA_CONFIG%) do .apicra\-module.bat install %%a
GOTO end
::::::::::::::
:update
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Update module :: %MODULE%
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if "%MODULE%"=="" GOTO model_empty
::mkdir .apicra
::echo model/%MODULE%/ >> .gitignore
git -C .apicra\module\%MODULE% pull origin master && echo %MODULE% is installed
GOTO end
::::::::::::::
:delete
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :: Delete module :: %MODULE%
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
if "%MODULE%"=="" GOTO model_empty
IF NOT EXIST %MODULE_PATH% GOTO model_not_exist
RMDIR /Q /S .apicra\module\%MODULE% && echo %MODULE% module folder is deleted
del /f .apicra\variable\%MODULE%.txt && echo %MODULE% config file is deleted
GOTO end
::::::::::::::
:model_not_exist
ECHO Module: %MODULE% not exist
GOTO end
::::::::::::::
:model_empty
echo third parameter "PROJECT" is empty
GOTO delete_example
::::::::::::::
:create_example
echo Create Example:
echo %CMD% create "username" "projectname"
GOTO end
::::::::::::::
:delete_example
echo Delete Example:
echo %CMD% delete "username" "projectname"
GOTO end
::::::::::::::
:end

