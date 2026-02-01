[int]$altura = Read-Host "Introduce un número entero"

for ($i = 1; $i -le $altura; $i++) {
    Write-Host ("*" * $i)
}