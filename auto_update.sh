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

update_function(){
    # Oculta el cursor
    tput civis

    # Mostrar mensaje pidiendo la contraseña
    echo -e "\n${yellowColour}[+] Hey, give me your password if you don't mind.${endColour}"
    
    # Leer la contraseña sin mostrarla en pantalla
    read -s password

    # Primero hacemos un update en el sistema
    echo -e "\n${greenColour}[+] Relax, while I am doing the magic.${endColour}\n"

    # Update
    echo $password | sudo -S apt-get update &> /dev/null 

    # Upgrade
    echo $password | sudo -S apt-get upgrade &> /dev/null 

    # Autoremove 
    echo $password | sudo -S apt-get autoremove &> /dev/null 

    # Mostrar todo
    echo -e "\n${yellowColour}[+] Terminado.${endColour}"


    # Mostrar el cursor
    tput cnorm
}
# Llamar a la función ask_password
update_function