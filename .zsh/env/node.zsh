# 🌐 Entorno Node.js
export NODE_ENV=development

source "$ROOT/profiles/web.zsh"

### Console Ninja
export NINJA="$HOME/.console-ninja/.bin"
export PATH="$NINJA:$PATH"

### Node
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

### NodeJS & NVM
export PATH="/usr/bin:/bin:/usr/local/bin:$PATH"  # Añade rutas esenciales
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

alias dev="pnpm dev"
alias lint="pnpm lint"
alias test="pnpm test"
alias build="pnpm build"

echo "🔧 Entorno Node.js activado (pnpm, lint, dev, test)"

