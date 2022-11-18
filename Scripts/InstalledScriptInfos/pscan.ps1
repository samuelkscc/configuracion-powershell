 

param (

    $direccion = "",
    $puerto = "",
    $opciones

)

if ($direccion -ne ""){ 
    if ($puerto -ne ""){
         if ($opciones -eq "vv"){
            Write-Host("Scaning ") -NoNewline -ForegroundColor DarkYellow
            Write-Host($direccion) -NoNewline -ForegroundColor DarkYellow
            Write-Host(":") -NoNewline -ForegroundColor DarkYellow
            Write-Host($port) -ForegroundColor DarkYellow

            $info = Test-NetConnection $direccion  -port $puerto -WarningAction SilentlyContinue
            if ($info.tcptestsucceeded -eq $true){
                 Write-Host $direccion $puerto -ForegroundColor Cyan -separator " <OPEN> "
            }elseif ($info.tcptestsucceeded -eq $false){
                Write-Host $direccion $puerto -ForegroundColor DarkRed -separator " <CLOSE> "
            }else{Write-Host("Error en el proceso.") -ForegroundColor DarkRed}
         }elseif ($opciones -eq "v"){
            $info = Test-NetConnection $direccion  -port $puerto -WarningAction SilentlyContinue
            if ($info.tcptestsucceeded -eq $true){
                 Write-Host $direccion $puerto -ForegroundColor Cyan -separator " <OPEN> "
            }elseif ($info.tcptestsucceeded -eq $false){
                Write-Host $direccion $puerto -ForegroundColor DarkRed -separator " <CLOSE> "
            }else{Write-Host("Error en el proceso.") -ForegroundColor DarkRed}
         }else{
            $info = Test-NetConnection $direccion  -port $puerto -WarningAction SilentlyContinue
            if ($info.tcptestsucceeded -eq $true){
                 Write-Host ("Y") -ForegroundColor Cyan 
            }elseif ($info.tcptestsucceeded -eq $false){
                Write-Host ("N") -ForegroundColor DarkRed 
            }else{Write-Host("Error en el proceso.") -ForegroundColor DarkRed}
         }
    }else{
    Write-Host("No es posible identificar la direccion o puerto de destino.") -ForegroundColor DarkRed
    Write-Host("Pruebe con <pscan direccion puerto modo(opcional nada, v o vv )>") -ForegroundColor Cyan
    }
}else{
    Write-Host("No es posible identificar la direccion o puerto de destino.") -ForegroundColor DarkRed
    Write-Host("Pruebe con <pscan direccion puerto modo(opcional nada, v o vv )>") -ForegroundColor Cyan
}


 