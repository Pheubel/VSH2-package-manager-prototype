@ECHO OFF
powershell -NoLogo -NoProfile -ExecutionPolicy ByPass -Command "& """%~dp0getDependencies.ps1""""
EXIT /B %ERRORLEVEL%