#!/bin/bash

echo "Criando Usuários do SIstema...."

useradd guest10 -c "User Conv" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest10 -e

useradd guest11 -c "User Conv" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest11 -e

useradd guest12 -c "User Conv" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest12 -e

useradd guest13 -c "User Conv" -s /bin/bash -m -p $(openssl passwd Senha123)
passwd guest13 -e


echo "Finalizado!"
