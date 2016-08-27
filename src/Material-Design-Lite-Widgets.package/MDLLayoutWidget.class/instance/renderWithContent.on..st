rendering
renderWithContent: aBlock on: html
	html mdlLayout: [ 
		html mdlLayoutHeader: [ 
			html mdlLayoutHeaderRow: [ 
				html mdlLayoutTitle: self title.
				html mdlLayoutSpacer.
				self renderLinksOn: html ] ].
		html mdlLayoutContent: [ 
			aBlock value ] ]