# See also https://chocolatey.org/
Import-Module -Name "$($PSScriptRoot)\choco.psm1" -ErrorAction Stop
Import-Module -Name "$($PSScriptRoot)\choco-config.psm1" -ErrorAction Stop

Install-Choco
Install-ChocoApps $choco_apps_base
