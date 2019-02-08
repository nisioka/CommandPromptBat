@echo off
setlocal
powershell start-process switchingJava.bat jdk-9.0.4 -verb runas
pauseendlocal

