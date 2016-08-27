as yet unclassified
renderLinksOn: html
	links keysAndValuesDo: [ :label :callback | 
		html listItem: [ 
			html anchor
				callback: callback;
				with: label ] ]