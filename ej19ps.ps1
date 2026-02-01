[int]$numero = Read-Host "Introduce un número entero positivo"

$impares = @()
for ($i = 1; $i -le $numero; $i += 2) {
    $impares += $i
}

Write-Host ($impares -join ", ")