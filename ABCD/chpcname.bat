
@echo off

for /f "delims=" %%a in ('call readini.bat /s OutputVar /i rob "C:\Users\Administrator\Desktop\iot\setnb.ini"') do (
    set val=%%a
)

echo %val%%computername%

set name=%val%%computername%
set srvname=%val%%computername%
reg add “HKEY_LOCAL_MACHINESystemCurrentControlSetControlComputerNameActiveComputerName” /v ComputerName /t reg_sz /d %name% /f
reg add “HKEY_LOCAL_MACHINESystemCurrentControlSetServicesTcpipParameters” /v “NV Hostname” /t reg_sz /d %name% /f
reg add “HKEY_LOCAL_MACHINESystemCurrentControlSetServicesTcpipParameters” /v Hostname /t reg_sz /d %name% /f
reg add “HKEY_LOCAL_MACHINESYSTEMControlSet001servicesLanmanServerParameters” /v srvcomment  /t reg_sz /d %srvname% /f


pause
