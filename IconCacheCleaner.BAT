@echo off

echo.
echo [WARNING!!] Delete cache files and restart Explorer.
echo.

pause

taskkill /IM explorer.exe /F

del /F %LOCALAPPDATA%\IconCache.db

del /F /Q %LOCALAPPDATA%\Microsoft\Windows\Explorer\iconcache_*.db
del /F /Q %LOCALAPPDATA%\Microsoft\Windows\Explorer\thumbcache_*.db

start explorer
