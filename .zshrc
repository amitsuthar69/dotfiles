# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "romkatv/powerlevel10k"
plug "hlissner/zsh-autopair"

# Load and initialise completion system
autoload -Uz compinit
compinit


# --------- git ---------
alias steal='git clone'
alias add='git add .'
alias mess='git commit -m'
alias pull='git pull origin'
alias push='git push origin'
alias new-branch='git switch -c'
alias switch='git switch'

alias pull-push='pull main && push main'
alias commit='add && mess'

alias git-fix='git add . && git commit -m "fixes" && pull-push'
alias git-feat='git add . && git commit -m "new-feature" && pull-push'


# --------- fs ---------
alias open='codium'
alias pn='cd Documents/Programming-Notes'
alias open-pn='cd Documents/Programming-Notes && codium .'

# --------- system ---------
alias update='sudo pacman -Syu'
alias eos-up='eos-update --yay'
alias btop='btop --utf-force'
alias audio-restart='systemctl --user restart pulseaudio.service'

# ---------- mariadb ---------
alias maria-start='sudo systemctl start mariadb'
alias maria-stop='sudo systemctl stop mariadb'
alias maria-status='sudo systemctl status mariadb'

# --------- python ----------
alias pyenv='source ~/pyenv/bin/activate'

# --------- Go ---------------
alias lfg='go build && go run'
alias air='~/go/bin/air'
alias go-blueprint='~/go/bin/go-blueprint'
alias templ='~/go/bin/templ'

# docker
alias docker-desktop-start='systemctl --user start docker-desktop'
alias docker-desktop-stop='systemctl --user stop docker-desktop'

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/amit/.local/bin

# Turso
export PATH="/home/amit/.turso:$PATH"
