@echo off
pushd %~dp0
if exist backup.bin goto FLASH_FULL
if exist biosbck.bin goto FLASH_BIOS
echo File backup.bin or biosbck.bin not found. Exiting.
goto EXIT
:FLASH_FULL
echo Erasing and restoring BIOS from backup.bin.
fptw -rewrite -f backup.bin
if errorlevel 1 goto ERR_FLASH
goto EXIT
:FLASH_BIOS
echo Erasing and restoring BIOS region from biosbck.bin.
fptw -rewrite -bios -f biosbck.bin
if errorlevel 1 goto ERR_FLASH
goto EXIT
:ERR_FLASH
echo Error occured during flash phase. Exiting.
:EXIT
echo Thank you for using FTK. Have a nice day.
pause