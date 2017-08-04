#!/bin/bash

# Script para realização de backup da base de dados MySQL
# Data de criação: 27/07/2015
# Dev: André Girol - andregirol at gmail dot com

# Inclui Configuração inicial
source config.sh

# Formata data para o arquivo SQL
# Output ->Database + Data
file_date="_`date +%Y_%m_%d__%H-%M-%S`"

# Concatenando
dump_file=$database$file_date

#echo $dump_file

echo "Iniciando dump para $database em $dbhost..."
mysqldump -c -h $dbhost --user $dbuser --password=$dbpass $database > $dump_file.sql

# Acertando variáveis
the_backup="$dump_file.sql"

echo "Sending Backup to Email..."
sendEmail -f "$from" -t $to -u "$subject" -m "$message" -a $the_backup -s $smtp -o tls=yes -xu $username -xp $pass

# ============

# Here notes for using a file server and backup over ssh

#destfile="$destination$arquivo.sql"

#echo "Arquivo de destino é: $destfile"

#echo "Fazendo upload para o servidor..."
#scp $localfile $destfile

#echo "Backup realizado com sucesso!"


#cat $arquivo.sql
