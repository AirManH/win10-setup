:: @ means do not print the command
:: %~dp0 is path to current cmd script
@powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0run.ps1"
