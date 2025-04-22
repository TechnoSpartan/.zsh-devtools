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
cp -r .config/direnv/direnv.toml "$HOME/.config/direnv/direnv.toml"
cp -r .config/starship.toml "$HOME/.config/starship.toml"
cp -r layout/* "$HOME/.zsh/tools"
cp -r check-devtools.sh "$HOME/.zsh/tools"
cp -r codespartan-doctor.sh "$HOME/.zsh/tools"

# Instalar init-env.sh
mkdir -p "$HOME/.local/bin"
cp .local/bin/init-env.sh "$HOME/.local/bin/init-env.sh"
chmod +x "$HOME/.local/bin/init-env.sh"

# Habilita check-env.sh y codespartan-doctor.sh
chmod +x "$HOME/.zsh/tools/check-devtools.sh"
chmod +x "$HOME/.zsh/tools/codespartan-doctor.sh"

# Mensaje final
echo "✅ Instalación completa. Reinicia tu terminal o ejecuta:"
echo "   source ~/.zshrc"
echo ""
echo "👉 Usa comandos como: env-node, env-android, env-flutter, etc."
