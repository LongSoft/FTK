@echo off
pushd %~dp0
if exist me.bin goto UPD
echo File me.bin not found.
goto EXIT
:UPD
echo Updating ME firmware from me.bin
fwupdlcl -f me.bin
:EXIT
echo Thank you for using FTK. Have a nice day.
pause