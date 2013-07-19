$packageName = 'EyeFi'
$installerType = 'EXE' 
$url = '{{DownloadUrl}}' # download url
$url64 = '{{DownloadUrl}}' # 64bit URL uses the same as $url
$silentArgs = '/Q REBOOT=ReallySuppress' # NSIS installar uses /S, MSI /Q
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes