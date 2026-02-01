$ruta = Read-Host "Introduce la ruta del fichero o carpeta"
If (Test-Path $ruta) {
    Write-Host "La ruta existe"
        If (Test-Path $ruta -PathType Container) {
        Write-Host "Es una carpeta"
    } Else {
        Write-Host "Es un fichero"
    }
} Else {
    Write-Host "La ruta NO existe"
}