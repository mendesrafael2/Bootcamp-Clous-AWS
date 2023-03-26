#!/bin/bash

echo "Criando pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos    -m -c "Carlos"         -s /bin/bash -p $(openssl passwd 123)
useradd maria     -m -c "Maria"          -s /bin/bash -p $(openssl passwd 123)
useradd joao      -m -c "Joao"           -s /bin/bash -p $(openssl passwd 123)
useradd debora    -m -c "debora"         -s /bin/bash -p $(openssl passwd 123)
useradd sebastiao -m -c "Sebastião"      -s /bin/bash -p $(openssl passwd 123)
useradd roberto   -m -c "Roberto"        -s /bin/bash -p $(openssl passwd 123)
useradd josefina  -m -c "Josefina"       -s /bin/bash -p $(openssl passwd 123)
useradd amanda    -m -c "Amanda"         -s /bin/bash -p $(openssl passwd 123)
useradd rogerio   -m -c "Rogerio"        -s /bin/bash -p $(openssl passwd 123)

echo "Nomeando root como dono de todos os diretórios..."
chown root /publico/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Permissionando todos os usuários no diretório publico"
chmod 777 /publico/

echo "Atribuindo usuários aos grupos"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiao
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
