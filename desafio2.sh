#!/bin/bash

echo "Atualizando o servidor..."
apt update
apt upgrade -y

echo "Intalando o Apache2"
apt install apache2 -y
systemctl start apache2

echo "Instalando o unzip"
apt install unzip

echo "Baixando arquivos do GitHub"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando arquivos para o diretório padrão do Apache2"
mv /tmp/main.zip /var/www/html
cd /var/www/html
unzip main.zip
mv /var/www/html/linux-site-dio-main/* /var/www/html

echo "Removendo arquivos desnecessários"
rm -r main.zip
rm -r linux-site-dio-main



