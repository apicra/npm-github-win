# create and develop package in 2 Minutes
This is solution for small modules, how creating one-file-modules?

+ if you are user of jetbrains software and your projects are in user folder c:\user\[username]

    cd  %USERPROFILE%\WebstormProjects

or in powershell, cygwin, ...

    cd ~\WebstormProjects


+ download apicra tool to the folder for all projects:

    git clone https://github.com/apicra/npm-github-win.git .apicra

OR REMOVE

    .apicra\-apicra-remove.bat
    RMDIR /Q/S .apicra



## Start a new Project:

    cd  %USERPROFILE%\WebstormProjects
    .apicra\-project-create.bat "tom-sapletta-com" "projectname"

OR REMOVE the Project:

    cd  %USERPROFILE%\WebstormProjects
    .apicra\-project-remove.bat "projectname"

Script is doing steps:
+ download .apicra to the project folder
+ create folder
+ create package.json
+ create connection with github, checkout new repository

    .apicra\-git-create.bat

+ create connection with npmjs, package


## Short way to share your changes in code
+ prepare your changes and use:

    ..\-add.bat "name of ticket"

Script is doing steps:
+ Create Ticket+ commit and pull changes to git with ticket message

## Publish new version
publish new on github and npmjs

    -publish.bat


::echo %CONTENT%
::set /p VERSION= < .apicra\variable\PROJECT.txt
::IF "%CONTENT%" == "" set CONTENT=New Version of System v%VERSION%
set PROJECT_FILE=".apicra\variable\PROJECT.txt"
echo %PROJECT_FILE%
IF not exist %PROJECT_FILE% (
::touch %ticket%
    echo %CONTENT% > %ticket%
) ElSE (
    echo %CONTENT% >> %ticket%
)

SetLocal EnableDelayedExpansion
::-message.bat
for /f %%i in ('dir /b /od ticket\*.txt') do set filename=%%i
for /f "delims==" %%a in (ticket\%filename%) do set message=%%a
@ECHO ON
git add . && git commit -m "%message%" && git push origin master && -open-git-url.bat
:: GIT_URL.txt


## CURL

choco install curl


https://curl.haxx.se/windows/
https://curl.haxx.se/windows/dl-7.65.0/curl-7.65.0-win32-mingw.zip


## TESTING
recreating

    .apicra\-project-remove.bat "projectname" && RMDIR /Q/S .apicra && git clone https://github.com/apicra/npm-github-win.git .apicra && .apicra\-project-create.bat "tom-sapletta-com" "projectname"
