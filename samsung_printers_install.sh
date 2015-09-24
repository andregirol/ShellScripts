#!/bin/bash
#
# Data: 29/07/2013
#
# Autor: Andre Luiz Girol / Tecnico em informatica / Departamento de Fisica - FFCLRP - USP
#
# email: andregirol@yahoo.com.br
#
# Script criado inicialmente para instalacao da impressora samsung
# localizada no GIIMUS. Segundo as referencias, esse script pode ser
# utilizado para instalar qualquer modelo de impressora samsumg, desde que seja
# suportado na lista
# 
# Tutorial retirado do repositorio nao oficial de drivers da Samsung
# 
# http://www.bchemnet.com/suldr/
#
# Modelos suportados pelo driver
#
# http://www.bchemnet.com/suldr/supported.html
#
#

# Mudando para a pasta do root
cd /root

# Adicionando os repositorios ao arquivo sources.list
echo "# Repositorio Samsung Unified Linux Drivers" >> /etc/apt/sources.list
echo "deb http://www.bchemnet.com/suldr/ debian extra" >> /etc/apt/sources.list

# Cria uma pasta para armazenar as chaves de repositorios
mkdir aptkeys
cd aptkeys

# Baixa a chave de autenticacao do repositorio
wget http://www.bchemnet.com/suldr/suldr.gpg

# Instala a chave do repositorio
apt-key add suldr.gpg

# Atualizando a lista de pacotes
apt-get update

# Instala o driver
apt-get install suld-driver-4.01.17
 
