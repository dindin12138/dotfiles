# Set Proxy
function setproxy() {
    export {http,https,frp}_proxy="http://127.0.0.1:8889"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}
