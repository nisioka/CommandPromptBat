@echo off
setlocal
powershell start-process switchingJava.bat XXX -verb runas
pauseendlocal

