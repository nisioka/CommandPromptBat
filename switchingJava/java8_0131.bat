@echo off
setlocal
powershell start-process switchingJava.bat jdk1.8.0_131 -verb runas
pauseendlocal

