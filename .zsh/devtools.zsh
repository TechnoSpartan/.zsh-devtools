#!/bin/zsh

ZSH_ENV_DIR="$HOME/.zsh/env"

function loadenv() {
  local env="$1"
  local path="$ZSH_ENV_DIR/$env.zsh"

  if [[ -f "$path" ]]; then
    echo "🔧 Cargando entorno: $env"
    source "$path"
  else
    echo "⚠️  Entorno '$env' no encontrado en $ZSH_ENV_DIR"
  fi
}

alias env-node="loadenv node"
alias env-android="loadenv android"
alias env-ios="loadenv ios"
alias env-flutter="loadenv flutter"
alias env-devops="loadenv devops"
alias env-general="loadenv general"