[INT]$renta = read-host "Cual es tu renta anual ?"

if ($renta -lt 10000){
    $porcentaje = "5%"
}elseif ($renta -ge 10000 -and $renta -le 20000){
    $porcentaje = "10%"
}elseif ($renta -ge 10000 -and $renta -le 20000){
    $porcentaje = "15%"
}elseif ($renta -ge 20000 -and $renta -le 35000){
    $porcentaje = "20%"
}elseif ($renta -ge 35000 -and $renta -le 60000){
    $porcentaje = "30%"
}elseif ($renta -gt 60000){
    $porcentaje = "45%"
}

Write-Host " Tu renta anual es de $renta por lo tanto tienes que pagar un $porcentaje"