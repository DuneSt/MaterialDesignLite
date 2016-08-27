as yet unclassified
renderLinks: v on: html
	html
		mdlFooterLinkList: [ 
			v
				keysAndValuesDo: [ :label :callback | 
					html
						listItem: [ 
							html anchor
								callback: callback;
								with: label ] ] ]