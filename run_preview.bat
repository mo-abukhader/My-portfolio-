@echo off
echo Starting local preview server for portfolio...
where python >nul 2>nul
if %errorlevel% equ 0 (
    echo Python is installed. Starting http.server on port 8000...
    start "" http://localhost:8000/
    python -m http.server 8000
) else (
    echo Python not found. Opening index.html directly in Chrome...
    start "" "chrome.exe" "%~dp0index.html" || start "" "index.html"
)
