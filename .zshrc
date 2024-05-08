#############################################################################################
# ███████╗███████╗██╗  ██╗
# ╚══███╔╝██╔════╝██║  ██║
#   ███╔╝ ███████╗███████║
#  ███╔╝  ╚════██║██╔══██║
# ███████╗███████║██║  ██║
# ╚══════╝╚══════╝╚═╝  ╚═╝ (config)
#############################################################################################

# PERFORMANCE:
# zmodload zsh/zprof # (DEBUG PERFORMANCE)
# zprof # (PUT THIS IN THE LAST LINE)

# Prompt
#figlet -f "ANSI Shadow" "tma42" | lolcat
#figlet -f smkeyboard "npm run dev" | lolcat
# neofetch

#############################################################################################
#  ▗ ▄▖▌   Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#▛▌▜ ▛▌▙▘  Initialization code that may require console input (password prompts, [y/n]
#▙▌▟▖█▌▛▖  confirmations, etc.) must go above this block; everything else may go below.
#▌
#############################################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#############################################################################################
#▀▌▀▌▛▌
#▙▖█▌▙▌
#    ▌
#############################################################################################
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "Aloxaf/fzf-tab"
plug "zap-zsh/vim"
plug "romkatv/powerlevel10k"
plug "hlissner/zsh-autopair"
# plug "TiagoAraujoDev/fzf-zellij"

#############################################################################################
#    ▘
#▛▌▌▌▌▛▛▌
#▌▌▚▘▌▌▌▌
#############################################################################################

# alias v="vim"
# alias avim="NVIM_APPNAME='avim' nvim"

#############################################################################################
#  ▜ ▘
#▀▌▐ ▌▀▌▛▘
#█▌▐▖▌█▌▄▌
#############################################################################################
# zsh and oh-my-zsh aliases
alias zshconfig="vim ~/.zshrc"

# System update and upgrade
alias update="yay -Suy"

# Java alias 
#alias javarun="../ && clear && javac -d bin src/**/*.java && cd bin && java application.Main"

# Tmux 
#alias tmx="tmuxinator"

# Git
alias g="git"
alias gs="git status"
alias gc="git commit -m"
alias ga="git add -A"
alias gp="git push"
alias gl="git log"

# Lazygit 
alias lazy="lazygit"

# zellij
alias z="zellij"
alias zw="zellij -l welcome"

#############################################################################################
#▄▖▖▖▄▖▄▖▄▖▄▖  ▄▖▖ ▖▄   ▄▖▄▖▄▖▖▖
#▙▖▚▘▙▌▌▌▙▘▐   ▌▌▛▖▌▌▌  ▙▌▌▌▐ ▙▌
#▙▖▌▌▌ ▙▌▌▌▐   ▛▌▌▝▌▙▘  ▌ ▛▌▐ ▌▌
#############################################################################################
# EDITOR
export EDITOR='nvim'

#gopls
export PATH="$HOME/go/bin:$PATH"

# fnm
# export PATH="/home/tma/.local/share/fnm:$PATH"
# eval "`fnm env`"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# zprof # (PUT THIS IN THE LAST LINE)
