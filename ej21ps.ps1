$numeroSecreto = 42

Write-Host "Adivina el número entre 0 y 100"

do {
    [int]$intento = Read-Host "Introduce un número"
    
    if ($intento -lt $numeroSecreto) {
        Write-Host "El número es MAYOR"
    } elseif ($intento -gt $numeroSecreto) {
        Write-Host "El número es MENOR"
    } else {
        Write-Host "¡Enhorabuena! Has adivinado el número."
    }
} while ($intento -ne $numeroSecreto)