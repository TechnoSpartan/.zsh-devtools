export NODE_ENV=development
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# PNPM alias
alias dev="pnpm dev"
alias test="pnpm test"
alias lint="pnpm lint"

# Aliases for Node_Modules
alias list_node_modules='find . -name "node_modules" -type d -prune -exec rm -rf '{}' + -print | xargs du -chs'
alias remove_node_modules='find . -name "node_modules" -type d -prune -exec rm -rf '{}' +'

# Aliases for NPM
alias npm-list="npm list -g --depth=0 2>/dev/null"
alias npm-update="ncu -g"
alias npm-update-local="ncu --interactive"

# Aliases for Yarn
alias yarn-update="yarn global upgrade-interactive"
alias yarn-list="yarn global list --depth=0 2>/dev/null"
alias yarn-update-local="yarn upgrade-interactive"

# Aliases for Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# Aliases for Ninja
alias ports='lsof -i -P -n | grep LISTEN'
alias serve='npx serve .'

echo "🌐 Entorno Web activado: Git + Node + PNPM + Lint"
