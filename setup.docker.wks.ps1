#Requires -RunAsAdministrator
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
Write-Host "Installing Git Client"
choco install git
Write-Host "Installing Visual Studio Code"
choco install vscode
Write-Host "Installing Docker Desktop"
choco install docker-desktop

git clone "https://azuredevops.septeo.fr/SECIB/Workshop/_git/Docker"