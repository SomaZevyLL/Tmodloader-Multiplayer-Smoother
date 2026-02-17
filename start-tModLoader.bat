@echo off
cd /D "%~dp0"
if exist "update-config.bat" call "update-config.bat"
start "" "LaunchUtils/busybox64.exe" bash "./LaunchUtils/ScriptCaller.sh" %*