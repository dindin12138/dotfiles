# Set Proxy
function setproxy() {
    export {http,https,frp}_proxy="http://127.0.0.1:8889"
    echo -e "Terminal proxy is enabled"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
    echo -e "Terminal proxy is disabled"
}

# Cat Proxy
function catproxy() {
    echo $http_proxy
}
