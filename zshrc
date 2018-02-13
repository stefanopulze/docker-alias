# ------------------------------------
# Docker alias and function
# ------------------------------------

alias di="docker images"

# Get latest container ID
alias dps="docker ps --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}'"

# Get container id and names
alias dlf="docker ps --format '{{.ID}} {{.Names}}'"

# Execute interactive container, e.g., $dexec base /bin/bash
alias dexec="docker exec -it"

# Execute interactive container, e.g., $dex base /bin/bash
function docker_bash() {
  docker exec -it $1 bash
}

alias dbash=docker_bash

# Get container ip
alias dip="docker inspect --format '{{ .NetworkSettings.Networks.IPAddress }}'"

alias drmi="docker rmi -f "
