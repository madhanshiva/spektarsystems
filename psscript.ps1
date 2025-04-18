# Set execution policy to bypass for this session
Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey if not already installed
if (!(Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    Write-Output "Installing Chocolatey..."
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

# Install Python silently
choco install python --yes --no-progress

# Install Visual Studio Code silently with a desktop icon
choco install vscode.install --yes --no-progress --params "/MERGETASKS=!runcode"

# Install Git silently
choco install git --yes --no-progress
