@echo off
set CONTENT=%~1
::echo %CONTENT%
set /p VERSION= < .apicra\.variable\VERSION.txt
IF "%CONTENT%" == "" set CONTENT=New Version of System v%VERSION%
set ticket=".apicra\.ticket\v%VERSION%.txt"
echo %ticket%
IF not exist %ticket% (
::touch %ticket%
    echo %CONTENT% > %ticket%
) ElSE (
    echo %CONTENT% >> %ticket%
)
