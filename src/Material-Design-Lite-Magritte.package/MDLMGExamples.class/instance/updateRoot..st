updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	JQDevelopmentLibrary default updateRoot: anHtmlRoot.
	
	anHtmlRoot title: 'MDL-Magritte examples'.
	
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.indigo-pink.min.css').
	anHtmlRoot script url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.min.js').
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://fonts.googleapis.com/icon?family=Material+Icons').
