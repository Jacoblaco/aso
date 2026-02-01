$nombre = Read-Host "Escribre tu nombre"
$sexo = Read-Host "Eres hombre o mujer ?"
if (($sexo -eq "M" -and $nombre -lt "M") -or ($sexo -eq "H" -and $nombre -gt "N")) {
    $grupo = "A"
} else {
    $grupo = "B"
}

Write-Host "Tu nombre es $nombre, tu sexo es $sexo y te corresponde el GRUPO: $grupo"