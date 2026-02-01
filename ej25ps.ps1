do {
    Write-Host "`n===== MENÚ ====="
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    
    $opcion = Read-Host "`nSelecciona una opción"
    
    switch ($opcion) {
        "a" {
            $ruta = Read-Host "Introduce la ruta de la carpeta a crear"
            New-Item -Path $ruta -ItemType Directory
            Write-Host "Carpeta creada correctamente" -ForegroundColor Green
        }
        "b" {
            $ruta = Read-Host "Introduce la ruta del fichero a crear"
            New-Item -Path $ruta -ItemType File
            Write-Host "Fichero creado correctamente" -ForegroundColor Green
        }
        "c" {
            $rutaVieja = Read-Host "Introduce la ruta del fichero o carpeta"
            $nombreNuevo = Read-Host "Introduce el nuevo nombre"
            Rename-Item -Path $rutaVieja -NewName $nombreNuevo
            Write-Host "Nombre cambiado correctamente" -ForegroundColor Green
        }
        "d" {
            $ruta = Read-Host "Introduce la ruta del archivo o carpeta a borrar"
            Remove-Item -Path $ruta -Recurse
            Write-Host "Elemento borrado correctamente" -ForegroundColor Green
        }
        "e" {
            $ruta = Read-Host "Introduce la ruta del fichero o carpeta"
            if (Test-Path $ruta) {
                Write-Host "La ruta existe" -ForegroundColor Green
            } else {
                Write-Host "La ruta NO existe" -ForegroundColor Red
            }
        }
        "f" {
            $ruta = Read-Host "Introduce la ruta del directorio"
            Get-ChildItem -Path $ruta
        }
        "g" {
            Get-Date
        }
        "x" {
            Write-Host "Saliendo del programa..." -ForegroundColor Cyan
        }
        default {
            Write-Host "Opción no válida" -ForegroundColor Red
        }
    }
} while ($opcion -ne "x")