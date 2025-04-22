# ☁️ Entorno DevOps
export PATH="/usr/bin:/bin:/usr/local/bin:$PATH"  # Añade rutas esenciales

### 🔒 GPG
if command -v tty &> /dev/null; then
  export GPG_TTY=$(tty)
else
  echo "⚠️  tty no disponible, variable GPG_TTY no establecida."
fi

export KUBECONFIG="$HOME/.kube/config"
export DOCKER_HOST=unix:///var/run/docker.sock

export OPENSSL=/usr/local/opt/openssl/bin
export PATH="$OPENSSL:$PATH"

export GROOVY_HOME="/usr/local/opt/groovy/libexec"
export PATH="$GROOVY_HOME:$PATH"

source "$ROOT/profiles/cloud.zsh"

echo "☁️ Entorno DevOps activado (Docker, kubectl, K8s, Groovy)"