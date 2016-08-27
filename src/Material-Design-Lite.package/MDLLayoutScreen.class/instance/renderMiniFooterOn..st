as yet unclassified
renderMiniFooterOn: html
	html mdlMiniFooter: [ 
		html mdlMiniFooterLeftSection: [ 
			html mdlLogo: 'Title'.
			html mdlMiniFooterLinkList: [ 
				html listItem: [ html anchor: 'Help' ].
				html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self miniFooterCode ]