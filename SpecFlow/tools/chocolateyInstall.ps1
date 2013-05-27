$packageName = 'PSWindowsUpdate' # arbitrary name for the package, used in messages
$url = '{{DownloadUrl}}' # download url
$url64 = '{{DownloadUrl}}' # 64bit URL 

try { 
  $installDir = Join-Path $PSHome "Modules"

  Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"
     
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}