@echo off
setlocal
powershell start-process switchingJava.bat jdk-11 -verb runas
pauseendlocal

