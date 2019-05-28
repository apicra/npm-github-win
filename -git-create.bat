:: create git repo
:: cd project folder
git init
git add .
::git checkout -t -b develop origin/develop
git commit -m "initial project version"
::# Verifies the new remote URL
::git remote -v
::curl -u 'tom-sapletta-com' https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\"}"
::-curl.bat -u 'tom-sapletta-com' https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\"}"
set GIT_USER=%~1
set PROJECT=%~2
::set GIT_USER=tom-sapletta-com
.\curl-7.65.0-win32-mingw\bin\curl.exe -u "%GIT_USER%" https://api.github.com/user/repos -d "{\"name\":\"%PROJECT%\"}"


::# Pushes the changes in your local repository up to the remote repository you specified as the origin
git push -u origin master

::# Sets the new remote
git remote add origin "https://github.com/%GIT_USER%/%PROJECT%.git"


:: https://curl.haxx.se/windows/
:: https://curl.haxx.se/windows/dl-7.65.0/curl-7.65.0-win32-mingw.zip
