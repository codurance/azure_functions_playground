call refreshenv
(echo.) | func run echo
echo.
curl "http://localhost:7071/api/echo?badrequests"
echo.
if errorlevel 1 (
   exit /b %errorlevel%
)
