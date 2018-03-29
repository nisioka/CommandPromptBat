@echo off
setlocal

set java_dir=C:\Program Files\Java\
set jdk_path=%java_dir%%1
set latest_name=latest
set latest_path=%java_dir%%latest_name%
cd %java_dir%
IF EXIST "%latest_path%" (rmdir "%latest_path%") else echo "do not found symlink."
mklink /D "%latest_path%" "%jdk_path%"
@rem pause
endlocal

