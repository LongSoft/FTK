@echo off
echo Creating full BIOS backup.
if exist backup.bin del backup.bin
fpt -d backup.bin
if errorlevel 1 GOTO ERR_BCK
goto EXIT
:ERR_BCK
echo Error occured during backup phase. Exiting.
:EXIT
echo Thank you for using FTK. Have a nice day.