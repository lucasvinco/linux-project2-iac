#!/bin/bash

echo "Atualizando o servidor e instalando as aplicações..."
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos do site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/