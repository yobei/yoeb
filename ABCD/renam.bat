@echo off
setlocal enabledelayedexpansion

rem ��ȡ����ı��
set /p "number=�������ţ�"

rem �����µļ������
set "newname=x-%number%"

rem �޸ļ������
wmic computersystem where name="%COMPUTERNAME%" call rename name="%newname%" >nul

rem ���������
rem shutdown /r /t 0