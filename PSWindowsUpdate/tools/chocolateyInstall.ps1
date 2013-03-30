#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one

#Items that could be replaced based on what you call chocopkgup.exe with
#{{PackageVersion}} - The updated version | /v
#{{DownloadUrl}} - The url for the native file | /u. As of version 1.4.5.1: http://gallery.technet.microsoft.com/scriptcenter/2d191bcd-3308-4edd-9de2-88dff796b0bc/file/41459/19/PSWindowsUpdate.zip
#{{PackageFilePath}} - Downloaded file if including it in package | /pp
#{{PackageGuid}} - This will be used later | /pg
#{{DownloadUrlx64}} - The 64bit url for the native file | /u64

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