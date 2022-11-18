

function Prompt {
	
	Write-Host ("╔") -nonewline -foregroundcolor DarkRed

	Write-Host ("[") -nonewline -foregroundcolor DarkRed
	$user1 = $Env:USERNAME
	$Host1 = HOSTNAME
	Write-Host ($user1) -nonewline -foregroundcolor Cyan
	Write-Host ("@") -nonewline -foregroundcolor DarkRed
	Write-Host ($host1) -nonewline -foregroundcolor DarkBlue
	Write-Host ("]") -nonewline -foregroundcolor DarkRed

	Write-Host ("═") -nonewline -foregroundcolor DarkRed

	Write-Host ("[") -nonewline -foregroundcolor DarkRed
	Write-Host ("■") -nonewline -foregroundcolor Cyan
	Write-Host ("]") -foregroundcolor DarkRed

	Write-Host ("║") -foregroundcolor DarkRed
	Write-Host ("╚═")-nonewline -foregroundcolor DarkRed
	
    	Write-Host ("»") -nonewline -foregroundcolor DarkRed

	return " "
}

