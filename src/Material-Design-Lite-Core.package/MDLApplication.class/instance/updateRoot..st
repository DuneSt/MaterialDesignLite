updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.', self colors,'.min.css').