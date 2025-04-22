alias kctx="kubectl config current-context"
alias kns="kubectl config set-context --current --namespace"
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias kubeup='kubectl apply -f'
alias klog='kubectl logs -f'
alias kdel='kubectl delete'
alias ports='lsof -i -P -n | grep LISTEN'

export DOCKER_BUILDKIT=1

echo "...☁️ Alias Agregados: Kubernetes + Docker + kubectl"