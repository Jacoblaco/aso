[double]$puntuacion = Read-Host "Introduce la puntuación obtenida (0.0, 0.4, 0.6 o más)"

if ($puntuacion -eq 0.0) {
    $nivel = "Inaceptable"
} elseif ($puntuacion -eq 0.4) {
    $nivel = "Aceptable"
} elseif ($puntuacion -ge 0.6) {
    $nivel = "Meritorio"
} else {
    Write-Host "Error: Puntuación no válida. Debe ser 0.0, 0.4, 0.6 o más."
}

$dinero = 2400 * $puntuacion

Write-Host "`nResultados de la evaluación:"
Write-Host "Puntuación: $puntuacion"
Write-Host "Nivel de rendimiento: $nivel"
Write-Host "Cantidad de dinero a recibir: $dinero €" 