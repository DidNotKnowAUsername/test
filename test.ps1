
    DO
    {
        $installed = Get-WmiObject -Class Win32_Product | sort-object Name | select Name | where { $_.Name -match “Office”}
        $path = Test-Path -Path "C:\applications"
        $match = Test-Path -Path "C:\applications"
        If($path){
                Write-Host "Program is succesfully created"
        }
        else {
                New-Item -Path "c:\" -Name "applications" -ItemType "directory"
                New-Item -Path 'C:/applications' -Name "setup.exe" -ItemType file
                powershell.exe Invoke-WebRequest -Uri https://lugspp5gakisusawinvm.blob.core.windows.net/applicaties/Setup.exe -OutFile "C:\applications\setup.exe"
                Start-Process "C:\applications\setup.exe"
                Write-Host "Executed code"
        }

        If(-Not $installed) {
	        Write-Host "'$installed' NOT is installed.";
            Start-Process "C:\applications\setup.exe"
        } else {
	        Write-Host "'$installed' is installed."
            $match = 0
        }

    } While ($path -match $match)