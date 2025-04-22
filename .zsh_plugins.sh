#!/bin/bash

echo "🔌 Instalando plugins de Zsh..."

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

declare -A plugins=(
  ["zsh-autosuggestions"]="https://github.com/zsh-users/zsh-autosuggestions"
  ["zsh-syntax-highlighting"]="https://github.com/zsh-users/zsh-syntax-highlighting"
  ["zsh-completions"]="https://github.com/zsh-users/zsh-completions"
)

mkdir -p "$ZSH_CUSTOM/plugins"

for plugin in "${!plugins[@]}"; do
  path="$ZSH_CUSTOM/plugins/$plugin"
  if [ ! -d "$path" ]; then
    git clone --depth=1 "${plugins[$plugin]}" "$path"
    echo "✅ Instalado: $plugin"
  else
    echo "⏩ Ya existe: $plugin"
  fi
done

echo "✅ Todos los plugins están listos."