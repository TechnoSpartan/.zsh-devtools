#!/bin/bash

print_help() {
  echo ""
  echo "🧪 check-devtools.sh - Verifica y soluciona entorno de desarrollo Zsh"
  echo ""
  echo "Uso:"
  echo "  ./check-devtools.sh [opción]"
  echo ""
  echo "Opciones:"
  echo "  --fix        Instala automáticamente herramientas faltantes usando brew"
  echo "  --help       Muestra este mensaje de ayuda"
  echo ""
}

check() {
  local name=$1
  local command=$2

  if command -v $command &> /dev/null; then
    echo "✅ $name detectado: $($command --version | head -n 1)"
  else
    echo "❌ $name NO encontrado."
    MISSING+=("$name:$command")
  fi
}

# Argumentos
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  print_help
  exit 0
fi

echo "🔍 Comprobando herramientas esenciales de desarrollo..."
MISSING=()

check "Zsh" zsh
check "Direnv" direnv
check "Node.js" node
check "NVM" nvm
check "Java (JDK)" java
check "Android SDK (sdkmanager)" sdkmanager
check "Flutter" flutter
check "Docker" docker
check "Kubectl" kubectl
check "init-env" init-env

if [[ ${#MISSING[@]} -eq 0 ]]; then
  echo ""
  echo "🎉 Todo está listo. ¡Tu entorno está limpio y funcional!"
else
  echo ""
  echo "⚠️  Herramientas faltantes:"

  for item in "${MISSING[@]}"; do
    name="${item%%:*}"
    cmd="${item##*:}"
    echo "   - $name ($cmd)"
  done

  if [[ "$1" == "--fix" ]]; then
    echo ""
    echo "🔧 Intentando instalar herramientas faltantes con brew..."
    for item in "${MISSING[@]}"; do
      cmd="${item##*:}"
      brew install "$cmd"
    done
    echo "✅ Instalación completa. Revisa posibles errores arriba."
  else
    echo ""
    echo "👉 Puedes ejecutar './check-devtools.sh --fix' para instalar automáticamente con brew."
  fi
fi