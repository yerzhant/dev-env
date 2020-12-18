alias df='df -h'
alias fr='free -h'
alias l='ls -lah'

alias generate-password="head /dev/urandom | tr -dc A-Za-z0-9 | head -c 128 ; echo ''"
alias bcrypt-password="htpasswd -nBC 12 '' | tr -d ':'"
