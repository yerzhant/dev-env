export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	aws
	colored-man-pages
	docker
	extract
	flutter
	git
	gradle
	helm
	httpie
	kubectl
	last-working-dir
	npm
	sdk
	systemd
	terraform
	tmux
	web-search
	zsh-autosuggestions
	zsh-interactive-cd
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases

KUBE_PS1_NS_ENABLE=false
KUBE_PS1_SYMBOL_USE_IMG=true
source ~/kube-ps1/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT

setopt HIST_FIND_NO_DUPS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
