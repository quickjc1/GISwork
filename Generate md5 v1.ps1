#Script for creating MD5 hash files for a specified directory
#Before running, change $files directory and Out-file directory
#Author James Quick OSV

$files = Get-ChildItem C:\Apple_ABP_NI\Epoch_68\NI
$hashes = foreach ($file in $Files){
    Write-Output (New-Object -TypeName PSCustomObject -Property @{
        FileName = $file.FullName
        MD5 = Get-FileHash $file.FullName -Algorithm MD5 | Select-Object -ExpandProperty Hash | Out-file C:\Apple_ABP_NI\Epoch_68\NI\$file.md5 
        })
}