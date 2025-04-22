# ~/.zsh/tools/env-layout.zsh

# Layout selector universal según el tipo de proyecto
source ~/.zsh/tools/env-reset.zsh

# Android
if [ -d android ]; then
  source ~/.zsh/tools/layout-android.zsh
  layout_android
fi

# Flutter
if [ -f pubspec.yaml ]; then
  source ~/.zsh/tools/layout-flutter.zsh
  layout_flutter
fi

# iOS
if [ -d ios ] || [ -d Runner ]; then
  source ~/.zsh/tools/layout-ios.zsh
  layout_ios
fi

# Node.js / Web
if [ -f package.json ]; then
  source ~/.zsh/tools/layout-node.zsh
  layout_node
fi

# DevOps (infra: Dockerfile o Kubernetes)
if [ -f docker-compose.yml ] || [ -f Dockerfile ] || [ -d .kube ]; then
  source ~/.zsh/tools/layout-devops.zsh
  layout_devops
fi

# General (por defecto si no coincide nada)
if [ ! -f package.json ] && [ ! -f pubspec.yaml ]; then
  source ~/.zsh/tools/layout-general.zsh
  layout_general
fi