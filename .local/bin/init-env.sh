#!/bin/bash

# init-env: genera un .envrc con el entorno indicado

ENV_NAME=$1

if [ -z "$ENV_NAME" ]; then
  echo "❌ Debes indicar un entorno. Ejemplo: init-env node"
  exit 1
fi

VALID_ENVS=("node" "flutter" "android" "ios" "devops" "general")
if [[ ! " ${VALID_ENVS[@]} " =~ " ${ENV_NAME} " ]]; then
  echo "❌ Entorno no válido: ${ENV_NAME}"
  echo "✅ Entornos disponibles: ${VALID_ENVS[*]}"
  exit 1
fi

echo "📦 Generando .envrc para entorno: $ENV_NAME"

cat > .envrc <<EOF
source ~/.zsh/tools/env-reset.zsh
source ~/.zsh/devtools.zsh
loadenv ${ENV_NAME}
EOF

direnv allow

echo "✅ .envrc creado y activado con direnv para entorno '${ENV_NAME}'"