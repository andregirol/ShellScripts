#!/bin/bash
# Script para realização de backup da base de dados MySQL
# Data de criação: 27/07/2015
# Dev: André Girol - andregirol at gmail dot com

# Inclui Configuração inicial
source config.sh


# Output ->Database + Data
data="_`date +%Y_%m_%d__%H-%M-%S`"
# Concatenando
arquivo=$database$data

echo $arquivo

echo "Iniciando dump para $database em $dbhost..."
mysqldump -c -h $dbhost --user $dbuser --password=$dbpass $database > $arquivo.sql


# Acertando variáveis
localfile="$arquivo.sql"

destfile="$destination$arquivo.sql"

echo "Arquivo de destino é: $destfile"

echo "Fazendo upload para o servidor..."
scp $localfile $destfile

echo "Backup realizado com sucesso!"


#cat $arquivo.sql
