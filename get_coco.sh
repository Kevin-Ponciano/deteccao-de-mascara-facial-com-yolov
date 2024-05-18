#!/bin/bash

# Função para encontrar arquivos .jpg e escrever em um arquivo
find_jpg_files() {
    local directory=$1
    local output_file=$2

    # Mudar para o diretório
    cd "$directory"

    # Encontrar todos os arquivos .jpg no diretório atual e subdiretórios
    # e escrever os caminhos no arquivo de saída
    find $(pwd) -type f -name "*.jpg" > "$output_file"
}

# Armazenar o caminho atual
CURRENT_PATH=$(pwd)

# Chamadas da função para diferentes diretórios e arquivos de saída
find_jpg_files "$CURRENT_PATH/yolov/data/teste" "teste.txt"
find_jpg_files "$CURRENT_PATH/yolov/data/treino" "treino.txt"
find_jpg_files "$CURRENT_PATH/yolov/data/validacao" "validacao.txt"
