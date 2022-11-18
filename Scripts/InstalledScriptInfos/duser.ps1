
param (

    $useracount = ""

)

Get-ADUser $useracount   -Properties * 
#$user = Get-ADUser $useracount -Properties * 
#wh $user








