param ( 
    [string] $path
)

$fileList = "text.txt","document.doc"

$missingFilesList = New-object System.Collections.ArrayList

Write-Host "This script will check for the following files:"
Write-Host "`n*********************************************"
$fileList
Write-Host "*********************************************"
Write-Host "Searching for files"
foreach ($element in $fileList){
    $newPath = $path +'\'+$element
    $element
    if(-not (Test-Path -LiteralPath $newPath)) {
        $missingFilesList.Add($element) |Out-Null #Out-Null to prevent array number from being printed.
    }
}
if ($missingFilesList.Count -gt 0) {
    Write-Host "*********************************************" -ForegroundColor Red
    Write-Host "FAIL:One or more files are missing from" $newPath -ForegroundColor Red
    Write-Host "*********************************************" -ForegroundColor Red
    Write-Host "Missing files:" -ForegroundColor Red
    foreach($file in $missingFilesList)
    {
        Write-Host "`t $file" -ForegroundColor Red
    }
}
else
{
    Write-Host "*********************************************" -ForegroundColor Green
    Write-Host "SUCCESS:All files were found." -ForegroundColor Green
    Write-Host "*********************************************" -ForegroundColor Green
    
}
