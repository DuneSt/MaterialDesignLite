updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Demo - Material Design Lite for Seaside'.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.pink-teal.min.css').
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'