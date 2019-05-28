:: create git repo
:: cd project folder
::# Verifies the new remote URL

::curl -u 'tom-sapletta-com' https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\"}"
::-curl.bat -u 'tom-sapletta-com' https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\"}"
set GIT_USER=%~1
set PROJECT=%~2
set /P DESCRIPTION= < ..\.apicra\variable\DESCRIPTION.txt
::set GIT_USER=tom-sapletta-com
..\.apicra\curl-7.65.0-win32-mingw\bin\curl.exe -u "%GIT_USER%" https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\", \"description\":\"%DESCRIPTION%\"}"
git init
git add .
::git checkout -t -b develop origin/develop
git commit -m "initial project version"
::# Sets the new remote
set GIT_URL=https://github.com/%GIT_USER%/%PROJECT%.git
:: echo %GIT_URL% > .apicra\variable\GIT_URL.txt
git remote add origin %GIT_URL%
::# Pushes the changes in your local repository up to the remote repository you specified as the origin
git push -u origin master
git remote -v
:: .apicra\-open-git-url.bat
..\.apicra\-open.bat %GIT_URL%
..\.apicra\-apicra-download.bat
