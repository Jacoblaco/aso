$tipo = Read-Host "¿Quieres una pizza vegetariana? (si/no)"
if ($tipo -eq "si") {
    Write-Host "`nHas escogido la opción vegetariana."
    Write-Host "Esta es la lista de los ingredientes vegetarianos:"
    Write-Host "1 - Pimiento"
    Write-Host "2 - Tofu"
    [int]$x = Read-Host "Escoge uno (1 o 2)"
} else {
    Write-Host "`nHas escogido la opción NO vegetariana."
    Write-Host "Esta es la lista de los ingredientes:"
    Write-Host "1 - Jamón"
    Write-Host "2 - Peperoni"
    Write-Host "3 - Salmón"
    [int]$x = Read-Host "Escoge uno (1, 2 o 3)"
}

switch ($x) {
    1 {
        if ($tipo -eq "si") {
            Write-Host "`nHas escogido Pimiento. Ingredientes de tu pizza:"
            Write-Host "- Tomate"
            Write-Host "- Mozzarella"
            Write-Host "- Pimiento"
        } else {
            Write-Host "`nHas escogido Jamón. Ingredientes de tu pizza:"
            Write-Host "- Tomate"
            Write-Host "- Mozzarella"
            Write-Host "- Jamón"
        }
    }
    2 {
        if ($tipo -eq "si") {
            Write-Host "`nHas escogido Tofu. Ingredientes de tu pizza:"
            Write-Host "- Tomate"
            Write-Host "- Mozzarella"
            Write-Host "- Tofu"
        } else {
            Write-Host "`nHas escogido Peperoni. Ingredientes de tu pizza:"
            Write-Host "- Tomate"
            Write-Host "- Mozzarella"
            Write-Host "- Peperoni"
        }
    }
    3 {
        Write-Host "`nHas escogido Salmón. Ingredientes de tu pizza:"
        Write-Host "- Tomate"
        Write-Host "- Mozzarella"
        Write-Host "- Salmón"
    }
    default {
        Write-Host "`nOpción no válida." -ForegroundColor Red
    }
}