set file=.\n1.mp3
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >n1.vbs
start /min n1.vbs
@echo off
:A
mode 1000
taskkill /im ClassM_Client.exe
taskkill /im ClassM_Client_Service.exe
taskkill /im SysCtrl.exe
taskkill /im mvnc.exe
goto A
