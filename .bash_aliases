alias df='df -h'
alias fr='free -h'
alias l='ls -lah'
alias z=zsh
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myip2='dig TXT +short o-o.myaddr.l.google.com @ns1.google.com'

alias generate-password="head /dev/urandom | LC_ALL=C tr -dc A-Za-z0-9 | head -c 64 ; echo ''"
alias bcrypt-password="htpasswd -nBC 12 '' | tr -d ':'"
