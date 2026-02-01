[INT]$num1 = Read-Host "Escribe un primer numero"
[INT]$num2 = read-host "Escribe un segundo numero"

If ($num1 -gt $num2){
    Write-Host "El numero $num1 es MAYOR que el numero $num2"
}Elseif ($num1 -eq $num2){
    Write-Host "El numero $num1 y el numero $num2 son iguales"
}Else{
    Write-Host "El numero $num1 es menor que el numero $num2"
}