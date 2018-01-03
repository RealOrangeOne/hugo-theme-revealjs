var REVEAL_USER_CONFIG = JSON.parse(document.getElementById('reveal-user-config').innerHTML);
var REVEAL_DEFAULT_CONFIG = JSON.parse(document.getElementById('reveal-default-config').innerHTML);


Reveal.initialize(Object.assign({}, REVEAL_DEFAULT_CONFIG, REVEAL_USER_CONFIG));
hljs.initHighlightingOnLoad();
