@echo off
if "%~1"=="" (
  echo Please provide a commit message.
  exit /b 1
)

:: Debugging echo
echo Commit message is: %~1

:: Git commands
git add .
git status
git commit -m "%~1"
git push
