$packageName = 'CrashPlan'
$installerType = 'EXE' 
$url = 'http://download.crashplan.com/installs/win/install/CrashPlan/jre/CrashPlan_{{PackageVersion}}_Win.exe' # download url
$url64 = 'http://download.crashplan.com/installs/win/install/CrashPlan/jre/CrashPlan-x64_{{PackageVersion}}_Win.exe' # 64bit URL 
$silentArgs = '/quiet /norestart' # 
$validExitCodes = @(0,3010) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes