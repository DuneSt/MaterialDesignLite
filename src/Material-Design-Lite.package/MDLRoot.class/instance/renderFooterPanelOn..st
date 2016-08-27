rendering
renderFooterPanelOn: html
html mdlTabsPanel
		id: 'footer';
		with: [ 
	html mdlFooter: [ 
		html mdlFooterMiddleSection: [ 
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading level4 ;with: 'Features'.
				html mdlFooterLinkList: [ 
					#( 'About' 'Terms' 'Partners' 'Update' ) do: [ :each | html listItem: [ html anchor url: '#' ; with: each ] ]
				 ] ].
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading level4 ;with: 'Details'.
				html mdlFooterLinkList: [ 
					#( 'Specs' 'Tools' 'Resources' ) do: [ :each | html listItem: [ html anchor url: '#' ; with: each ] ]
				 ] ].
			html mdlFooterDropdownSection: [ 
				html mdlFooterHeadingCheckbox.
				html mdlFooterHeading level4 ;with: 'Technology'.
				html mdlFooterLinkList: [ 
					#( 'How it works' 'Patterns' 'Usage' 'Products' 'Contracts' ) do: [ :each | html listItem: [ html anchor url: '#' ; with: each ] ]
				 ] ] ].
		html mdlFooterBottomSection: [ 
			html mdlLogo: 'Title'.
			html mdlFooterLinkList: [ 
					#( 'Help' 'Privacy & Terms' ) do: [ :each | html listItem: [ html anchor url: '#' ; with: each ] ]
				 ]
			 ]
		 ] ]