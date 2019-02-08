@echo off
setlocal
powershell start-process switchingJava.bat jdk-11.0.1+13 -verb runas
pauseendlocal

