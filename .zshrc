# oh-my-sh-config

export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="eastwood"
export COMPLETION_WAITING_DOTS="true"

# Disable dirty markings for untracked files when dealing with large repos
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Timestamps for `history` output
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(
  git              # git aliases
  gpg-agent        # ensure gpg-agent is running
  safe-paste       # never auto-run pasted code
)

source $ZSH/oh-my-zsh.sh

# Basic configuration
export PATH="/opt/homebrew/opt/postgresql@15/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/rjoonas/Library/Python/3.8/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

export EDITOR='vim'

# Aliases
alias gpp="git pull --prune"
alias prune="git branch --merged master | grep -v master | xargs -n 1 git branch -d"
alias serve="open http://localhost:8001 && python -m SimpleHTTPServer 8001"
alias undss="find . -name '*.DS_Store' -type f -delete"
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias v="vim -p"

# Usage: `genpw 32`
genpw () { head /dev/urandom | base64 | cut -c 1-$1 }

fixaudio () {
  sudo rm /Library/Preferences/Audio/com.apple.audio.DeviceSettings.plist
  sudo rm /Library/Preferences/Audio/com.apple.audio.SystemSettings.plist
  sudo killall coreaudiod
}

# GPG
GPG_TTY=$(tty)
export GPG_TTY

# fnm
export PATH=~/.fnm:$PATH
eval "`fnm env`"

# zoxide
eval "$(zoxide init zsh)"

