alias dcud='docker compose up -d --build --force-recreate'
alias dclo='docker compose logs -f --tail=100'
alias dcrestart='docker compose restart'
alias dcstop='docker compose stop'
alias dcstart='docker compose start'
alias dcps='docker compose ps'

dcreset() {
  docker compose down $@ && docker compose up -d --build --force-recreate $@
}
