# 🧠 Ruta de instalación de Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
export ROOT="$HOME/.zsh"

# 🔌 Ruta para base personalizados
export ZSH_PLUGINS_DIR="${ZSH_CUSTOM:-$ZSH/custom}/plugins"


# Cargar módulos generales
for file in ~/.zsh/base/*.zsh; do
  source "$file"
done


# 🧩 Configuración modular de entornos
source ~/.zsh/devtools.zsh

# 🚀 Starship: activar si estás en proyecto
if [ -f ./package.json ] || [ -f ./pyproject.toml ]; then
  eval "$(starship init zsh)"
fi

