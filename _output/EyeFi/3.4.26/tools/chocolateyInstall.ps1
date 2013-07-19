$packageName = 'EyeFi'
$installerType = 'EXE' 
$url = 'http://support.eye.fi/agent/download/3.4.26/Setup.exe' # download url
$url64 = 'http://support.eye.fi/agent/download/3.4.26/Setup.exe' # 64bit URL uses the same as $url
$silentArgs = '/Q REBOOT=ReallySuppress' # NSIS installar uses /S, MSI /Q
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes