# get names of network adapters
# Get-NetAdapter | format-list

# ethernet name
$adapterName = "Ethernet"

# turn off adapter
Disable-NetAdapter -Name $adapterName -Confirm:$false

echo "---=== Network adapter: $adapterName now is DISABLED ===---"

# wait (time in seconds); now is 10 mins
# Strt-Sleep -s 600
echo "---=== WAITING to enable ===---"
sleep -s 600

# turn on network adapter
Enable-NetAdapter -Name $adapterName -Confirm:$false
echo "---=== Network adapter: $adapterName now is ENABLED ===---"
