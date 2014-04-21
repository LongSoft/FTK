@echo off
if not exist bios.bin goto ERR_BNF
echo Creating BIOS backup.
if exist backup.bin del backup.bin
fpt -d backup.bin
if errorlevel 1 goto ERR_BCK
echo Copying all data from BIOS backup to bios.bin.
fd44cpr backup.bin bios.bin
if errorlevel 2 goto ERR_CPR
echo Erasing and flashing BIOS from modified bios.bin.
fpt -rewrite -f bios.bin
if errorlevel 1 goto ERR_FLS
goto EXIT
:ERR_BNF
echo File bios.bin not found. Please copy your BIOS image file to current folder and rename it to bios.bin.
goto EXIT
:ERR_BCK
echo Error occured during backup phase. Exiting.
goto EXIT
:ERR_CPR
echo Error occured during copy phase. Exiting.
goto EXIT
:ERR_FLS 
echo Error occured during flash phase.
echo Please run restore.bat to restore BIOS from backup.bin.
:EXIT
echo Thank you for using FTK. Have a nice day.