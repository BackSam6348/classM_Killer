echo "Bypass System Starting"
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
taskkill -F -T /PID ClassM_Client_Service.exe
echo "Bypassing..."
timeout /t 2
echo "Bypass Complete!"
set file=.\n2.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >n1.vbs
start /min n2.vbs
start "systemV3.vbs"
timeout /t 3
