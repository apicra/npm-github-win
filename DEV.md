# create and develop package in 2 Minutes
This is solution for small modules, how creating one-file-modules?

+ if you are user of jetbrains software and your projects are in user folder c:\user\[username]

    cd  %USERPROFILE%\WebstormProjects

or in powershell, cygwin, ...

    cd ~\WebstormProjects


+ download apicra tool to the folder for all projects:

    git clone https://github.com/apicra/npm-github-win.git .apicra

OR REMOVE

    .apicra\-apicra-delete.bat
    RMDIR /Q /S .apicra



## Start a new Project:

    cd  %USERPROFILE%\WebstormProjects
    .apicra\-project-create.bat "tom-sapletta-com" "projectname"

*for organisation

    .apicra\-project-create.bat "tom-sapletta-com" "apicra/projectname"

OR REMOVE the Project:

    cd  %USERPROFILE%\WebstormProjects
    .apicra\-project-delete.bat "tom-sapletta-com" "projectname"

*for organisation

    .apicra\-project-delete.bat "tom-sapletta-com" "apicra/projectname"


Script is doing steps:
+ download .apicra to the project folder
+ create folder
+ create package.json
+ create connection with github, checkout new repository

    .apicra\-git-create.bat

+ create connection with npmjs, package


## Short way to share your changes in code
+ prepare your changes and use:

    ..\-ticket.bat "name of ticket"

+commit + push


Script is doing steps:
+ Create Ticket+ commit and pull changes to git with ticket message

## Publish new version
publish new on github and npmjs

    -version.bat

OR

    -version.bat minor/major


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
### .apicra
Create
    git clone https://github.com/apicra/npm-github-win.git .apicra

Delete
    RMDIR /Q/S .apicra


### project
Create

    .apicra\-project-create.bat "tom-sapletta-com" "projectname"

Delete

    .apicra\-project-delete.bat "tom-sapletta-com" "projectname"
OR
    RMDIR /Q/S projectname


## Prepapring and testing shortcut for create project:
before:
    .apicra\-project-create.bat "tom-sapletta-com" "apicra/win-ticket-version-flow"

now:
    -create.bat "tom-sapletta-com" "projectname"


Create file

    echo set GIT_USER=%~1 > -create.bat && echo set PROJECT=%~2 >> -create.bat && echo .apicra\-project-create.bat ^%GIT_USER^% ^%PROJECT^% >> -create.bat

Read file

    type -create.bat 2>nul


Delete file

    del /f -create.bat



## Prepapring and testing shortcut for delete project:
before:
    .apicra\-project-delete.bat "tom-sapletta-com" "projectname"

now:
    -delete.bat "tom-sapletta-com" "projectname"


Create file

    echo set GIT_USER=%~1 > -delete.bat && echo set PROJECT=%~2 >> -delete.bat && echo .apicra\-project-delete.bat ^%GIT_USER^% ^%PROJECT^% >> -delete.bat

Read file

    type -delete.bat 2>nul


Delete file

    del /f -delete.bat


## Info about command line on windows OS

http://www.ee.pw.edu.pl/~tomzdun/zajecia/soisk_l/1.%20DOS%20-%20Linia%20komend.pdf
