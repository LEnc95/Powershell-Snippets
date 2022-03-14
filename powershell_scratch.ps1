<# Powershell scratch #>
$mypath = $MyInvocation.MyCommand.Path
Write-Output "Path of the script : $mypath"
$parentDir = Split-Path $mypath -Parent

$inFileName = "inFile.txt"
$inFile = Get-Content -Path "$parentDir\$inFileName"
$inFile
