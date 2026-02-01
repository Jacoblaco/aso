$contraseña = "tomaset123"
$comprobacioncontraseña = Read-Host "Introduce la contraseña"

if ($contraseña -eq $comprobacioncontraseña){
    Write-Host "Contraseña correcta"
}else{
    Write-Host "Contraseña incorrecta"
}