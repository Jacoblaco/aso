$usuarios = Import-Csv -Path "C:\Users\tommy\Downloads\usuarios.csv"

foreach ($usuario in $usuarios) {
    Write-Host "Nombre: $($usuario.nombre)"
    Write-Host "Apellidos: $($usuario.apellidos)"
    Write-Host "Grupo: $($usuario.grupo)"
    Write-Host "------------------------"
}