rendering
renderMiniFooterOn: html
	html mdlMiniFooter class: 'examples'; style: 'margin-bottom: 20px;'; with: [ 
		html mdlMiniFooterLeftSection: [ 
			html mdlLogo: 'Title'.
			html mdlMiniFooterLinkList: [ 
				html listItem: [ html anchor: 'Help' ].
				html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self miniFooterCode ]