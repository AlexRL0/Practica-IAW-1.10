#!/bin/bash

#Para mostrar los comandos que se van ejecutando
set -ex

# Importamos el archivo .env
source .env

#Actualizamos los repositorios
apt update

#Actualizamos los paquetes
apt upgrade -y

# Instalamos nginx
apt install nginx -y