<#
   .Synopsis
     Looks for the module path folder, copies module files to folder
   .Description
     This script looks for the module path folderon either xp family
     or vista family computer. if the module folder is missing, it 
     will create it. It then copies the module files into the folder.
     When copying new module files, it creates a parent folder for each
     new module as required by the module architecture. 
   .Example
     Copy-Modules.ps1 -Path c:\fso
     This command checks for existence of module folder and copies
     all module files from the c:\fso directory into their own folder
     in the users modules directory. 
   .Inputs
     [String]
   .OutPuts
     [System.Io.DirectoryInfo]
   .Notes
    NAME:      Copy-Modules.ps1
    AUTHOR:    ed wilson 
    LASTEDIT:  4/12/2009
    KEYWORDS:  modules, test-path, new-item, environment
               PowerShell Best Practices
   .Link
     Test-Path
     New-Item
     Get-WmiObject
     Http://www.ScriptingGuys.com
#Requires -Version 2.0
#>
[CmdletBinding()]
Param(
      [Parameter(Position=0,
      Mandatory=$True,
      ValueFromPipeline=$True)]
      [string]$path
     )
      
Function Get-OperatingSystemVersion
{
 (Get-WmiObject -Class Win32_OperatingSystem).Version
} #end Get-OperatingSystemVersion

Function Test-ModulePath
{
 $VistaPath = "$env:userProfile\documents\WindowsPowerShell\Modules"
 $XPPath =  "$env:Userprofile\my documents\WindowsPowerShell\Modules" 
 if ([int](Get-OperatingSystemVersion).substring(0,1) -ge 6) 
   { 
     if(-not(Test-Path -path $VistaPath))
       {
         New-Item -Path $VistaPath -itemtype directory | Out-Null
       } #end if
   } #end if
 Else 
   {  
     if(-not(Test-Path -path $XPPath))
       {
         New-Item -path $XPPath -itemtype directory | Out-Null
       } #end if
   } #end else
} #end Test-ModulePath

Function Copy-Module([string]$name)
{
 $UserPath = $env:PSModulePath.split(";")[0]
 $ModulePath = Join-Path -path $userPath `
               -childpath (Get-Item -path $name).basename
 If(-not(Test-Path -path $modulePath))
   {
    New-Item -path $modulePath -itemtype directory | Out-Null
    Copy-item -path $name -destination $ModulePath | Out-Null
   }
 Else
   { 
    Copy-item -path $name -destination $ModulePath | Out-Null
   }
}