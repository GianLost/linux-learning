#!/bin/bash

echo "Atualizando o servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando o servidor Apache..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Baixar os arquivos do site através da URL informada..."

cd /tmp

wget https://github.com/GianLost/Instagram-page/archive/refs/heads/master.zip

echo "Descompactar arquivos do site..."

unzip master.zip

cd Instagram-page-master/Instagram_page

cp -R * /var/www/html/

echo "FIM..."
