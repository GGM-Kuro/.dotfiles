#!/bin/bash

set -euo pipefail

# Asumiendo que DOTFILES_PATH ya está configurado

dotbot -d "$DOTFILES_PATH" -c "$DOTFILES_PATH/symlink/conf.yaml"

if [ $# -ne 0 ]; then
	dotbot -d "$DOTFILES_PATH" -c "$DOTFILES_PATH/symlink/conf.${1}.yaml"
fi
echo "Dotbot ha aplicado los enlaces simbólicos correctamente."
