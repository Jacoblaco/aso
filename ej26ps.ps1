function Sumar {
    param([double]$num1, [double]$num2)
    return $num1 + $num2
}

function Restar {
    param([double]$num1, [double]$num2)
    return $num1 - $num2
}

function Multiplicar {
    param([double]$num1, [double]$num2)
    return $num1 * $num2
}

function Dividir {
    param([double]$num1, [double]$num2)
    if ($num2 -eq 0) {
        return "Error: No se puede dividir entre cero"
    }
    return $num1 / $num2
}

do {
    Write-Host "`n****** CALCULADORA ********"
    Write-Host "1. Sumar"
    Write-Host "2. Restar"
    Write-Host "3. Multiplicar"
    Write-Host "4. Dividir"
    Write-Host "5. Salir"
    
    $opcion = Read-Host "`n¿Qué desea hacer? Elige una opción"
    
    if ($opcion -ne "5") {
        [double]$numero1 = Read-Host "Introduce el primer número"
        [double]$numero2 = Read-Host "Introduce el segundo número"
        
        switch ($opcion) {
            "1" {
                $resultado = Sumar $numero1 $numero2
                Write-Host "Resultado: $resultado" -ForegroundColor Green
            }
            "2" {
                $resultado = Restar $numero1 $numero2
                Write-Host "Resultado: $resultado" -ForegroundColor Green
            }
            "3" {
                $resultado = Multiplicar $numero1 $numero2
                Write-Host "Resultado: $resultado" -ForegroundColor Green
            }
            "4" {
                $resultado = Dividir $numero1 $numero2
                Write-Host "Resultado: $resultado" -ForegroundColor Green
            }
            default {
                Write-Host "Opción no válida" -ForegroundColor Red
            }
        }
    }
} while ($opcion -ne "5")

Write-Host "Saliendo de la calculadora..." -ForegroundColor Cyan