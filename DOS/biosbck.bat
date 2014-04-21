@echo off
echo Creating BIOS region backup.
if exist biosbck.bin del biosbck.bin
fpt -bios -d biosbck.bin
if errorlevel 1 GOTO ERR_BCK
goto EXIT
:ERR_BCK
echo Error occured during backup phase. Exiting.
:EXIT
echo Thank you for using FTK. Have a nice day.