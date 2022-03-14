$p = 1..100;
$p | ForEach-Object {
    Start-Sleep -m 100 #Replace with your action
    Write-Progress -Activity "Process Started" -Status "Total items processed: $_" -PercentComplete $_
    } 


<#
    function trackWork {
    param (
        [String]$activity,
        [String]$status,
        [Array]$array
    )
    $array | ForEach-Object {
        Start-Sleep -m 100 #Replace with your action
        Write-Progress -Activity "$($activity)" -Status "$($status): $_" -PercentComplete $($_)
        }
    
}
trackWork("Hello","World",$p)
#>