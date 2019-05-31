$dir = "E:\DCIM\*"
$ext = "*.mov"
$destination = "D:\Video\snow\kelias"

$fileCount = (Get-ChildItem $dir -Recurse -Include $ext).count

Write-Host "Found $fileCount files"

$files = Get-ChildItem $dir -Recurse -Include $ext

$i = 1

$files | %{ 

    
    Write-Host "copying $_, file $i/$fileCount"; $i++
    Copy-Item $_ -Destination $destination -Force
    
}