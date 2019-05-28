:: update data on git repo
::@ECHO OFF
set GIT_USER=%~1
set PROJECT=%~2
.apicra\-git-delete.bat %GIT_USER% %PROJECT%
::RMDIR /Q/S %PROJECT%
echo Project: "%PROJECT%" is Removed
dir
