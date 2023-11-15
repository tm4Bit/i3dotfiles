#############################################################################################
# ███████╗███████╗██╗  ██╗                                                                #
# ╚══███╔╝██╔════╝██║  ██║                                                                #
#   ███╔╝ ███████╗███████║                                                                #
#  ███╔╝  ╚════██║██╔══██║                                                                #
# ███████╗███████║██║  ██║                                                                #
# ╚══════╝╚══════╝╚═╝  ╚═╝ (config)                                                       #
#############################################################################################

# PERFORMANCE:
# zmodload zsh/zprof # (DEBUG PERFORMANCE)
# zprof # (PUT THIS IN THE LAST LINE)

# Prompt
#figlet -f "ANSI Shadow" "tma42" | lolcat
#figlet -f smkeyboard "npm run dev" | lolcat
# neofetch

#############################################################################################
#  ▗ ▄▖▌   Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. #
#▛▌▜ ▛▌▙▘  Initialization code that may require console input (password prompts, [y/n]    #
#▙▌▟▖█▌▛▖  confirmations, etc.) must go above this block; everything else may go below.   #
#▌                                                                                        #
#############################################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#############################################################################################
#▀▌▀▌▛▌                                                                                   #
#▙▖█▌▙▌                                                                                   #
#    ▌                                                                                    #
#############################################################################################
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "Aloxaf/fzf-tab"
plug "zap-zsh/vim"
plug "romkatv/powerlevel10k"

#############################################################################################
#  ▌              ▌                                                                       #
#▛▌▛▌▄▖▛▛▌▌▌▄▖▀▌▛▘▛▌                                                                      #
#▙▌▌▌  ▌▌▌▙▌  ▙▖▄▌▌▌                                                                      #
#         ▄▌                                                                              #
#############################################################################################
# NOTE: To use oh-my-zsh
# export ZSH="$HOME/.oh-my-zsh"
# source $ZSH/oh-my-zsh.sh

#############################################################################################
#    ▘                                                                                    #
#▛▌▌▌▌▛▛▌                                                                                 #
#▌▌▚▘▌▌▌▌                                                                                 #
#############################################################################################

# alias v="vim"
# alias avim="NVIM_APPNAME='avim' nvim"

#############################################################################################
#  ▜ ▘                                                                                    #
#▀▌▐ ▌▀▌▛▘                                                                                #
#█▌▐▖▌█▌▄▌                                                                                #
#############################################################################################
# zsh and oh-my-zsh aliases
alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="nvim ~/.oh-my-zsh"

# System update and upgrade
alias update="yay -Suy"

# Java alias 
#alias javarun="../ && clear && javac -d bin src/**/*.java && cd bin && java application.Main"

# Tmux 
#alias tmx="tmuxinator"

# Git
alias commit="git commit -m"
alias add="git add -A"
alias push="git push"

# Lazygit 
alias lazy="lazygit"
alias g="git"

#############################################################################################
#▄▖▖▖▄▖▄▖▄▖▄▖  ▄▖▖ ▖▄   ▄▖▄▖▄▖▖▖                                                          #
#▙▖▚▘▙▌▌▌▙▘▐   ▌▌▛▖▌▌▌  ▙▌▌▌▐ ▙▌                                                          #
#▙▖▌▌▌ ▙▌▌▌▐   ▛▌▌▝▌▙▘  ▌ ▛▌▐ ▌▌                                                          #
#############################################################################################
# EDITOR
export EDITOR='nvim'

# Scripts
#PATH="$HOME/Documents/scripts:$PATH"

# Helix
#export PATH="$HOME/.cargo/bin:$PATH"
#export HELIX_RUNTIME="$HOME/Downloads/Programs/helix/runtime/"

#gopls
export PATH="$HOME/go/bin:$PATH"

# Deno
#export DENO_INSTALL="$HOME/.deno"
#export PATH="$DENO_INSTALL/bin:$PATH"

# astro
#export PATH="/run/user/1000/fnm_multishells/4045_1690885443883/bin:$PATH"

# Load Angular CLI autocompletion.
# source <(ng completion script)

# fnm
# export PATH="/home/tma/.local/share/fnm:$PATH"
# eval "`fnm env`"

# clang
#export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# zprof # (PUT THIS IN THE LAST LINE)
