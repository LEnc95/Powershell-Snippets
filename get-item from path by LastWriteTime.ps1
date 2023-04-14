#$fp = "C:\Program Files\Microsoft Forefront Identity Manager\2010\Synchronization Service\MaData\Workday MA\*.csv"
#$fpa = "C:\Program Files\Microsoft Forefront Identity Manager\2010\Synchronization Service\MaData\Workday MA\Archive\*.*"
#$hours_to_check=$(Get-Date).AddHours(-2)
#Get-Item C:\Temp\*.* | Where-Object { $_.LastWriteTime -gt $hours_to_check } | ForEach-Object {
#   Write-Host "File Name:" $_.Name "LastWriteTime:" $_.LastWriteTime
#}

$fp = "C:\Program Files\Microsoft Forefront Identity Manager\2010\Synchronization Service\MaData\Workday MA\*.csv"
$fpa = "C:\Program Files\Microsoft Forefront Identity Manager\2010\Synchronization Service\MaData\Workday MA\Archive\*.*"
$hours_to_check=$(Get-Date).AddHours(-2)
Get-Item $fp | Where-Object { $_.LastWriteTime -gt $hours_to_check } | ForEach-Object {
   $_.Name
}
Get-Item $fpa | Where-Object { $_.LastWriteTime -gt $hours_to_check } | ForEach-Object {
    $_.Name
 }