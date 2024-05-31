#!/bin/bash

# Verifica se o mas-cli está instalado
if ! command -v mas &> /dev/null
then
    echo "mas-cli não está instalado. Por favor, instale usando 'brew install mas'."
    exit
fi

# Autentica no App Store (necessário uma vez)
# mas signin "seu-email@exemplo.com" "sua-senha"

# Verifica por atualizações
updates=$(mas outdated)

if [ -z "$updates" ]; then
    echo "Todos os aplicativos estão atualizados."
else
    echo "Atualizações disponíveis: "
    echo "$updates"

    # Instala todas as atualizações disponíveis
    mas upgrade
    echo "Atualizações instaladas."
fi
