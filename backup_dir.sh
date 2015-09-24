#!/bin/bash
#
# Script padrão de backup

# Output backup
pre_nome="filename_"
data=`date +%Y_%m_%d`
arquivo=$pre_nome$data

# Diretorio de destino
dest_dir='/tmp/backup/'

# Diretório de origem
orig_dir='/source/bkp/folder/'

# Vai para o diretório onde será realizado o backup
cd $dest_dir

echo "Iniciando Backup para $orig_dir"

# Comando que realiza o backup propriamente dito
# Uso:
# tar [parametros][nome_do_arquivo] [arquivos a serem compactados]
# Parâmetros usados:
# -c - novo arquivo tar (create)
# -v - Verbose (exibe o processo)
# -f - nomeia o arquivo .tar
# -p - mantém permissões originais do arquivo de origem

tar -cvfp $arquivo.tar $orig_dir



#echo "Backup realizado com sucesso!"
