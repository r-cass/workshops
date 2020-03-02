#Requires -RunAsAdministrator
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
Write-Host "Installing Git Client"
choco install git
Write-Host "Installing Visual Studio Code"
choco install vscode
Write-Host "Installing Docker Desktop"
choco install docker-desktop
Write-Host Prompting Visual Studio Code for git cloning
Start-Process -FilePath $env:stSystemRoot"\System32\cmd.exe" -ArgumentList "/c start /b code --open-url -- vscode://vscode.git/clone?url=https://azuredevops.septeo.fr/SECIB/Workshop/_git/Docker"