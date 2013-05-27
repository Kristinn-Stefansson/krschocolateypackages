$local = Split-Path -parent $PSCommandPath
$pack = "$local\Packages"
mkdir "$pack" -ErrorAction Ignore
$projects = @("MakeMKV","PSWindowsUpdate","ScanTailor","SpecFlow")

foreach($proj in $projects)
{
    $arr = Get-ChildItem "$local\_output\$proj" | 
           Where-Object {$_.PSIsContainer} | 
           Foreach-Object {$_.Name}
           $last = ""
           if($arr -is [system.array])
           {
            $last = $arr[$arr.Lengt -1 ]
           }
           else
           {
            $last = $arr
           }
    nuget pack "$local\_output\$proj\$last\$proj.nuspec" -OutputDirectory "$pack"
}
