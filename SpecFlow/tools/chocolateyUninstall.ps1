try {
	# Here we would call VsixInstaller.exe /U but out of scope as of now
    # Write-ChocolateySuccess 'SpecFlow'
} catch {
  Write-ChocolateyFailure 'SpecFlow' $($_.Exception.Message)
  throw
}