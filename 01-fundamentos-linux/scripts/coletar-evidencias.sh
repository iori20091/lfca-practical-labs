#!/usr/bin/env bash

set -u

DIRETORIO="${1:-evidencias}"
ARQUIVO="$DIRETORIO/relatorio-fundamentos-linux.txt"

mkdir -p "$DIRETORIO"

{
    echo "================================================"
    echo "====  LABORATORIO LFCA - FUNDAMENTOS LINUX  ===="
    echo "================================================"
    echo "Data da coleta:"
    date
    echo

    echo "#############################"
    echo "### 1. DISTRIBUICAO LINUX ###"
    echo "#############################"
    cat /etc/os-release
    echo

    echo "#############################"
    echo "###      2. KERNEL        ###"
    echo "#############################"
    uname -a
    echo

    echo "#############################"
    echo "###  3. NOME DA MAQUINA   ###"
    echo "#############################"
    hostname
    echo

    echo "#############################"
    echo "###    4. USUARIO ATUAL   ###"
    echo "#############################"
    whoami
    id
    echo

    echo "#############################"
    echo "###      5. MEMORIA       ###"
    echo "#############################"
    free -h
    echo

    echo "#############################"
    echo "###   6. ARMAZENAMENTO    ###"
    echo "#############################"
    df -h
    echo

    echo "#############################"
    echo "###    7. PROCESSOS       ###"
    echo "#############################"
    ps aux | head -n 10
    echo

    echo "============================="
    echo "-----------------------------"
    echo "---    FIM DA COLETA      ---"
    echo "-----------------------------"
    echo "============================="
} > "$ARQUIVO" 2>&1

echo "Coleta concluida."
echo "Relatorio salvo em: $ARQUIVO"
