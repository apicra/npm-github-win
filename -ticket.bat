@echo off
set CONTENT=%~1
::echo %CONTENT%
set /p VERSION= < .apicra\.variable\VERSION.txt
IF "%CONTENT%" == "" set CONTENT=New Version of System v%VERSION%
echo %CONTENT% >> ".apicra\.ticket\v%VERSION%.txt"
