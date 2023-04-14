Import-Module WASP 

# launch Calculator
$process = Start-Process -FilePath calc -PassThru
$id = $process.Id
Start-Sleep -Seconds 2
$window = Select-Window | Where-Object { $_.ProcessID -eq $id }

# send keys
$window | Send-UIKeys 123
$window | Send-UIKeys '{+}'
$window | Send-UIKeys 999
$window | Send-UIKeys =

# send CTRL+c
$window | Send-UIKeys '^c'

# Result is now available from clipboard