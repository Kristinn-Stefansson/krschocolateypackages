$packageName = 'SpecFlow' # arbitrary name for the package, used in messages
$url = 'http://visualstudiogallery.msdn.microsoft.com/9915524d-7fb0-43c3-bb3c-a8a14fbd40ee/file/79327/7/TechTalk.SpecFlow.Vs2010Integration.vsix' # download url
$url64 = 'http://visualstudiogallery.msdn.microsoft.com/9915524d-7fb0-43c3-bb3c-a8a14fbd40ee/file/79327/7/TechTalk.SpecFlow.Vs2010Integration.vsix' # 64bit URL 

try { 
  Install-ChocolateyVsixPackage "$packageName" "$url"
     
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}