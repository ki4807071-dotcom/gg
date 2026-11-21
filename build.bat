@echo off
setlocal
cd /d "%~dp0"

echo Building bimbimbambam for Windows...

where node >nul 2>nul
if errorlevel 1 (
    echo ERROR: Node.js is not installed or not on PATH.
    echo Install the LTS version from https://nodejs.org/
    goto :fail
)

where npm >nul 2>nul
if errorlevel 1 (
    echo ERROR: npm is not installed or not on PATH.
    goto :fail
)

where cargo >nul 2>nul
if errorlevel 1 (
    echo ERROR: Rust is not installed or Cargo is not on PATH.
    echo Install Rust from https://rustup.rs/ and restart this terminal.
    goto :fail
)

if not exist "node_modules\@tauri-apps\cli\tauri.js" (
    echo Installing project dependencies...
    call npm ci
    if errorlevel 1 goto :fail
)

echo Running Tauri production build...
call npm run tauri -- build
if errorlevel 1 goto :fail

echo.
echo Build completed. Windows installers are under:
echo src-tauri\target\release\bundle
pause
exit /b 0

:fail
echo.
echo Build failed. Install the Tauri Windows prerequisites:
echo https://v2.tauri.app/start/prerequisites/
pause
exit /b 1
