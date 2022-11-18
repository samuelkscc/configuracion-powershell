param (
	$text = "",
	$color = ""
)

if ($color -eq ""){
	Write-Host $text -foregroundcolor cyan	
}else{
	Write-Host $text -foregroundcolor $color
}