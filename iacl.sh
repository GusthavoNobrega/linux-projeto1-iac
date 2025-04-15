#!/bin/bash
echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."

useradd anna -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd gusthavo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd garfield -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd vinicius -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd gessica -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd maico -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd keller -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd jonhatan -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd lucas -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissóes dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
