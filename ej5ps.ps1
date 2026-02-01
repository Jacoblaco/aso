[INT]$edad = Read-Host "Escribe tu edad: "
If ($edad -ge 18){
    Write-Host "Eres mayor de edad"
}Else{
    Write-Host "Eres menor de edad"
}