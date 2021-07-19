alias df='df -h'
alias fr='free -h'
alias l='ls -lah'

alias generate-password="head /dev/urandom | LC_ALL=C tr -dc A-Za-z0-9 | head -c 64 ; echo ''"
alias bcrypt-password="htpasswd -nBC 12 '' | tr -d ':'"
