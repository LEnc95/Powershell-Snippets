<# Powershell scratch #>
<#        
    .SYNOPSIS

    .DESCRIPTION

    .NOTES
    ========================================================================
         Windows PowerShell Source File 
         Created with Love
         
         NAME: 
         
         AUTHOR: Encrapera, Luke 
         DATE  : 0/0/2021
         
         COMMENT:  
         
    ==========================================================================
#>
$mypath = $MyInvocation.MyCommand.Path
Write-Output "Path of the script : $mypath"
$parentDir = Split-Path $mypath -Parent

$inFileName = "inFile.txt"
$inFile = Get-Content -Path "$parentDir\$inFileName"
$inFile
