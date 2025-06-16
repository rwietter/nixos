#!/usr/bin/env bash

# Encontra o dispositivo ZRAM ativo para swap (geralmente zram0)
ZRAM_DEVICE=$(swapon --noheadings --bytes | awk '$1 ~ /zram/ {print $1}')

if [ -z "$ZRAM_DEVICE" ]; then
  echo "Nenhum dispositivo ZRAM encontrado em uso como swap."
  exit 1
fi

# Obtém informações de uso do swap para o dispositivo ZRAM
# Usamos 'grep' para encontrar a linha do ZRAM e 'awk' para extrair a porcentagem de uso
SWAP_INFO=$(swapon --noheadings --bytes | grep "$ZRAM_DEVICE")

if [ -z "$SWAP_INFO" ]; then
  echo "Não foi possível obter informações de uso para $ZRAM_DEVICE."
  exit 1
fi

# Extrai a porcentagem de uso (quinto campo na saída de 'swapon')
# Exemplo de saída: /dev/zram0 partition 2097147904 0 0
#                       ^         ^       ^          ^ ^
#                       1         2       3          4 5 (percentual de uso)
USED_PERCENTAGE=$(echo "$SWAP_INFO" | awk '{print $5}')

echo "${USED_PERCENTAGE}"
