@echo off
:loop
color 2
set /a a+=1
color 5
mode 1000
start sys1.vbs
echo Starting Process killing...
sc config ClassM_Client_Service start=demend
sc stop ClassM_Client_Service
NET STOP ClassM_Client_Service
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
taskkill -F -T /PID ClassM_Client_Service.exe
echo Process Killing Complete!
goto loop
