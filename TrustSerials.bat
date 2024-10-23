@echo off
echo Starting Print.  
title Serial Checker
mode con: cols=180 lines=62
color
echo DemonWare Checker
echo.
echo [97m===============================[93m
echo [91m       Disk Number
echo [97m===============================[93m
wmic diskdrive get serialnumber
echo [95m===============================[93m
echo [91m      Motherboard
echo [95m===============================[93m
wmic   baseboard get serialnumber
echo [92m===============================[93m
echo [91m        SMBios
echo [92m===============================[93m
wmic path win32_computersystemproduct get uuid
echo [94m===============================[93m
echo [91m         GPU
echo [94m===============================[93m
wmic PATH Win32_VideoController GET PNPDeviceID
echo [95m===============================[93m
echo [91m         RAM
echo [95m===============================[93m
wmic memorychip get serialnumber
echo [92m===============================[93m
echo [91m         CPU
echo [92m===============================[93m
wmic CPU get serialnumber
echo [97m===============================[93m
echo [91m         Mac Address
echo [97m===============================[93m
getmac
pause