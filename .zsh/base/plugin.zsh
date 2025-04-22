ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
ZSH_PLUGINS_DIR="$ZSH_CUSTOM/plugins"

# Clonado automático
[[ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]] && git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGINS_DIR/zsh-autosuggestions"
[[ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]] && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
[[ ! -d "$ZSH_PLUGINS_DIR/zsh-completions" ]] && git clone --depth=1 https://github.com/zsh-users/zsh-completions "$ZSH_PLUGINS_DIR/zsh-completions"

# Descargar solo si el archivo NO existe
if [ ! -f "$ZSH_CUSTOM/plugins/completion/completion.zsh" ]; then
  mkdir -p "$ZSH_CUSTOM/plugins/completion"
  wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh -O "$ZSH_CUSTOM/plugins/completion/completion.zsh"
fi

# ⚙️ Plugins cargados por oh-my-zsh
plugins=(
  git
  node
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  z
)

# Completar solo si no está ya cacheado
autoload -Uz compinit
zstyle ':completion:*' rehash true
typeset -gA __comp_cache
compinit -C -d "${ZDOTDIR:-$HOME}/.zcompdump"

# Activar menu de selección de autocompletado
zmodload -i zsh/complist

# Plugins extra
source "$ZSH_PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH_PLUGINS_DIR/zsh-completions/zsh-completions.plugin.zsh"
source "$ZSH_PLUGINS_DIR/completion/completion.zsh"

# 🎉 Cargar Oh My Zsh (con los base definidos arriba)
source "$ZSH/oh-my-zsh.sh"