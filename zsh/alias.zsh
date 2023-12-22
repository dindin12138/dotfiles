alias ls='exa'
alias la='exa -lha --group-directories-first --git'
alias ll='exa -lh --group-directories-first --git'
alias lt='exa -T --git-ignore --level=2 --group-directories-first'

alias ra="joshuto"
alias nf="fastfetch"
alias vim="nvim"
alias vi="nvim"
alias cat="bat"
alias icat="kitty +kitten icat"
alias lg="lazygit"

alias code-cpp="code --profile 'Clangd Development'"
alias code-rust="code --profile 'Rust Development'"
alias code-go="code --profile 'Go Development'"
alias code-python="code --profile 'Python Development'"
alias code-remote="code --profile 'Remote Development'"

# alias zi='z -i'
# alias zb='z -b'
# alias zf='z -I -t .'
# alias zf='function _zf() { cd "$(z -l | fzf)" && fzf; }; _zf'

# Some tmux-related shell aliases
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new-session'
# Lists all ongoing sessions
alias tl='tmux list-sessions'
