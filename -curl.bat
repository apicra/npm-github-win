@echo off
::echo You are about to use windows cURL, Enter your url after curl command below:
::set /p input="curl "
::cls
set input=%~1
echo %input%
powershell -Command "(new-object net.webclient).DownloadString('%input%')"
pause
