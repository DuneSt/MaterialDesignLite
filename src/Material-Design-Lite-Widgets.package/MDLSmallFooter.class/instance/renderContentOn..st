rendering
renderContentOn: html
	html mdlMiniFooter: [ 
			html mdlMiniFooterLeftSection: [ self renderLinksOn: html ].
			html mdlMiniFooterRightSection: [ self renderRightSideOn: html ] ] 