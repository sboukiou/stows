
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim='nvim'
alias c='clear'
alias so='source ~/.zshrc'
alias vconf=' cd ~/.config/nvim && nvim'
alias neo='neofetch'
alias fz='cd $(find ~ -type d | fzf)'

export USER='sboukiou'
export EMAIL='sboukiou@student.1337.ma'


if [[ -d ~/.hbin ]]; then
	PATH=$PATH:~/.hbin
fi


# pnpm
export PNPM_HOME="/home/said/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(starship init zsh)"
