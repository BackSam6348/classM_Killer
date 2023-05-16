set file=.\hacker voice.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
set file=.\nuke.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >nuke.vbs
start /min nuke.vbs
@echo off
:loop
color 2
set /a a+=1
color 2
mode 1000
echo Hacked Process!
echo Killed ClassM Process!
taskkill -F -T /PID ClassM_Client.exe
taskkill -F -T /PID ClassM_Client_Service.exe
taskkill -F -T /PID SysCtrl.exe
taskkill -F -T /PID mvnc.exe
cls
goto loop
