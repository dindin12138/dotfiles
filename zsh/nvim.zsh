alias kickstart-nvim="NVIM_APPNAME=kickstart-nvim nvim"
alias vscode-neovim="NVIM_APPNAME=VSCode-Neovim nvim"

function nvims() {
    items=("Default" "kickstart-nvim" "VSCode-Neovim")
    config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config 󰄾 " --height=~50% --layout=reverse --border --exit-0)
    if [[ -z $config ]]; then
        echo "Nothing selected"
        return 0
    elif [[ $config == "default" ]]; then
        config=""
    fi
    NVIM_APPNAME=$config nvim $@
}
