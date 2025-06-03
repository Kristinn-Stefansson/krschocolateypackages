$packageName = 'CrashPlan'

# Display deprecation warning
Write-Warning "=========================================="
Write-Warning "  DEPRECATED PACKAGE - DO NOT USE"
Write-Warning "=========================================="
Write-Warning ""
Write-Warning "CrashPlan for Home (consumer) service has been discontinued by Code42."
Write-Warning "This Chocolatey package is deprecated and no longer maintained."
Write-Warning ""
Write-Warning "Alternative backup solutions:"
Write-Warning "- Windows Backup and Restore"
Write-Warning "- File History (Windows 10/11)"
Write-Warning "- OneDrive"
Write-Warning "- Google Drive"
Write-Warning "- Dropbox"
Write-Warning "- Backblaze Personal Backup"
Write-Warning "- Carbonite"
Write-Warning ""
Write-Warning "If you have CrashPlan installed, please migrate to an alternative solution."
Write-Warning "=========================================="

# Exit with error to prevent installation
throw "Package installation aborted: CrashPlan consumer service is discontinued and this package is deprecated."