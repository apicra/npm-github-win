@echo off
:: Variables
set PARAM=%~1
set MODULE=%~2
set OS=win
set MODULE_PATH=.apicra\module\%MODULE%
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
if "%PARAM%"=="r" GOTO remove
if "%PARAM%"=="remove" GOTO remove
if "%PARAM%"=="d" GOTO remove
if "%PARAM%"=="delete" GOTO remove
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
if "%MODULE%"=="" GOTO model_empty
::mkdir .apicra
::echo model/%MODULE%/ >> .gitignore
echo "" > .apicra\variable\%MODULE%.txt
git clone https://github.com/apicra/%OS%-%MODULE%.git .apicra\module\%MODULE% && echo %MODULE% is installed
GOTO end
::::::::::::::
:update
if "%MODULE%"=="" GOTO model_empty
::mkdir .apicra
::echo model/%MODULE%/ >> .gitignore
git -C .apicra\module\%MODULE% pull origin master && echo %MODULE% is installed
GOTO end
::::::::::::::
:remove
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
