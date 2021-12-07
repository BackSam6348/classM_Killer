@echo off
:loop
color 2
set /a a+=1
color 5
mode 1000
echo Hacked Process!
sc config ClassM_Client_Service start=demend
sc stop ClassM_Client_Service
NET STOP ClassM_Client_Service
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
taskkill -F -T /PID ClassM_Client_Service.exe
goto loop
