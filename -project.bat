@echo off
set MODULE_NAME=%~1
set MODULE_CMD=%~2
set MODULE_PATH=.apicra\module\%MODULE_NAME%\-%MODULE_CMD%.bat
::::::::::::::
::IF NOT EXIST %MODULE_PATH% GOTO path_not_exist
%MODULE_PATH%
:end
::module\%~1\%~2 %~3 %~4
::::::::::::::
:path_not_exist
echo :: Apicra :: Project :: Path %MODULE_PATH% not exits
::::::::::::::
:end
