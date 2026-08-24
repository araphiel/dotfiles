# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Antidote
source ~/.antidote/antidote.zsh
antidote load

# FZF
source <(fzf --zsh)

# Starship
eval "$(starship init zsh)"

# Skip forward or backwards within the terminal prompt with `Control + ➡️` or `Control + ⬅️`
bindkey '[C' forward-word
bindkey '[D' backward-word

# Use vscode as my preferred editor for local and remote sessions
export EDITOR='code'

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

# Node
eval "$(fnm env --use-on-cd)"
