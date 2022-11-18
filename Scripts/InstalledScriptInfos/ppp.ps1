Write-Host "-------------------------------------------" -ForegroundColor Red
$cv = read-host "potencia del vehiculo (cv):"
Write-Host "-------------------------------------------" -ForegroundColor Red
$kg = read-host "peso del vehiculo (kg):"

$resultado = $cv / $kg
$resultado = $resultado / $kg
$resultado = $resultado * 1000

Write-Host "-------------------------------------------" -ForegroundColor Red
Write-Host "coeficiente ppp = "-ForegroundColor Green
Write-Host $resultado -ForegroundColor Cyan
Write-Host "-------------------------------------------" -ForegroundColor Red



