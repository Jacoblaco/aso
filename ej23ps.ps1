[int]$altura = Read-Host "Introduce un número entero"

for ($i = $altura; $i -ge 1; $i--) {
    Write-Host ("*" * $i)
}