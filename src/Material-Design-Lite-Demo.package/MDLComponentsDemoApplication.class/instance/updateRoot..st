updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: (MDLDemoLibrary urlOf: #myStyleCss).
	anHtmlRoot script url: (MDLDemoLibrary urlOf: #highlightpackJs).
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'