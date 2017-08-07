#!/bin/bash

# Script to dump MySQL database and send its results by email
# Creation date: 27/07/2015
# Dev: André Girol - andregirol at gmail dot com

# Last update: 07/08/2017

# Includes database and mail configuration
source config.sh

# Gets date for the dump. Format the
# Output -> Database + Date
file_date=$(date +"_%Y_%m_%d")

# joining database name + date
dump_file=$database$file_date

echo "Starting dump for $database in host: $dbhost..."
mysqldump -c -h $dbhost --user $dbuser --password=$dbpass $database > "$dump_file.sql"

# Compressing...

# -c: Create an archive.
# -z: Compress the archive with gzip.
# -v: Display progress in the terminal while creating the archive, also known as “verbose” mode.
# The v is always optional in these commands, but it’s helpful.
# -f: Allows you to specify the filename of the archive.

compressed_bkp="$dump_file.tar.gz"

tar -czvf $compressed_bkp "$dump_file.sql"

echo "Sending Backup to Email..."
sendEmail -f "$from" -t $to -u "$subject" -m "$message" -a "$compressed_bkp" -s $smtp -o tls=yes -xu $username -xp $pass

echo "Cleanin up .sql files..."
rm -rf *.sql


# ============
# Here notes for using a file server and backup over ssh
#
# NOT YET IMPLEMENTED


#destfile="$destination$arquivo.sql"

#echo "Arquivo de destino é: $destfile"

#echo "Fazendo upload para o servidor..."
#scp $localfile $destfile

#echo "Backup realizado com sucesso!"


#cat $arquivo.sql
