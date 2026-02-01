[Int]$num1 = Read-Host "Introduce un numero"

[Int]$num2 = Read-Host "Introduce un numero"
[Int]$x = Read-Host "****** CALCULADORA ********

1-Sumar
2-Restar
3-Multiplicar
4-Dividir
¿Qué desea hacer?Elige una opción"

$suma = $num1 + $num2

#resta

$resta = $num1 - $num2

#multiplicacion

$multi = $num1 * $num2

#division

$division = $num1 / $num2
#Bloque Switch
switch ($x) { 
	1 {
		Write-Host "$num1 + $num2 = $suma"
	}
	2 {
		Write-Host "$num1 - $num2 = $resta"
	}
	3 {
		Write-Host "$num1 * $num2 = $multi"
    }
    4 {
		Write-Host "$num1 / $num2 = $division"
	}
	default {
		Write-Host "Has introducido cualquier otro valor"
	}
}
