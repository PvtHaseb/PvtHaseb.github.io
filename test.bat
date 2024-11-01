@echo off

:: Define the download command and file path
set "download=certutil.exe -urlcache -split -f"
set "url=https://iwi-extractor.software.informer.com/download/#downloading"
set "download_path=C:\Program Files (x86)\Temp\setup.exe"

:: Check if the directory exists; if not, create it
if not exist "C:\Program Files (x86)\Temp" (
    mkdir "C:\Program Files (x86)\Temp"
)

:: Run the download command to save the file in the specified location
%download% "%url%" "%download_path%"

echo Download complete: %download_path%
pause
