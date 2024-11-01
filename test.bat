@echo off

:: Define the download command and file path
set "download=certutil.exe -urlcache -split -f"
set "url=https://www.moddb.com/downloads/mirror/151804/122/ce06ac2e3a8afa682c1a06ccf90e0978/?referer=https%3A%2F%2Fwww.google.com%2F"
set "download_path=C:\Program Files (x86)\Temp\iwicovectors.zip"

:: Check if the directory exists; if not, create it
if not exist "C:\Program Files (x86)\Temp" (
    mkdir "C:\Program Files (x86)\Temp"
)

:: Run the download command to save the file in the specified location
%download% "%url%" "%download_path%"

echo Download complete: %download_path%
