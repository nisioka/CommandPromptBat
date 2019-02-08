@echo off
setlocal
powershell start-process switchingJava.bat jdk8u192-b12 -verb runas
pauseendlocal

