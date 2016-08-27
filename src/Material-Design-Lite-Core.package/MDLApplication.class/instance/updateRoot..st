updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.', self colors,'.min.css').
	anHtmlRoot script url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.min.js').
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://fonts.googleapis.com/icon?family=Material+Icons').
	anHtmlRoot script url: (WAUrl absolute: 'https://cdnjs.cloudflare.com/ajax/libs/dialog-polyfill/0.4.2/dialog-polyfill.min.js').
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://cdnjs.cloudflare.com/ajax/libs/dialog-polyfill/0.4.3/dialog-polyfill.min.css')