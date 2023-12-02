export FZF_DEFAULT_OPTS="--prompt=' FZF 󰄾 ' --height 50% --layout reverse --border rounded \
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,dist,vendor} --type f"

export _ZO_FZF_OPTS="--prompt=' FZF 󰄾 ' --height 50% --layout reverse --border rounded \
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

function f() {
    if [[ -n "$1" ]]; then
        local original_dir=$(pwd)
        z "$1"
        fzf --prompt=" FZF Preview 󰄾 " --height 50% --layout reverse --border --preview 'bat --color=always --style=plain {}'
        cd "$original_dir"
    else
        fzf --prompt=" FZF Preview 󰄾 " --height 50% --layout reverse --border --preview 'bat --color=always --style=plain {}'
    fi
}

function fv() {
    if [[ -n "$1" ]]; then
        z "$1"
        local file=$(fzf --prompt=" FZF Neovim 󰄾 " --height 50% --layout reverse --border --preview 'bat --color=always --style=plain {}')
        if [[ -n "$file" ]]; then
            nvim "$file"
        fi
    else
        local file=$(fzf --prompt=" FZF Neovim 󰄾 " --height 50% --layout reverse --border --preview 'bat --color=always --style=plain {}')
        if [[ -n "$file" ]]; then
            nvim "$file"
        fi
    fi
}
