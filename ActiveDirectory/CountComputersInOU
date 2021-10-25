Import-Module ActiveDirectory

$ou = "OU=Computers,OU=From,DC=My,DC=Organization,DC=com"

$all_computers = Get-ADComputer -SearchBase "$ou" -Filter * | Measure-Object
$dissabled_computers = Get-ADComputer -SearchBase "$ou" -Filter {Enabled -eq $false} | Measure-Object

$count_all = ($all_computers).count
$count_disabled = ($dissabled_computers).count
$count_active = $count_all - $count_disabled


###############################################################


Write-Output "All computers:`t`t $count_all"
Write-Output "Active computers:`t $count_active"
Write-Output "Disabled computers:`t $count_disabled"
