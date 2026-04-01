@echo off
set /P "m=How Many Minutes Till ShutDown: "
set /A "s=m * 60"
shutdown -s -t %s%
echo:
echo Your PC will shut off in %m% minutes
timeout /t 5 /nobreak > nul