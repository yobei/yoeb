@echo off
setlocal EnableDelayedExpansion

set "inifile=C:\Users\Administrator\Desktop\IOT\setnb.ini"
set "newName="

for /f "tokens=1,2 delims==" %%a in ('type "%inifile%"') do (
    if "%%a"=="nob" set "newName=%%b"
)

if not defined newName (
    echo 無法找到nob值。
    goto end
)

wmic computersystem where name="%computername%" call rename name="%newName%"

:end
endlocal
