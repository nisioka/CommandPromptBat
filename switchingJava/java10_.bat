@echo off
setlocal
powershell start-process switchingJava.bat jdk-10 -verb runas
pauseendlocal

