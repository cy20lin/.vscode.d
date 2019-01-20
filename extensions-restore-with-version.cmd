@echo off
cd /d %~dp0

for /F "tokens=1,2 delims=@" %%i in (extensions.txt) do call :process %%i %%j
goto end_process

:process
    :: echo code --install-extension %1@%2
    call code --install-extension %1@%2
:end_process