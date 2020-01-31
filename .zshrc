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
  dotenv           # automatically source .env files
  git              # git aliases
  gpg-agent        # ensure gpg-agent is running
  last-working-dir # new shells default to last working dir
  safe-paste       # never auto-run pasted code
)

source $ZSH/oh-my-zsh.sh

# Basic configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
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

