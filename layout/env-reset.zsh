# ~/.zsh/tools/env-reset.zsh
function env-reset() {
  echo "♻️  Limpiando entorno previo..."

  unset NODE_ENV
  unset NVM_DIR
  unset PNPM_HOME
  unset ANDROID_HOME
  unset JAVA_HOME
  unset DOCKER_HOST
  unset KUBECONFIG
  unset FLUTTER
  unset NINJA
  unset DEVELOPER_DIR
  unset IOS_SIMULATOR_HOME
  unset IOS_BUILD_PATH

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

  echo "🧼 Variables de entorno reseteadas."
}