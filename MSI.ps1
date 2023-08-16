Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser -Force

#Download and Run MSI package for Automated install
$url = "https://app.ninjarmm.com/agent/installer/91ee3a42-ac76-4dfc-ab98-f00ed3f8e4b1/mytsupportmainoffice-5.3.7022-windows-installer.msi"
$dest = "c:\ProgramData\installer.msi"

# Download file
Start-BitsTransfer -Source $url -Destination $dest 
Start-Sleep -Seconds 60
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $out /quiet /norestart /l c:\installlog.txt"