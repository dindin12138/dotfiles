// Compatibility Prefix
const {
    Clipboard,
    Front,
    Hints,
    Normal,
    RUNTIME,
    Visual,
    aceVimMap,
    addSearchAlias,
    cmap,
    getClickableElements,
    imap,
    imapkey,
    iunmap,
    map,
    mapkey,
    readText,
    removeSearchAlias,
    tabOpenLink,
    unmap,
    unmapAllExcept,
    vmapkey,
    vunmap
} = api;

// ---- Settings ----
Hints.setCharacters('asdfgyuiopqwertnmzxcvb');

settings.defaultSearchEngine = 'g';
settings.hintAlign = 'left';
settings.focusFirstCandidate = false;
settings.focusAfterClosed = 'last';
settings.scrollStepSize = 200;
settings.tabsThreshold = 0;
settings.modeAfterYank = 'Normal';

// Open Hint in new tab
map('F', 'C');

// Open Clipboard URL in current tab
mapkey('p', "Open the clipboard's URL in the current tab", () => { Clipboard.read(function(response) { window.location.href = response.data; }); });
// Open Clipboard URL in new tab
map('P', 'cc');

// Edit current URL, and open in same tab
map('O', ';U');

// History Back/Forward
map('H', 'S');
map('L', 'D');

// Next/Prev Page
map('K', 'E');
map('J', 'R');

// Move Tab Left/Right w/ one press
map('>', '>>');
map('<', '<<');

// ---- Unmap -----
unmap('S');
unmap('D');
unmap('E');
unmap('R');

// ---- Search Engines -----
removeSearchAlias('b', 's');
addSearchAlias('bd', 'baidu', 'https://www.baidu.com/s?wd=', 's');
removeSearchAlias('d', 's');
addSearchAlias('dd', 'duckduckgo', 'https://duckduckgo.com/?q=', 's');
removeSearchAlias('g', 's');
addSearchAlias('gg', 'google', 'https://www.google.com.hk/search?q=', 's');
removeSearchAlias('h', 's');
addSearchAlias('gh', 'github', 'https://github.com/search?q=', 's');
removeSearchAlias('w', 's');
addSearchAlias('bi', 'bing', 'https://www.bing.com/search?q=', 's');
removeSearchAlias('y', 's');
addSearchAlias('yt', 'youtube', 'https://www.youtube.com/results?search_query=', 's');
removeSearchAlias('s', 's');
addSearchAlias('so', 'stackoverflow', 'https://stackoverflow.com/search?q=', 's');
removeSearchAlias('e', 's');
addSearchAlias('wk', 'wikipedia', 'https://en.wikipedia.org/wiki/Special:Search/', 's');
// --------------------
addSearchAlias('bl', 'bilibili', 'https://search.bilibili.com/all?keyword=', 's');
addSearchAlias('z', 'zhihu', 'https://www.zhihu.com/search?type=content&q=', 's');
addSearchAlias('a', 'amazon', 'https://www.amazon.com/s?k=', 's');
addSearchAlias('ap', 'arch pkg', 'https://www.archlinux.org/packages/?sort=&q=', 's');
addSearchAlias('aur', 'aur', 'https://aur.archlinux.org/packages/?O=0&SeB=nd&K=', 's');
addSearchAlias('aw', 'arch wiki', 'https://wiki.archlinux.org/index.php?title=Special:Search&search=', 's');
addSearchAlias('dh', 'docker hub', 'https://hub.docker.com/search?type=image&q=', 's');
addSearchAlias('fh', 'flathub', 'https://flathub.org/apps/search/', 's');
addSearchAlias('pt', 'proton', 'https://www.protondb.com/search?q=', 's');
addSearchAlias('r', 'reddit', 'https://libreddit.spike.codes/r/', 's');
addSearchAlias('st', 'steam', 'https://store.steampowered.com/search/?term=', 's');
addSearchAlias('id', 'invidious', 'https://invidious.snopyta.org/search?q=', 's');
