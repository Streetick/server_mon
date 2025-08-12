Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Media

$form = New-Object System.Windows.Forms.Form
$form.Text = "Вопрос"
$form.Width = 300
$form.Height = 150
$form.StartPosition = "CenterScreen"
$form.ControlBox = $false  # Отключаем крестик

$label = New-Object System.Windows.Forms.Label
$label.Text = "Вы согласны, что вы гей?"
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(50,20)
$form.Controls.Add($label)

$btnYes1 = New-Object System.Windows.Forms.Button
$btnYes1.Text = "Да"
$btnYes1.Location = New-Object System.Drawing.Point(50,60)
$btnYes1.Add_Click({
    [System.Media.SystemSounds]::Asterisk.Play()
    $form.Close()
})
$form.Controls.Add($btnYes1)

$btnYes2 = New-Object System.Windows.Forms.Button
$btnYes2.Text = "Да"
$btnYes2.Location = New-Object System.Drawing.Point(150,60)
$btnYes2.Add_Click({
    [System.Media.SystemSounds]::Asterisk.Play()
    $form.Close()
})
$form.Controls.Add($btnYes2)

$form.Topmost = $true
$form.Add_Shown({$form.Activate()})
[void]$form.ShowDialog()
