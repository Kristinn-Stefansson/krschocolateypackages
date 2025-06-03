$packageName = 'CrashPlan'

Write-Warning "=========================================="
Write-Warning "  CrashPlan Package Uninstall"
Write-Warning "=========================================="
Write-Warning ""
Write-Warning "This is a deprecated package for CrashPlan consumer service."
Write-Warning ""
Write-Warning "If you have CrashPlan software installed on your system,"
Write-Warning "you may need to uninstall it manually through:"
Write-Warning "- Control Panel > Programs and Features"
Write-Warning "- Or using the original CrashPlan uninstaller"
Write-Warning ""
Write-Warning "Consider migrating to alternative backup solutions:"
Write-Warning "- Windows Backup and Restore"
Write-Warning "- File History (Windows 10/11)" 
Write-Warning "- OneDrive, Google Drive, Dropbox"
Write-Warning "- Backblaze Personal Backup, Carbonite"
Write-Warning "=========================================="

# This package doesn't actually install anything in the deprecated state,
# so there's nothing for Chocolatey to uninstall automatically.
# The warning above provides guidance for manual removal if needed.

Write-ChocolateySuccess $packageName