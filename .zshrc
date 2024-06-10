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

###############################################################################
#▀▌▀▌▛▌
#▙▖█▌▙▌
#    ▌ 
###############################################################################
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
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

###############################################################################
#  ▜ ▘    
#▀▌▐ ▌▀▌▛▘
#█▌▐▖▌█▌▄▌
###############################################################################
# zsh and oh-my-zsh aliases
alias zshconfig="nvim ~/.zshrc"

# System update and upgrade
alias update="yay -Suy"

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
export FZF_DEFAULT_OPTS="
  --color=fg:#d1d5db,bg:#09090b,hl:#4ade80
  --color=fg+:#71717a,bg+:#09090b,hl+:#4ade80
  --color=border:#3f3f46,header:#60a5fa,gutter:#3f3f46
  --color=spinner:#52525b,info:#52525b,separator:#27272a
  --color=pointer:#60a5fa,marker:#f87171,prompt:#60a5fa"

export CM_LAUNCHER=$(which rofi)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fnm
FNM_PATH="/home/tma/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/tma/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# Load Angular CLI autocompletion.
source <(ng completion script)

# Zoxide
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# zprof # (PUT THIS IN THE LAST LINE)
