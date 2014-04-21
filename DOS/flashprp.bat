@echo off
if exist prepared.bin goto FLASH
echo File prepared.bin not found. Please copy your BIOS image file prepared with FD44Editor to current folder and rename it to prepared.bin.
goto EXIT
:FLASH
echo Erasing BIOS and flashing it from prepared.bin.
fpt -rewrite -f prepared.bin
if errorlevel 1 goto ERR_FLASH
goto EXIT
:ERR_FLASH
echo Error occured during flash phase. Exiting.
:EXIT
echo Thank you for using FTK. Have a nice day.