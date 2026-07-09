@echo off
title Git Repository Updater
cls
echo ====================================================
echo             GIT AUTO-UPDATE UTILITY
echo ====================================================
echo.
echo Staging all changes...
git add .
echo.
echo Current git status:
git status -s
echo.
echo ====================================================
set /p commit_msg="Enter your commit message (or press Enter for 'Auto Update'): "
if "%commit_msg%"=="" set commit_msg=Auto Update
echo.
echo Committing changes...
git commit -m "%commit_msg%"
echo.
echo Pushing changes to GitHub (main branch)...
git push origin main
echo.
echo ====================================================
echo                     SUCCESS!
echo ====================================================
echo.
pause
