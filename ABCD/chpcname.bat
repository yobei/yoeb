
@echo off

for /f "delims=" %%a in ('call readini.bat /s OutputVar /i rob "C:\Users\Administrator\Desktop\iot\setnb.ini"') do (
    set val=%%a
)

echo %val%%computername%

set name=%val%%computername%
set srvname=%val%%computername%
reg add ˇ°HKEY_LOCAL_MACHINESystemCurrentControlSetControlComputerNameActiveComputerNameˇ± /v ComputerName /t reg_sz /d %name% /f
reg add ˇ°HKEY_LOCAL_MACHINESystemCurrentControlSetServicesTcpipParametersˇ± /v ˇ°NV Hostnameˇ± /t reg_sz /d %name% /f
reg add ˇ°HKEY_LOCAL_MACHINESystemCurrentControlSetServicesTcpipParametersˇ± /v Hostname /t reg_sz /d %name% /f
reg add ˇ°HKEY_LOCAL_MACHINESYSTEMControlSet001servicesLanmanServerParametersˇ± /v srvcomment  /t reg_sz /d %srvname% /f


pause
