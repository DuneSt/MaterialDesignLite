as yet unclassified
renderContentOn: html
	html
		mdlLayoutDrawer: [ 
			html mdlLayoutTitle
				style: 'border-bottom: 1px solid #e0e0e0; margin: 0px 0px 16px 0px';
				with: layout title.
			self renderLinksOn: html ]