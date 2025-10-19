#!/bin/bash

# --- Captura CTRL+C ---
trap ctrl_c INT

ctrl_c() {
    echo -e "\n\nSaliendo del script... Bye!"
    exit 0
}

# --- Obtener IP y máscara de subred ---
IP=$(ip -4 addr show $(ip route get 8.8.8.8 | awk '{print $5}') | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
MASK=$(ip -4 addr show $(ip route get 8.8.8.8 | awk '{print $5}') | grep -oP '(?<=inet\s)\d+(\.\d+){3}/\d+' | cut -d'/' -f2)

# --- Calcular red, broadcast y CIDR ---
IFS=. read -r i1 i2 i3 i4 <<< "$IP"
case $MASK in
    24) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.255" ;;
    25) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.127" ;;
    26) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.63" ;;
    27) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.31" ;;
    28) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.15" ;;
    29) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.7" ;;
    30) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.3" ;;
    *) NET="$i1.$i2.$i3.0"; BROAD="$i1.$i2.$i3.255" ;;
esac
CIDR="$MASK"

echo "IP del equipo: $IP"
echo "Red: $NET"
echo "Broadcast: $BROAD"
echo "Máscara: $MASK"
echo "CIDR: /$CIDR"
echo ""
echo "Informe de IPs en la red (CTRL+C para salir):"

# --- Función para ping ---
ping_ip() {
    ping -c1 -W1 "$1" &> /dev/null
    [ $? -eq 0 ] && echo "ocupada" || echo "libre"
}

# --- Listar todas las IPs posibles dentro de la red ---
IFS=. read -r n1 n2 n3 n4 <<< "$NET"
IFS=. read -r b1 b2 b3 b4 <<< "$BROAD"

for i in $(seq $((n4+1)) $((b4-1))); do
    host="$n1.$n2.$n3.$i"
    estado=$(ping_ip "$host")
    echo "$host -> $estado"
done
