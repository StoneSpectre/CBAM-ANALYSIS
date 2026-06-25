@echo off
cd /d "%~dp0"

echo ==========================================
echo    Auto-Syncing to GitHub (Every 5 mins)
echo ==========================================
echo.

:loop
echo [%time%] Checking for changes...

:: Add all changes
git add .

:: Commit changes
git commit -m "Auto sync: local changes" >nul 2>&1

:: Push to GitHub
git push origin main

echo.
echo [%time%] Sync complete. Waiting 5 minutes...
echo (You can safely close this window to stop auto-syncing)
echo.

:: Wait 300 seconds (5 minutes)
timeout /t 300 /nobreak >nul

goto loop
