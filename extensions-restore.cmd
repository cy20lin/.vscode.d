@echo off
for /F "tokens=1,2 delims=@" %%i in ('type "%~dp0\extensions.txt"') do call :process %%i %%j
goto end_process
:process
    :: echo code --install-extension %1
    call code --install-extension %1
:end_process
