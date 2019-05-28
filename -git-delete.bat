:: DELETE /repos/:owner/:repo
set GIT_USER=%~1
set PROJECT=%~2
::set GIT_USER=tom-sapletta-com
.apicra\curl-7.65.0-win32-mingw\bin\curl.exe -u "%GIT_USER%" -X DELETE https://api.github.com/repos/%GIT_USER%/%PROJECT%
@ping -n 4 localhost> nul && RMDIR /Q/S %PROJECT%
