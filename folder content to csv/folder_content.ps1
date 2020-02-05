get-childitem "C:\Users\user.profile\Desktop\folder" -rec | where {!$_.PSIsContainer} |
select-object FullName, LastWriteTime, Length | export-csv -notypeinformation -Encoding UTF8 -delimiter '|' -path "C:\Users\user.profile\Desktop\output_file.csv"
