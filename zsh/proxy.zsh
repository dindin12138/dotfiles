# Set Proxy
function setproxy() {
    export HTTP_PROXY="http://127.0.0.1:7890"
    export HTTPS_PROXY="http://127.0.0.1:7890"
    export ALL_PROXY="socks5://127.0.0.1:7890"
}

# Unset Proxy
function unsetproxy() {
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset ALL_PROXY
}

# Cat Proxy
function catproxy() {
    echo $ALL_PROXY
}

setproxy
