$array1 = @()
$array2 = @()
$array1 += get-aduser -filter {UserPrincipalName -like "Luke.Encrapera@gianteagle.com"}
$array1 += get-aduser -filter {UserPrincipalName -like "Brian.Shavensky@gianteagle.com"}
$array1 += get-aduser -filter {UserPrincipalName -like "david.karem@gianteagle.com"}
$array2 += "Luke.Encrapera@gianteagle.com", "Brian.Shavensky@gianteagle.com"


$array1 | ForEach-Object {
    $_ | Where-Object {$_.UserPrincipalName -notin $array2}
}