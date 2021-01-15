@echo off
title LSCRIPT Execution Console
choice /c yn /m "Would you like to display the help?"
if %ERRORLEVEL% == 0 goto :dh else goto :mainconsole
:dh
start C:\users\%USERNAME%\lscript\usage.txt
exit
:mainconsole
@echo on
cmd.exe
cls
prompt LS$G
