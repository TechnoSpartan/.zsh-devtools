#!/bin/bash

echo "🧪 Verificando entorno DevTools..."

check() {
  local name=$1
  local command=$2

  if command -v $command &> /dev/null; then
    echo "✅ $name detectado: $($command --version | head -n 1)"
  else
    echo "❌ $name NO encontrado. Instálalo con: brew install $command"
  fi
}

echo ""
check "Zsh" zsh
check "Direnv" direnv
check "Node.js" node
check "NVM" nvm
check "Java (JDK)" java
check "Android SDK (sdkmanager)" sdkmanager
check "Flutter" flutter
check "Docker" docker
check "Kubectl" kubectl

echo ""
echo "🧠 Recomendación: asegúrate de tener los paths correctamente definidos en tus perfiles (Android, Flutter, etc.)."
echo "👉 Puedes usar los comandos env-node, env-android, etc. para activar los entornos específicos."
