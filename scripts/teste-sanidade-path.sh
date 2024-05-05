#!/bin/bash

# Navega para o diretório especificado
cd data/teste-de-sanidade

# Encontra todos os arquivos .jpg no diretório atual e subdiretórios
# e escreve os caminhos no arquivo teste-de-sanidade.txt
find $(pwd) -type f -name "*.jpg" > ../teste-de-sanidade.txt
