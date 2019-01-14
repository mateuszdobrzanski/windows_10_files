# export start menu layout from current user
Export-StartLayout –path C:\Users\$env:UserName\Desktop\LayoutModification.xml

# copy start menu layout to .default user
# it only works for new windows profile
Import-StartLayout -LayoutPath C:\Users\$env:UserName\Desktop\LayoutModification.xml -MountPath $env:SystemDrive\

# delete layout file
Remove-Item -Path C:\Users\$env:UserName\Desktop\LayoutModification.xml