#!/bin/bash

echo "Ultimos usuarios que iniciaron sesion con IP de origen:"
echo "--------------------------------------------------------"

last | egrep '([0-9]{1,3}\.){3}[0-9]{1,3}'

echo "--------------------------------------------------------"
