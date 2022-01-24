
Get-CimInstance -Classname Win32_ComputerSystem | Out-File -FilePath .\Compinfo$env:UserName.txt -Append
"" | Out-File -FilePath .\Compinfo$env:UserName.txt -Append -NoNewline
Get-CimInstance -Classname Win32_OperatingSystem | Out-File -FilePath .\Compinfo$env:UserName.txt -Append

"IP Address" | Out-File -FilePath .\Compinfo$env:UserName.txt -Append 
ipconfig /all | findstr IPv4 | Out-File -FilePath .\Compinfo$env:UserName.txt -Append
"MAC Address" | Out-File -FilePath .\Compinfo$env:UserName.txt -Append 
ipconfig /all | findstr Physical | Out-File -FilePath .\Compinfo$env:UserName.txt -Append
"GPU " | Out-File -FilePath .\Compinfo$env:UserName.txt -Append -NoNewline
Get-WmiObject win32_VideoController | findstr /b Name | Out-File -FilePath .\Compinfo$env:UserName.txt -Append
