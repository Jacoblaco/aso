# =====================================================
# Práctica 1 - Administración de usuarios y grupos
# CFGS ASIR
# Dominio: empresa.local
# Descripción:
#  - Crea la OU Empresa
#  - Crea OUs por departamento desde departamentos.csv
#  - Crea grupos globales por departamento
#  - Crea usuarios desde empleados.csv
#  - Añade cada usuario a su grupo
# Contraseña por defecto: aso2025.
# =====================================================

# Importar módulo de Active Directory
Import-Module ActiveDirectory

# Ruta de los CSV
$rutaCSV = "C:\scripts"

# ==============================
# 1. Crear OU principal Empresa
# ==============================

New-ADOrganizationalUnit `
 -Name "Empresa" `
 -Path "DC=empresa,DC=local"

# ==============================
# 2. Leer departamentos.csv
# ==============================

$departamentos = Import-Csv "$rutaCSV\departamentos.csv" -Delimiter ";"

# ==============================
# 3. Crear OUs de departamentos
# ==============================

foreach ($dep in $departamentos) {

    New-ADOrganizationalUnit `
     -Name $dep.departamento `
     -Path "OU=Empresa,DC=empresa,DC=local" `
     -Description $dep.descripcion
}

# ==============================
# 4. Crear grupos globales
# ==============================

foreach ($dep in $departamentos) {

    New-ADGroup `
     -Name $dep.departamento `
     -GroupScope Global `
     -GroupCategory Security `
     -Path "OU=$($dep.departamento),OU=Empresa,DC=empresa,DC=local"
}

# ==============================
# 5. Leer empleados.csv
# ==============================

$empleados = Import-Csv "$rutaCSV\empleados.csv" -Delimiter ";"

# ==============================
# 6. Crear usuarios y asignar grupos
# ==============================

foreach ($emp in $empleados) {

    # Limpiar espacios en el nombre (ej: Juan Antonio → JuanAntonio)
    $nombreLimpio = $emp.nombre -replace " ", ""

    # Login: nombre.apellido
    $login = ($nombreLimpio + "." + $emp.apellido).ToLower()

    # Contraseña por defecto
    $password = ConvertTo-SecureString "aso2025." -AsPlainText -Force

    # Crear usuario
    New-ADUser `
     -Name "$($emp.nombre) $($emp.apellido)" `
     -SamAccountName $login `
     -UserPrincipalName "$login@empresa.local" `
     -GivenName $emp.nombre `
     -Surname $emp.apellido `
     -AccountPassword $password `
     -Enabled $true `
     -ChangePasswordAtLogon $true `
     -Path "OU=$($emp.departamento),OU=Empresa,DC=empresa,DC=local"

    # Añadir usuario al grupo del departamento
    Add-ADGroupMember `
     -Identity $emp.departamento `
     -Members $login
}

# ==============================
# Fin del script
# ==============================
