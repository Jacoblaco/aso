[INT]$edad = Read-Host "Cual es tu edad ?"

if ($edad -lt 4){
    $precio = "Gratis"
}elseif ($edad -ge 4 -and $edad -le 18){
    $precio = "5€"
}else {
    $precio = "10€"
}

Write-Host "Al tener $edad años, tienes que pagar $precio de entrada."