
@echo off

for /f "delims=" %%a in ('call readini.bat /s OutputVar /i rob "setnb.ini"') do (
    set val=%%a
)


set name=%val%%computername%
set srvname=%val%%computername%
REG ADD HKLM\System\CurrentControlSet\Control\ComputerName\ActiveComputerName /v "ComputerName" /t reg_sz /d %name% /f

REG ADD HKLM\System\CurrentControlSet\Services\Tcpip\Parameters    /v "Hostname"    /t reg_sz    /d %name% /f
REG ADD HKLM\SYSTEM\ControlSet001\services\LanmanServer\Parameters /v "srvcomment"  /t reg_sz /d %srvname% /f

REG ADD HKLM\System\CurrentControlSet\Services\Tcpip\Parameters    /v "NV Hostname" /t reg_sz /d %name% /f
REG ADD HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters        /v "NV Hostname" /t REG_SZ /d %name% /f

