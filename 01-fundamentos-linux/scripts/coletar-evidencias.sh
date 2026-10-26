#!/usr/bin/env bash

set -u

DIRETORIO="${1:-evidencias}"
ARQUIVO="$DIRETORIO/relatorio-fundamentos-linux.txt"

mkdir -p "$DIRETORIO"

{
    echo "========================================"
    echo " LABORATORIO LFCA - FUNDAMENTOS LINUX"
    echo "========================================"
    echo "Data da coleta:"
    date
    echo

    echo "=== 1. DISTRIBUICAO LINUX ==="
    cat /etc/os-release
    echo

    echo "=== 2. KERNEL ==="
    uname -a
    echo

    echo "=== 3. NOME DA MAQUINA ==="
    hostname
    echo

    echo "=== 4. USUARIO ATUAL ==="
    whoami
    id
    echo

    echo "=== 5. MEMORIA ==="
    free -h
    echo

    echo "=== 6. ARMAZENAMENTO ==="
    df -h
    echo

    echo "=== 7. PROCESSOS ==="
    ps aux | head -n 10
    echo

    echo "=== FIM DA COLETA ==="
} > "$ARQUIVO" 2>&1

echo "Coleta concluida."
echo "Relatorio salvo em: $ARQUIVO"
