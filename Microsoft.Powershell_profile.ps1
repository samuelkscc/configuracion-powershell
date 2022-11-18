cls
sal ip "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\ip.ps1"
sal wh "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\wh.ps1"
sal conf "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\conf.ps1"
sal nscan "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\nscan.ps1"
sal isup "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\isup.ps1"
sal pscan "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\pscan.ps1"
sal smbguia "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\opensmbguia.ps1"
sal fpscan "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\FPscan.ps1"
sal pw1 "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\PW1.ps1"
sal gdomain "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\Gdomain.ps1"
sal p2 "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\prompt2.ps1"
sal duser "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\duser.ps1"
sal shownets "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\shownets.ps1"
sal shownetkey "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\shownetkey.ps1"
sal nf "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\netfinder.ps1"
sal nf2 "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\netfinder2.ps1"
sal l1 "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\l1.ps1"
sal powerof "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\poweroff.ps1"	



function show-logowin {
	$logo = get-content "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\logowin.txt"
	Foreach ($line in $logo){
		wh $line
	}
	return ""
}
function show-logod {
	$logo = get-content "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\logod.txt"
	Foreach ($line in $logo){
		wh $line
	}
	return ""
	}
function show-logop {
	$logo = get-content "C:\Users\samue\OneDrive\Documentos\WindowsPowerShell\Scripts\InstalledScriptInfos\logop.txt"
	Foreach ($line in $logo){
		wh $line DarkRed
	}
	return ""
}

show-logowin

function prompt {
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


function Set-Prompt {
    param ([ScriptBlock] $ScriptBlock)
    $null = New-Item -Path function:prompt -Value $ScriptBlock -Force
}

$fastprompt = {
	Write-Host ("╔") -nonewline -foregroundcolor DarkRed
	Write-Host ("[") -nonewline -foregroundcolor DarkRed
	$user1 = "Kira"
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

$pwdprompt = {
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
    	Write-Host "[" -nonewline -foregroundcolor DarkRed
	Write-Host $PWD -nonewline -foregroundcolor DarkYellow
	Write-Host  "]»" -nonewline -foregroundcolor DarkRed
	return " "
}

$shprompt = {
	Write-Host ("$") -nonewline -foregroundcolor cyan
	return " "
}

$cprompt = {
	Write-Host $PWD -nonewline -foregroundcolor white
	Write-Host  ">" -nonewline -foregroundcolor white
	return " "
}

set-prompt $shprompt



