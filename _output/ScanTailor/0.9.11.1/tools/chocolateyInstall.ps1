$packageName = 'ScanTailor'
$installerType = 'EXE' 
$url = 'http://downloads.sourceforge.net/project/scantailor/scantailor/0.9.11.1/scantailor-0.9.11.1-32bit-install.exe?r=&ts=1368963104&use_mirror=switch' # download url
$url64 = 'http://downloads.sourceforge.net/project/scantailor/scantailor/0.9.11.1/scantailor-0.9.11.1-64bit-install.exe?r=&ts=1368963109&use_mirror=switch' # 64bit URL uses the same as $url
$silentArgs = '/S' # NSIS installar uses /S 
$validExitCodes = @(0) 

# installer, will assert administrative rights
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes