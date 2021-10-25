Import-Module ActiveDirectory

$ou = "OU=Users,OU=From,DC=My,DC=Organization,DC=com"

$all = get-aduser -Filter * -SearchBase $ou -properties Name, PasswordNeverExpires | where {
$_.passwordNeverExpires -eq "true" } | Select-Object Name,Enabled | Sort-Object Enabled -Descending

####################

$enabled_users = 0
$all_users = ($all).count

foreach ($i in $all){
    Write-Output $i
    if ($i.Enabled){
        $enabled_users++
     }
}

Write-Output ""
Write-Output "All accounts:`t`t$all_users"
Write-Output "Enabled accounts:`t$enabled_users"
