rendering
renderHeaderOn: html
	html render: (MDLHeader new links: self initializeLinks) beCollapsible