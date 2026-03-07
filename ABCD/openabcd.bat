@echo off
REM 設置批次檔所在目錄為工作目錄
PUSHD %~DP0 & cd /d "%~dp0"

REM 檢查是否已經以管理員權限運行
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo 需要管理員權限,正在請求提升...
    goto UACPrompt
) else (
    goto gotAdmin
)

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

REM 顯示啟動訊息
echo ========================================
echo 正在啟動程式...
echo ========================================
echo.

REM 檢查檔案是否存在
if not exist "C:\yoeb-main\ABCD\abcd.exe" (
    echo 錯誤: 找不到 C:\yoeb-main\ABCD\abcd.exe
    pause
    exit /B 1
)

if not exist "C:\yoeb-main\ABCD\pman.exe" (
    echo 錯誤: 找不到 C:\yoeb-main\ABCD\pman.exe
    pause
    exit /B 1
)

REM 啟動程式(使用絕對路徑和工作目錄)
echo 啟動 abcd.exe...
start "" /D "C:\yoeb-main\ABCD" "C:\yoeb-main\ABCD\abcd.exe"
timeout /t 2 /nobreak >nul

echo 啟動 pman.exe...
start "" /D "C:\yoeb-main\ABCD" "C:\yoeb-main\ABCD\pman.exe"

echo 啟動 NewPCname.BAT...
start "" /D "C:\yoeb-main\" "C:\yoeb-main\NewPCname.BAT"

echo.
echo 程式已啟動
echo ========================================

