#!/bin/bash

# Colours
greenColour="\e[0;32m"
endColour="\e[0m"
redColour="\e[0;31m"
blueColour="\e[0;34m"
yellowColour="\e[0;33m"
purpleColour="\e[0;35m"
turquoiseColour="\e[0;36m"
grayColour="\e[0;37m"

ask_password(){
    # Mostrar mensaje pidiendo la contraseña
    echo -e "${yellowColour}Hey, give me your password if you don't mind.${endColour}"
    
    # Leer la contraseña sin mostrarla en pantalla
    read -s password
}

function_1(){
    # Primero hacemos un update en el sistema
    echo -e "${greenColour}Relax, while I am doing the magic.${endColour}"

    # Update
    echo $password | sudo -S apt-get update
}

# Llamar a la función ask_password
ask_password

# Llamar a la función 1
function_1