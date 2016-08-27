rendering
renderContentOn: html
	html mdlMiniFooter: [ 
			html mdlMiniFooterLeftSection: [ leftSection renderSectionOn: html ].
			html mdlMiniFooterRightSection: [ rightSection renderSectionOn: html ] ] 