Add-Type -AssemblyName System.Speech

$requiredFiles = @(
    "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Trah3trahin_installer.exe",
    "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\groh4.bat",
    "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\question.ps1"
)

$missing = $false

foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missing = $true
        break
    }
}

if ($missing) {
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speak.Volume = 100
    $speak.Rate = 1
    $speak.Speak("«а попытку удалени€ —уперћегајнтивирус дев€ть тыс€ч по вашему адресу прилетит орешник!")
}
