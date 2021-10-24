Import-Module -Name "$($PSScriptRoot)\..\utils\utils.psm1" -ErrorAction Stop


function Install-Choco {
    if (Check-App -Name 'choco') {
        Write-Host "Skip, 'choco' is already installed."
    } else {
        Write-Host "Installing Chocolatey..."
        Powershell -NoProfile -ExecutionPolicy Bypass -Command `
             "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    }
}
Export-ModuleMember -Function Install-Choco


function Install-ChocoApps {

    param (
        [string[]]$Apps
    )

    if (Check-App -Name 'choco') {
        Write-Host "Installing Essential Applications by choco..."
        foreach ($App in $Apps) {
            Write-Host "Installing $App"
            choco install $App -y
        }
    } else {
        Write-Host "Can not find 'choco' command, skip the installation."
    }
}


Export-ModuleMember -Function Install-ChocoApps
