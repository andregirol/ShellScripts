#!/bin/bash
# Script para instalação do Java da Oracle
#
# Data de Criação: 05/02/2015
# Criado por: André Girol
# Contato: andregirol dot yahoo dot com dot br
# 
 
echo "Adicionando repositório..."
sudo add-apt-repository ppa:webupd8team/java

echo "Atualizando lista de pacotes..."
sudo apt-get update

echo "Instalando o Java 8"
sudo apt-get install oracle-java8-installer
 
echo "Configurando variáveis de ambiente para o Java..."
sudo apt-get install oracle-java8-set-default

