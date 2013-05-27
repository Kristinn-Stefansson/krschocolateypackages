$packageName = 'SpecFlow' # arbitrary name for the package, used in messages
$url = '{{DownloadUrl}}' # download url
$url64 = '{{DownloadUrl}}' # 64bit URL 

try { 
  Install-ChocolateyVsixPackage "$packageName" "$url"
     
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}