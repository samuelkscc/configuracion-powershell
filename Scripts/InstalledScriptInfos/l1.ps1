$ls = ls
$ls | format-table name > D:/ls.txt
$x = Get-Content("D:/ls.txt")
foreach ($name in $x) {
    Write-Host $name /b -ForegroundColor Cyan
}
