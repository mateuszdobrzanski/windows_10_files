# create, import and delete apps association
dism /online /Export-DefaultAppAssociations:"%UserProfile%\Desktop\AppAssociations.xml"
dism /online /Import-DefaultAppAssociations:"%UserProfile%\Desktop\AppAssociations.xml"
Remove-Item -Path C:\Users\$env:UserName\Desktop\AppAssociations.xml