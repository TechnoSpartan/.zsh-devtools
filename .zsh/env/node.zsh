### Console Ninja
export NINJA="$HOME/.console-ninja/.bin"
export PATH="$NINJA:$PATH"

### NodeJS & NVM
export PATH="/usr/bin:/bin:/usr/local/bin:$PATH"  # Añade rutas esenciales
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

echo "✅ Entorno Node.js cargado"
