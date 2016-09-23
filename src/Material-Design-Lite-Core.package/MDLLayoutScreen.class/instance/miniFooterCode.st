code
miniFooterCode
	^ 'html mdlMiniFooter: [ 
	html mdlMiniFooterLeftSection: [ 
		html mdlLogo: ''Title''.
		html mdlMiniFooterLinkList: [ 
			html listItem: [ html anchor: ''Help'' ].
			html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'