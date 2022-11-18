
param (

    $direccion = ""

)
	 
	 $counter = 1
do {
     $x = ping -w 1 -n 1 $direccion$counter
	 echo $x > D:/ping.txt
	 $info = Get-Content("D:/ping.txt")
	 
	 $info = $info[5]
	 
	 if ($info -eq "    Paquetes: enviados = 1, recibidos = 1, perdidos = 0"){
			Write-Host( $direccion + $counter ) -ForegroundColor DarkGreen
        }
		
     $counter += 1
} until ($counter -gt 254)



