cd C:\

New-Item -Path 'C:\autodoc' -ItemType Directory

cd C:\autodoc\

$URL = “https://github.com/PowerShell/PowerShell/releases/download/v7.4.1/PowerShell-7.4.1-win-x64.msi”

$Path=”C:\autodoc\PowerShell-7.msi”

Invoke-WebRequest -URI $URL -OutFile $Path

Start-Process C:\autodoc\PowerShell-7.msi -ArgumentList "/quiet /passive ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1"