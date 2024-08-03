###############################################################################
# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝ (config)
###############################################################################

# PERFORMANCE:
# zmodload zsh/zprof # (DEBUG PERFORMANCE)

#############################################################################################
#  ▗ ▄▖▌   Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#▛▌▜ ▛▌▙▘  Initialization code that may require console input (password prompts, [y/n]   
#▙▌▟▖█▌▛▖  confirmations, etc.) must go above this block; everything else may go below.  
#▌                                                                                       
#############################################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
###############################################################################
#▀▌▀▌▛▌
#▙▖█▌▙▌
#    ▌ 
###############################################################################
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"
plug "Aloxaf/fzf-tab"
plug "zap-zsh/vim"
plug "romkatv/powerlevel10k"
plug "hlissner/zsh-autopair"

###############################################################################
#    ▘   
#▛▌▌▌▌▛▛▌
#▌▌▚▘▌▌▌▌
###############################################################################

alias avim="NVIM_APPNAME='avim' nvim"
alias ovim="NVIM_APPNAME='nvim.old' nvim"
alias kvim="NVIM_APPNAME='kvim' nvim"

###############################################################################
#  ▜ ▘    
#▀▌▐ ▌▀▌▛▘
#█▌▐▖▌█▌▄▌
###############################################################################
# zsh and oh-my-zsh aliases
alias zshconfig="nvim ~/.zshrc"

# System update and upgrade
alias update="yay -Suy"

alias grep='grep --color=auto'

# sxiv
alias view="sxiv"
alias viewa="sxiv -t *"

# Git
alias g="git"
alias gs="git status"
alias gc="git commit -m"
alias ga="git add -A"
alias gp="git push"
alias gl="git log"

# Lazygit 
alias lazy="lazygit"

# Bindkeys
bindkey '^ ' autosuggest-accept
bindkey -s '^o' "t^M"
bindkey -s '^e' "yy^M"

###############################################################################
#▄▖▖▖▄▖▄▖▄▖▄▖  ▄▖▖ ▖▄   ▄▖▄▖▄▖▖▖                                              #
#▙▖▚▘▙▌▌▌▙▘▐   ▌▌▛▖▌▌▌  ▙▌▌▌▐ ▙▌                                              #
#▙▖▌▌▌ ▙▌▌▌▐   ▛▌▌▝▌▙▘  ▌ ▛▌▐ ▌▌                                              #
###############################################################################
# EDITOR
export EDITOR='nvim'

#gopls
export PATH="$HOME/go/bin:$PATH"

# fzf theme
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --pointer=' ' \
  --info=inline-right \
  --ansi \
  --highlight-line \
  --layout=reverse \
  --border=sharp
  --color=bg+:#1e2030 \
  --color=bg:#1e2030 \
  --color=border:#589ed7 \
  --color=fg:#c8d3f5 \
  --color=gutter:#1e2030 \
  --color=header:#ff966c \
  --color=hl+:#65bcff \
  --color=hl:#65bcff \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#65bcff \
  --color=query:#c8d3f5:regular \
  --color=scrollbar:#589ed7 \
  --color=separator:#ff966c \
  --color=spinner:#ff007c \
"

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export CM_LAUNCHER=$(which rofi)

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# fnm
FNM_PATH="/home/tma/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/tma/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# Cargo bin to path
export PATH="/home/tma/.cargo/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

# Change node version on `cd`
eval "$(fnm env --use-on-cd)"

# Zoxide
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# zprof # (PUT THIS IN THE LAST LINE)
