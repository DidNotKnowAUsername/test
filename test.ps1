New-Item -Path "c:\" -Name "applications" -ItemType "directory"
New-Item -Path 'C:/applications' -Name "setup.exe" -ItemType file 

powershell.exe Invoke-WebRequest -Uri https://lugspp5gakisusawinvm.blob.core.windows.net/applicaties/Setup.exe -OutFile "C:\applications\setup.exe"
 