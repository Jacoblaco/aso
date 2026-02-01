[double]$num1 = read-host "Escribe un numero" 
[double]$num2 = read-host "Escribe un segundo numero"

#Suma

$suma = $num1 + $num2

#resta

$resta = $sum1 - $sum2

#multiplicacion

$multi = $sum1 * $sum2

#division

$division = $num1 / $num2

#resto

$resto = $num1 % $num2

#resultados
write-host "El total de la suma de ambos numeros es $suma"
write-host "La resta de los numeros es $resta"
write-host "La multiplicacion de los numeros es $multi"
write-host "La division de ambos numeros es $division"
write-host "El resto es $resto"
