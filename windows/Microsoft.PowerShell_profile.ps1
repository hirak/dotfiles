
# Load posh-git example profile
. 'C:\Users\Hiraku\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

$Env:Path = [string]::Join(';', @(
    "C:\usr\_bin\"
    "C:\Windows\System32"
    "C:\Windows"
    "C:\Program Files\Oracle\VirtualBox"
    "C:\Windows\System32\WindowsPowerShell\v1.0\"
    "C:\HashiCorp\Vagrant\bin"
    "C:\Ruby200\bin"
    "C:\Chocolatey\bin"
    "C:\usr\strawberry\perl\bin\"
    "C:\usr\node\"
    "C:\Users\Hiraku\AppData\Roaming\npm\"
    "C:\HaxeToolkit\haxe\"
    "C:\HaxeToolkit\neko\"
))

Set-Location $HOME
Import-Csv $HOME\.posh_history.csv | Add-History

function prompt {
    Export-Csv $HOME\.posh_history.csv -InputObject (Get-History)[-1] -Append

    Write-Host "[" -nonewline
    Write-Host $Env:USERNAME -nonewline -foregroundcolor blue
    Write-Host ":" -nonewline
    Write-Host ([string]$pwd).Replace($HOME, "~") -nonewline -foregroundcolor green
    Write-Host "]" -nonewline
    $realLASTEXITCODE = $LASTEXITCODE

    # Reset color, which can be messed up by Enable-GitColors
    $Host.UI.RawUI.ForegroundColor = $GitPromptSettings.DefaultForegroundColor

    Write-VcsStatus
    Write-Host ""

    $global:LASTEXITCODE = $realLASTEXITCODE
    "> "
}





