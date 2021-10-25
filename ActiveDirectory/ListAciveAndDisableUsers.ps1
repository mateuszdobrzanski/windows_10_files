Import-Module ActiveDirectory

$ou = "OU=Users,OU=From,DC=My,DC=Organization,DC=com"

$allDisabldAccounts = (Search-ADAccount -AccountDisabled -SearchBase $ou).count
$all = (get-aduser -Filter * -SearchBase $ou).count
$allactive = $all - $allDisabldAccounts

####################

Write-Output "Disabled accounts:`t`t $allDisabldAccounts"
Write-Output "Active Accounts:`t`t $allactive"
Write-Output "`t`t`t`t`t`t --------"
Write-Output "All Accounts:`t`t`t $all"
