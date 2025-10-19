#!/bin/bash

FICHERO="agenda.csv"

añadir_contacto() {
    read -p "Nombre: " nombre
    read -p "Teléfono: " telefono
    read -p "Email: " email
    if ! [[ $telefono =~ ^\+?[0-9]{7,15}$ ]]; then
        echo "Teléfono inválido"
        return
    fi
    if ! [[ $email =~ ^[^@]+@[^@]+\.[^@]+$ ]]; then
        echo "Email inválido"
        return
    fi
    echo "$nombre;$telefono;$email" >> "$FICHERO"
    echo "Contacto añadido."
}

listar_contactos() {
    [ ! -f "$FICHERO" ] && echo "No hay contactos." && return
    cat "$FICHERO" | while IFS=';' read -r n t e; do
        echo "Nombre: $n, Teléfono: $t, Email: $e"
    done
}

buscar_contacto() {
    read -p "Nombre a buscar: " busqueda
    grep -i "$busqueda" "$FICHERO" 2>/dev/null | while IFS=';' read -r n t e; do
        echo "Nombre: $n, Teléfono: $t, Email: $e"
    done
}

borrar_contacto() {
    read -p "Nombre a borrar: " nombre
    [ ! -f "$FICHERO" ] && echo "No hay contactos." && return
    grep -vi "^$nombre;" "$FICHERO" > temp.csv && mv temp.csv "$FICHERO"
    echo "Contacto borrado si existía."
}

editar_contacto() {
    read -p "Nombre a editar: " nombre
    [ ! -f "$FICHERO" ] && echo "No hay contactos." && return
    while IFS=';' read -r n t e; do
        if [[ "$n" == "$nombre" ]]; then
            read -p "Nuevo nombre [$n]: " nn
            read -p "Nuevo teléfono [$t]: " nt
            read -p "Nuevo email [$e]: " ne
            [[ -z $nn ]] && nn=$n
            [[ -z $nt ]] && nt=$t
            [[ -z $ne ]] && ne=$e
            if ! [[ $nt =~ ^\+?[0-9]{7,15}$ ]]; then nt=$t; fi
            if ! [[ $ne =~ ^[^@]+@[^@]+\.[^@]+$ ]]; then ne=$e; fi
            echo "$nn;$nt;$ne"
        else
            echo "$n;$t;$e"
        fi
    done < "$FICHERO" > temp.csv
    mv temp.csv "$FICHERO"
    echo "Edición completada."
}

imprimir_menu() {
    echo "----- AGENDA -----"
    echo "1. Añadir contacto"
    echo "2. Listar contactos"
    echo "3. Buscar contacto"
    echo "4. Borrar contacto"
    echo "5. Editar contacto"
    echo "6. Salir"
}

while true; do
    imprimir_menu
    read -p "Opción: " opcion
    case $opcion in
        1) añadir_contacto ;;
        2) listar_contactos ;;
        3) buscar_contacto ;;
        4) borrar_contacto ;;
        5) editar_contacto ;;
        6) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción inválida" ;;
    esac
done
