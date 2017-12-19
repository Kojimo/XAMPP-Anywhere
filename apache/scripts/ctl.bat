@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "D:\XAMPPA\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
"D:\XAMPPA\apache\bin\pv" -f -k httpd.exe -q
if not exist "D:\XAMPPA\apache\logs\httpd.pid" GOTO finish
del "D:\XAMPPA\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
