#!/bin/bash

#
# Seta as configurações da impressora Samsung M4080 do Departamento de Física
# FFCLRP
# 
# Autor: André Luiz Girol andregirol at yahoo dot com dot br

echo -e "Configurando parâmetros básicos da impressora\n\n"
read -e -p  "Digite o nome da Impressora: " printer_name
read -e -p  "Digite o usuário cadastrado na Impressora: " user_id
read -es -p "Digite a senha do usuário cadastrado na Impressora: " password

lpoptions -p $printer_name -o JCLJACType=Accounting -o JCLJACUserID=$user_id -o JCLJACPassword=$password

echo -e "Impressora configurada com sucesso"

echo -e "Listando configurações:"

lpoptions -p $printer_name -l
