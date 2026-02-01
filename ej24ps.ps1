$clave = "1234"
do {
    $input = Read-Host "Introduce la clave"
} while ($input -ne $clave)
Write-Host "Acceso concedido"