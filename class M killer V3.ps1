echo "Bypass System Starting"
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
taskkill -F -T /PID ClassM_Client_Service.exe
timeout /t 2
echo "Run the Bypass System On"
start "systemV3.vbs"
timeout /t 3
