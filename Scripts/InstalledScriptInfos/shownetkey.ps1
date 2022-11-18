
param (

    $red = ""
)

$pass = netsh wlan show profile $red key=clear | findstr "onte"
Write-Host($pass) -ForegroundColor Cyan

