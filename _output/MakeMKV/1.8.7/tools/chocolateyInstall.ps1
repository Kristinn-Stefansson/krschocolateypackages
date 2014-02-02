$packageName = 'MakeMKV'
$installerType = 'EXE' 
$url = 'http://www.makemkv.com/download/Setup_MakeMKV_v1.8.7.exe' # download url
$url64 = 'http://www.makemkv.com/download/Setup_MakeMKV_v1.8.7.exe' # 64bit URL uses the same as $url
$silentArgs = '/S' # NSIS installar uses /S 
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes