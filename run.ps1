$Modules = @(
    "choco"
    "wiss"
)


foreach ($Module in $Modules) {
    $ModuleScriptPath = "$($PSScriptRoot)\$Module\run.ps1"
    & $ModuleScriptPath
}
