@echo off
setlocal
set "SETUP=%TEMP%\Firefox115-%RANDOM%-%RANDOM%.exe"
echo Downloading Firefox ESR 115 from Mozilla...
certutil -urlcache -f "https://download.mozilla.org/?product=firefox-esr115-latest-ssl&os=win64&lang=ru" "%SETUP%"
if errorlevel 1 goto failed
echo Starting Firefox installer...
start "" "%SETUP%"
if errorlevel 1 goto failed
exit /b 0
:failed
echo Download or launch failed. Please send a photo of this window.
pause
exit /b 1
