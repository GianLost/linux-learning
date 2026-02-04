#!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -c "Carlos Alberto da Silva" -G GRP_ADM
echo "carlos:Senha123" | chpasswd

useradd maria -m -s /bin/bash -c "Maria Aparecida Barbosa" -G GRP_ADM
echo "maria:Senha123" | chpasswd

useradd joao -m -s /bin/bash -c "Joao Ferreira Leite" -G GRP_ADM
echo "joao:Senha123" | chpasswd

useradd debora -m -s /bin/bash -c "Debora Garcia da Rocha" -G GRP_VEN
echo "debora:Senha123" | chpasswd

useradd sebastiana -m -s /bin/bash -c "Sebastiana de Assis Ferreira" -G GRP_VEN
echo "sebastiana:Senha123" | chpasswd

useradd roberto -m -s /bin/bash -c "Roberto Carlos de Moura" -G GRP_VEN
echo "roberto:Senha123" | chpasswd

useradd josefina -m -s /bin/bash -c "Josefina Sampaio da Costa" -G GRP_SEC
echo "josefina:Senha123" | chpasswd

useradd amanda -m -s /bin/bash -c "Amanda Celestina de Souza" -G GRP_SEC
echo "amanda:Senha123" | chpasswd

useradd rogerio -m -s /bin/bash -c "Rogerio Figueiredo de Assis" -G GRP_SEC
echo "rogerio:Senha123" | chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
