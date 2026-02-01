[double]$horas = read-host "Cuantas horas has trabajado ?: "
[double]$precio = read-host " A cuanto te pagan las horas ?: "
$total = $horas * $precio
write-host "Deben pagarte un total de $total euros."