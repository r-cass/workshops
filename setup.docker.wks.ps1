#Requires -RunAsAdministrator
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
Write-Host "Installing Git Client"
choco install git
Write-Host "Installing Visual Studio Code"
choco install vscode
Write-Host "Installing Docker Desktop"
choco install docker-desktop

[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms")|Out-Null
$dlg = New-Object System.Windows.Forms.FolderBrowserDialog
$dlg.Description = "Select directory for cloning git repository";
$dlg.RootFolder = "MyComputer"

if ($dlg.ShowDialog() -eq "OK") {
    Start-Process -WorkingDirectory $test.SelectedPath -FilePath $env:SystemRoot"\System32\cmd.exe" -ArgumentList ["/c echo Cloning git repository into %CD% && git clone https://azuredevops.septeo.fr/SECIB/Workshop/_git/Docker && explorer %CD%\Docker && exit"];
}
