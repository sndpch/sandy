param([Parameter(Mandatory=$True,HelpMessage="Location name: NA, AU...")]
[string]$location
)
$iniContent = Get-IniContent "config.ini"
if ($location -eq $null)
{
    Write-Host "nThe the DC name/Id is empty, provide a valid DC ID."
}
elseif ($location -eq "NA")
{
    $msi_file = $iniContent["dc"][$location]
    Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"$msi_file`" /n /passive /l:c:\temp\epson.driver.wrapper.log" -Wait -WorkingDirectory $CurrentLocation
    Write-Host "Installation is going on. Refer the c:\temp\epson.driver.wrapper.log file for installation logs"
}
elseif ($location -eq "AU")
{
    $msi_file = $iniContent["dc"][$location]
    Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"$msi_file`" /n /passive /l:c:\temp\epson.driver.wrapper.log" -Wait -WorkingDirectory $CurrentLocation
    Write-Host "Installation is going on. Refer the c:\temp\epson.driver.wrapper.log file for installation logs"
}
elseif ($location -eq "AP")
{
    $msi_file = $iniContent["dc"][$location]
    Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"$msi_file`" /n /passive /l:c:\temp\epson.driver.wrapper.log" -Wait -WorkingDirectory $CurrentLocation
    Write-Host "Installation is going on. Refer the c:\temp\epson.driver.wrapper.log file for installation logs"
}
elseif ($location -eq "IN")
{
    $msi_file = $iniContent["dc"][$location]
    Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList "/i `"$msi_file`" /n /passive /l:c:\temp\epson.driver.wrapper.log" -Wait -WorkingDirectory $CurrentLocation
    Write-Host "Installation is going on. Refer the c:\temp\epson.driver.wrapper.log file for installation logs"
}
else
{
    Write-Host "The DC name you have provided is not a valid DC name or Id."
}