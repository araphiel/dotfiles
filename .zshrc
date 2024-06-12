# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# zsh specific
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

zstyle ':omz:update' mode auto # update automatically without asking

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Skip forward within the terminal prompt with `Control + ➡️`
bindkey '[C' forward-word  

# Skip backwards within the terminal prompt with `Control + ⬅️`
bindkey '[D' backward-word

# Use vscode as my preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Client Specific Section

# Aliases
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshconfig="code ~/.zshrc"
alias sshconfig="code ~/.ssh"
alias pn="pnpm"

# Clear DNS Cache 
alias flush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# Rebase based on previous branch
# Usage: `grb!` — rebase current branch against `main`
# Usage: `grb! example-branch` — rebase current branch against `example-branch`
alias grb!='f() { git rebase -i "$(git merge-base origin/${1:-main} HEAD)"; unset -f f; }; f'

# Ruby
export BUNDLE_PATH=~/.gem
eval "$(rbenv init - zsh)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Java
# export JAVA_HOME=$(/usr/libexec/java_home -v 17)

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# Node
eval "$(fnm env --use-on-cd)"

# Bun
[ -s "/Users/armon/.bun/_bun" ] && source "/Users/armon/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/armon/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
