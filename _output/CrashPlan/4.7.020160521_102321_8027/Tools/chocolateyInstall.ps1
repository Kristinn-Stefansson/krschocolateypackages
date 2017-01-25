$packageName = 'CrashPlan'
$installerType = 'MSI' 
$url = 'http://download.crashplan.com/installs/win/install/CrashPlan/jre/CrashPlan_4.7.0_Win.msi' # download url
$url64 = 'http://download.crashplan.com/installs/win/install/CrashPlan/jre/CrashPlan_4.7.0_Win64.msi' # 64bit URL 
$silentArgs = '/quiet /norestart' # 
$validExitCodes = @(0,3010) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes