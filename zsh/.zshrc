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
export VI_MODE_ESC_INSERT="kj" && plug "zap-zsh/vim"
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
bindkey '^Y' autosuggest-accept
bindkey -s '^o' "t^M"
bindkey -s '^e' "yy^M"

###############################################################################
#.########.########.########.########.##.....##.########.##.....##.########
#.##............##..##..........##....##.....##.##.......###...###.##......
#.##...........##...##..........##....##.....##.##.......####.####.##......
#.######......##....######......##....#########.######...##.###.##.######..
#.##.........##.....##..........##....##.....##.##.......##.....##.##......
#.##........##......##..........##....##.....##.##.......##.....##.##......
#.##.......########.##..........##....##.....##.########.##.....##.########
###############################################################################
# Rose pine
# export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
#   --layout=reverse \
#   --border=sharp \
# 	--color=fg:#908caa,bg:#191724,hl:#ebbcba
# 	--color=fg+:#e0def4,bg+:#26233a,hl+:#ebbcba
# 	--color=border:#403d52,header:#31748f,gutter:#191724
# 	--color=spinner:#f6c177,info:#9ccfd8
# 	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"

# Kanagawa
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --layout=reverse \
  --border=sharp \
	--color=fg:#C5C9C5,bg:#0D0C0C,hl:#2D4F67
	--color=fg+:#C8C093,bg+:#181616,hl+:#2D4F67
	--color=border:#A6A69C,header:#7FB4CA,gutter:#181616
	--color=spinner:#E6C384,info:#8BA4B0
	--color=pointer:#938AA9,marker:#E46876,prompt:#938AA9"
	
# Tokyonight
# export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
#   --layout=reverse \
#   --highlight-line \
#   --border=sharp \
# 	--color=fg:#c8d3f5,bg:#1e2030,hl:#65bcff
# 	--color=fg+:#c8d3f5,bg+:#1e2030,hl+:#65bcff
# 	--color=border:#589ed7,header:#ff966c,gutter:#1e2030
# 	--color=spinner:#ff007c,info:#545c7e
# 	--color=pointer:#ff007c,marker:#ff007c,prompt:#65bcff"

###############################################################################
# ▄▖▖▖▄▖▄▖▄▖▄▖  ▄▖▖ ▖▄   ▄▖▄▖▄▖▖▖                                              #
# ▙▖▚▘▙▌▌▌▙▘▐   ▌▌▛▖▌▌▌  ▙▌▌▌▐ ▙▌                                              #
# ▙▖▌▌▌ ▙▌▌▌▐   ▛▌▌▝▌▙▘  ▌ ▛▌▐ ▌▌                                              #
###############################################################################
# EDITOR
export EDITOR='nvim'

#gopls
export PATH="$HOME/go/bin:$PATH"

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
