@echo off
cd /D "%~dp0"
if exist "update-config.bat" call "update-config.bat"
LaunchUtils/busybox-sh.bat ./start-tModLoaderServer.sh %*
