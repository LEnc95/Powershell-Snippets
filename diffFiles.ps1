$CurrentUsers = Get-Content -path "C:\Users\914476\OneDrive - Giant Eagle, Inc\Documents\GitHub\_infile\diffResults.csv"
$NewUsers = Get-Content -path "C:\Users\914476\OneDrive - Giant Eagle, Inc\Documents\GitHub\_infile\diffResults2.csv"
compare-object $currentUsers, $newUsers -includeequal