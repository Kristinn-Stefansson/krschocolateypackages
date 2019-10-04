$packageName = 'CrashPlan'
$installerType = 'MSI'
$url = 'https://download.code42.com/installs/agent/7.2.0/1641/install/CrashPlanSmb_7.2.0_1525200006720_1641_Win.msi' # download url
$url64 = 'https://download.code42.com/installs/agent/7.2.0/1641/install/CrashPlanSmb_7.2.0_1525200006720_1641_Win64.msi' # 64bit URL
$silentArgs = '/quiet /norestart' #
$validExitCodes = @(0,3010)

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
