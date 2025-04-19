#!/bin/zsh

### 👋 Carga de Zsh y tema ligero
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_TIME_BACKGROUND=green

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_apple_icon context dir vcs)
POWERLEVEL9K_CUSTOM_APPLE_ICON="echo '\uf179'"
POWERLEVEL9K_CUSTOM_APPLE_ICON_BACKGROUND="grey"
POWERLEVEL9K_CUSTOM_APPLE_ICON_FOREGROUND="black"

DEFAULT_USER=`whoami`

export ZSH="$HOME/.oh-my-zsh"

### ⚙️ Plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

### 🧠 Alias útiles
alias cls='clear'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias npm-list="npm list -g --depth=0 2>/dev/null"
alias yarn-list="yarn global list --depth=0 2>/dev/null"
alias npm-update="ncu -g"
alias yarn-update="yarn global upgrade-interactive"
alias npm-update-local="ncu --interactive"
alias yarn-update-local="yarn upgrade-interactive"
alias remove_node_modules='find . -name "node_modules" -type d -prune -exec rm -rf '{}' +'
alias list_node_modules='find . -name "node_modules" -type d -prune -exec rm -rf '{}' + -print | xargs du -chs'

# END Custom Alias


# Activación de direnv
eval "$(direnv hook zsh)"


### 🌈 Extras opcionales (comentados para rendimiento)
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

### ⚡ Carga p10k si existe
[[ -r "${HOME}/.p10k.zsh" ]] && source "${HOME}/.p10k.zsh"

# Carga modular
source ~/.zsh/devtools.zsh

