$ruta = Read-Host "Escibre la ruta de la carpeta"

if (Test-Path $ruta -PathType container){
    Write-Host "Es un directorio y este es el contenido"
    Get-ChildItem -Path $ruta -Recurse
}else{
     write-host "El directorio no existe"
}