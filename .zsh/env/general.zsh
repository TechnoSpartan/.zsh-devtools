# Añadir WebStorm al PATH de forma directa
export PATH="/Applications/WebStorm.app/Contents/MacOS:$PATH"
echo "📂 PATH con WebStorm"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/krbaio3/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

### 🧪 Brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

echo "✅ Entorno general cargado"
