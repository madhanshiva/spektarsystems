param(
    [string]$username,
    [string]$paswd,
    [string]$subscriptionId,
    [string]$tenantid
)

New-Item -Path "C:\VM_Setup_Transcript.log" -ItemType File

Start-Transcript -Path "C:\VM_Setup_Transcript.log" -Append

$userdetails = @()


$userdetails += "Username: $username", "Password: $paswd", "Subscription ID: $subscriptionId", "Tenant ID: $tenantid"

$publicDesktopPath = "C:\Users\Public\Desktop"
$path = Join-Path -path $publicDesktopPath -ChildPath userdetails.txt
#$filepath = New-Item -Path "$path\userdetails.txt" -ItemType File

if(!(test-path -Path $publicDesktopPath)){
    New-Item -Path $publicDesktopPath -ItemType Directory -Force
}
Set-Content $path -Value $userdetails 

Stop-Transcript


