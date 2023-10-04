source "$HOME/.antigen.zsh"

if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

antigen use oh-my-zsh

if [ -x "$(command -v nvim)" ]; then
  export VISUAL=nvim
elif [ -x "$(command -v vim)" ]; then
  export VISUAL=vim
else
  export VISUAL=nano
fi

export EDITOR="$VISUAL"

antigen bundle bundler
antigen bundle docker-compose
antigen bundle git
antigen bundle fzf

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle walesmd/caniuse.plugin.zsh
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle paulirish/git-open

BULLETTRAIN_PROMPT_ORDER=(
	time
	dir
	git
	status
)
BULLETTRAIN_DIR_FG="black"
BULLETTRAIN_DIR_EXTENDED=0

COMPLETION_WAITING_DOTS="true"
ZSH_AUTOSUGGEST_USE_ASYNC=1
HOMEBREW_NO_INSTALL_CLEANUP=1

antigen theme caiogondim/bullet-train.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# bindkey "$terminfo[kcuf1]" history-substring-search-up # right
# bindkey "$terminfo[kcub1]" history-substring-search-down # left

alias oc="overmind connect"
alias or="overmind restart"
alias os="overmind start"

# Load private settings

source $HOME/.zshrc-local

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export GPG_TTY=$(tty)
