# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	ansible
	colored-man-pages
	docker
	docker-compose
	extract
	firewalld
	flutter
	gcloud
	git
	gradle
	helm
	httpie
	last-working-dir
	npm
	nvm
	pip
	sdk
	systemd
	terraform
	tmux
	web-search
	yarn
	yum
	zsh-autosuggestions
	zsh-interactive-cd
	zsh-syntax-highlighting
)

if type kubectl > /dev/null; then
	plugins+=(kubectl)
fi

source $ZSH/oh-my-zsh.sh

for file in ~/.bash_aliases*; do
    source "$file"
done

if ls ~/.local-rc* > /dev/null 2>&1; then
	for file in ~/.local-rc*; do
			source "$file"
	done
fi

setopt HIST_FIND_NO_DUPS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
