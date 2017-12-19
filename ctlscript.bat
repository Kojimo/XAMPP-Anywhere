@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\XAMPPA\hypersonic\scripts\ctl.bat (start /MIN /B D:\XAMPPA\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\XAMPPA\ingres\scripts\ctl.bat (start /MIN /B D:\XAMPPA\ingres\scripts\ctl.bat START)
if exist D:\XAMPPA\mysql\scripts\ctl.bat (start /MIN /B D:\XAMPPA\mysql\scripts\ctl.bat START)
if exist D:\XAMPPA\postgresql\scripts\ctl.bat (start /MIN /B D:\XAMPPA\postgresql\scripts\ctl.bat START)
if exist D:\XAMPPA\apache\scripts\ctl.bat (start /MIN /B D:\XAMPPA\apache\scripts\ctl.bat START)
if exist D:\XAMPPA\openoffice\scripts\ctl.bat (start /MIN /B D:\XAMPPA\openoffice\scripts\ctl.bat START)
if exist D:\XAMPPA\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\XAMPPA\apache-tomcat\scripts\ctl.bat START)
if exist D:\XAMPPA\resin\scripts\ctl.bat (start /MIN /B D:\XAMPPA\resin\scripts\ctl.bat START)
if exist D:\XAMPPA\jboss\scripts\ctl.bat (start /MIN /B D:\XAMPPA\jboss\scripts\ctl.bat START)
if exist D:\XAMPPA\jetty\scripts\ctl.bat (start /MIN /B D:\XAMPPA\jetty\scripts\ctl.bat START)
if exist D:\XAMPPA\subversion\scripts\ctl.bat (start /MIN /B D:\XAMPPA\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\XAMPPA\lucene\scripts\ctl.bat (start /MIN /B D:\XAMPPA\lucene\scripts\ctl.bat START)
if exist D:\XAMPPA\third_application\scripts\ctl.bat (start /MIN /B D:\XAMPPA\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\XAMPPA\third_application\scripts\ctl.bat (start /MIN /B D:\XAMPPA\third_application\scripts\ctl.bat STOP)
if exist D:\XAMPPA\lucene\scripts\ctl.bat (start /MIN /B D:\XAMPPA\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\XAMPPA\subversion\scripts\ctl.bat (start /MIN /B D:\XAMPPA\subversion\scripts\ctl.bat STOP)
if exist D:\XAMPPA\jetty\scripts\ctl.bat (start /MIN /B D:\XAMPPA\jetty\scripts\ctl.bat STOP)
if exist D:\XAMPPA\hypersonic\scripts\ctl.bat (start /MIN /B D:\XAMPPA\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\XAMPPA\jboss\scripts\ctl.bat (start /MIN /B D:\XAMPPA\jboss\scripts\ctl.bat STOP)
if exist D:\XAMPPA\resin\scripts\ctl.bat (start /MIN /B D:\XAMPPA\resin\scripts\ctl.bat STOP)
if exist D:\XAMPPA\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\XAMPPA\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\XAMPPA\openoffice\scripts\ctl.bat (start /MIN /B D:\XAMPPA\openoffice\scripts\ctl.bat STOP)
if exist D:\XAMPPA\apache\scripts\ctl.bat (start /MIN /B D:\XAMPPA\apache\scripts\ctl.bat STOP)
if exist D:\XAMPPA\ingres\scripts\ctl.bat (start /MIN /B D:\XAMPPA\ingres\scripts\ctl.bat STOP)
if exist D:\XAMPPA\mysql\scripts\ctl.bat (start /MIN /B D:\XAMPPA\mysql\scripts\ctl.bat STOP)
if exist D:\XAMPPA\postgresql\scripts\ctl.bat (start /MIN /B D:\XAMPPA\postgresql\scripts\ctl.bat STOP)

:end

