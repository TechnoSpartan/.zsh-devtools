#!/bin/zsh

ZSH_ENV_DIR="$HOME/.zsh/env"

function loadenv() {
  local env="$1"
  local env_file="$ZSH_ENV_DIR/$env.zsh"
  [[ -f "$env_file" ]] && source "$env_file" && echo "🔧 Entorno '$env' activado." || echo "⚠️ No existe $env_file"
}


alias env-node="loadenv node"
alias env-devops="loadenv devops"
alias env-flutter="loadenv flutter"
alias env-android="loadenv android"
alias env-ios="loadenv ios"
alias env-general="loadenv general"