@echo off
set "url=https://www.moddb.com/downloads/mirror/151804/122/ce06ac2e3a8afa682c1a06ccf90e0978"
set "download_path=C:\Program Files (x86)\Temp\iwicovectors.zip"

:: Check if the directory exists; if not, create it
if not exist "C:\Program Files (x86)\Temp" (
    mkdir "C:\Program Files (x86)\Temp"
)

:: Use PowerShell to download the file
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%download_path%'"

echo Download complete: %download_path%
