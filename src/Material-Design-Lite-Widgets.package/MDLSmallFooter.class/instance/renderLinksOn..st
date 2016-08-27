rendering
renderLinksOn: html
	leftSection keysAndValuesDo: [ :header :links | 
		html mdlLogo: header.
		html mdlMiniFooterLinkList: [ 
			links keysAndValuesDo: [ :label :callback | 
				html listItem: [ 
					html anchor
						callback: callback;
						with: label ] ] ] ]