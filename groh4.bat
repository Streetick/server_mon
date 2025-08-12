@echo off
:loop
start "" /min "%TEMP%\audio1.mp3" & timeout /t 157 /nobreak > nul & goto loop