@echo off
:: Variables
set PARAM=%~1
set MODULE=%~2
set OS=win
:: get Variable from File
IF EXIST "module\%MODULE%" (
::    set PROJECT_VAR = < module\%CMD%.txt
    ECHO Module %MODULE% exist
) ELSE (
    ECHO Module %MODULE% not exist
)
::::::::::::::
:: install
if "%PARAM%"=="i" GOTO install
if "%PARAM%"=="install" GOTO install
:: remove
if "%PARAM%"=="r" GOTO remove
if "%PARAM%"=="remove" GOTO remove
:: update
if "%PARAM%"=="u" GOTO update
if "%PARAM%"=="update" GOTO update
::::::::::::::
:help
echo %CMD% exist
echo %CMD% name
echo %CMD% create "username" "projectname"
echo %CMD% delete "username" "projectname"
GOTO end
::::::::::::::
:exist
IF EXIST "project\%CMD%.txt" (
    ECHO true
) ELSE (
    ECHO false
)
GOTO end
::::::::::::::
:name
IF EXIST "project\%CMD%.txt" (
    ECHO < project\%CMD%.txt
) ELSE (
::    ECHO false
)
GOTO end
::::::::::::::
:install
if "%MODULE%"=="" GOTO model_empty
::mkdir .apicra
echo %MODULE%/ >> .gitignore
git clone https://github.com/apicra/%OS%-%MODULE%.git %MODULE%
echo %MODULE% is installed
GOTO end
::::::::::::::
:remove
if "%MODULE%"=="" GOTO model_empty
-%CMD%-delete.bat %USER% %PROJECT%
echo %PROJECT% is deleted
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

