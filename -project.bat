@echo off
:: Variables
set CMD=%~1
set PARAM=%~2
set USER=%~3
set PROJECT=%~4
:: get Variable from File
IF EXIST "project\%CMD%.txt" (
    set PROJECT_VAR = < project\%CMD%.txt
) ELSE (
::    echo "" > project\%CMD%.txt
::    set PROJECT_VAR = < project\%CMD%.txt
    ECHO Variable file: 'project\%CMD%.txt' not found
)
::::::::::::::
:: Exist
if "%PARAM%"=="e" GOTO exist
if "%PARAM%"=="exist" GOTO exist
:: Name
if "%PARAM%"=="n" GOTO name
if "%PARAM%"=="name" GOTO name
:: Install Module
if "%PARAM%"=="im" GOTO install_module
if "%PARAM%"=="install-module" GOTO install_module
:: Remove Module
if "%PARAM%"=="rm" GOTO remove_module
if "%PARAM%"=="remove-module" GOTO remove_module
:: Create
if "%PARAM%"=="c" GOTO create
if "%PARAM%"=="create" GOTO create
:: Delete
if "%PARAM%"=="d" GOTO delete
if "%PARAM%"=="delete" GOTO delete
::::::::::::::
:help
echo "Params: exist, name"
echo "Params & Variables: create, delete"
echo Example:
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
:install_module
.apicra\-module.bat install %CMD%
echo %CMD% is installed
GOTO end
::::::::::::::
:remove_module
.apicra\-module.bat remove %CMD%
echo %CMD% is installed
GOTO end
::::::::::::::
:create
if "%USER%"=="" GOTO user_empty
if "%PROJECT%"=="" GOTO project_empty
.apicra\%CMD%\create.bat %USER% %PROJECT%
echo %PROJECT% is created
GOTO end
::::::::::::::
:delete
if "%USER%"=="" GOTO user_empty
if "%PROJECT%"=="" GOTO project_empty
.apicra\%CMD%\delete.bat %USER% %PROJECT%
echo %PROJECT% is deleted
GOTO end
::::::::::::::
:user_empty
echo second parameter "USER" is empty
GOTO create_example
::::::::::::::
:project_empty
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