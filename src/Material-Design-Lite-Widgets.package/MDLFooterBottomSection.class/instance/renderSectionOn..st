as yet unclassified
renderSectionOn: html
	html
		mdlFooterBottomSection: [ 
			links
				keysAndValuesDo: [ :k :v | 
					html mdlLogo: k.
					self renderLinks: v on: html ] ]