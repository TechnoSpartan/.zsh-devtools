#!/bin/bash

set -e

echo "🔧 Instalando Zsh DevTools Full Setup..."

# Backup del zshrc actual
if [ -f "$HOME/.zshrc" ]; then
  echo "📦 Haciendo copia de seguridad de ~/.zshrc en ~/.zshrc.backup"
  cp "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi

# Copiar nuevo .zshrc
cp .zshrc "$HOME/.zshrc"

# Crear carpetas necesarias
mkdir -p "$HOME/.zsh"
mkdir -p "$HOME/.config/direnv"

# Copiar archivos de configuración
cp -r .zsh/* "$HOME/.zsh/"
cp -r .config/direnv/direnvrc "$HOME/.config/direnv/direnvrc"

# Mensaje final
echo "✅ Instalación completa. Reinicia tu terminal o ejecuta:"
echo "   source ~/.zshrc"
echo ""
echo "👉 Usa comandos como: env-node, env-android, env-flutter, etc."
