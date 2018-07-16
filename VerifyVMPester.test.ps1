Write-verbose "Installing required modules if needed..."
if (-not (Get-Module -Name "powershell-yaml" -ListAvailable )) {
    Write-verbose "Installing Powershell-YAML Module..."
    Install-Module -Name powershell-yaml -Force -Scope CurrentUser -SkipPublisherCheck
}
if (-not (Get-Module -Name "Pester" -ListAvailable )) {
    Write-verbose "Installing Pester module..."
    Install-Module -Name powershell-yaml -Force -Scope CurrentUser -SkipPublisherCheck
}

$status= Get-Service "DHCP Client"
$status.Status

if (-not (Get-Module -Name "Pester" -ListAvailable )) {
    Write-verbose "Installing Pester module..."
    Install-Module -Name Pester -Force -Scope CurrentUser -SkipPublisherCheck
   
}


Describe "Check whether a particular service is running"{
context "Check whether  DHCP Client is running"{
it "$ResourceGroupName is valid" {
$status.Status| Should be "Running"
}
}
}
