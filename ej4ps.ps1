[double]$num = Read-Host "Escribe un numero: "
$resto = $num % 2
If ($resto -eq 0) {
    Write-Host "El numero $num es PAR"
}Else {
    Write-Host "El numero $num es IMPAR"
}