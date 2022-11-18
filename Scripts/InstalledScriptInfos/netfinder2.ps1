param (

    $direccion = ""

)
	 
	 $counter = 1
wh ("escaneando la red ")

do {
     isup $direccion$counter vf
     $counter += 1
} until ($counter -gt 254)