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
settings.omnibarPosition = 'bottom';
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

addSearchAlias('p', 'github', 'https://github.com/search?q=', 's');
