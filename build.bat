call refreshenv
(echo.) | func run echo
echo.
curl -f "http://localhost:7071/api/echo?name=world"

if errorlevel 1 (
   exit /b %errorlevel%
)
echo.