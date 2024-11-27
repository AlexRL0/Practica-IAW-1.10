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

# Deshabilitamos el enlace simbólico
unlink /etc/nginx/sites-enabled/default

# Copiamos el .conf a /etc/nginx/sites-available
cp ../conf/load_balancer.conf /etc/nginx/sites-available

# Modificamos el archivo copiado en la ruta correcta
sed -i "s/IP_FRONTEND_1/$IP_FRONTEND_1/" /etc/nginx/sites-available
sed -i "s/IP_FRONTEND_2/$IP_FRONTEND_2/" /etc/nginx/sites-available