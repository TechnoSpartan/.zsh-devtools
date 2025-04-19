# Add WebStorm (wstorm)
export WEBSTORM="/Applications/WebStorm.app/Contents/MacOS"
export PATH="$WEBSTORM:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/krbaio3/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

### 🧪 Brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

echo "✅ Entorno general cargado"
