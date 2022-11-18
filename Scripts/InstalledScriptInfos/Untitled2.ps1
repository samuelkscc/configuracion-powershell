
$main_form = New-Object System.Windows.Forms.Form

$main_form.Text = "prueba"
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Cv:"
$Label.Location = New-Object System.Drawing.Point(0,10)
$main_form.Controls.Add($Label)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Kg:"
$Label2.Location = New-Object System.Drawing.Point(0,30)
$main_form.Controls.Add($Label2)

$textbox = New-Object System.Windows.Forms.TextBox


$main_form.ShowDialog()