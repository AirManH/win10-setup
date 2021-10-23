# Format with Edit-DTWBeautifyScript .\utils.ps1 -NewLine LF -IndentType FourSpaces


function Check-App {

    param (
        $Name
    )

    return [bool](Get-Command `
             -CommandType Application `
             -Name $Name `
             -ErrorAction SilentlyContinue)
}


Export-ModuleMember -Function *
