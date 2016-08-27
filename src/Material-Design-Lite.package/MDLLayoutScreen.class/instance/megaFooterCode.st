as yet unclassified
megaFooterCode
	^ 'html mdlFooter: [ 
	html mdlFooterMiddleSection: [ 
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Features''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''About'' ].
				html listItem: [ html anchor: ''Terms'' ].
				html listItem: [ html anchor: ''Partners'' ].
				html listItem: [ html anchor: ''Updates'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Details''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''Specs'' ].
				html listItem: [ html anchor: ''Tools'' ].
				html listItem: [ html anchor: ''Ressources'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''Technology''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''How it works'' ].
				html listItem: [ html anchor: ''Patterns'' ].
				html listItem: [ html anchor: ''Usage'' ].
				html listItem: [ html anchor: ''Products'' ].
				html listItem: [ html anchor: ''Contracts'' ] ] ].
		html mdlFooterDropdownSection: [ 
			html mdlFooterHeadingCheckbox.
			html mdlFooterHeading: ''FAQ''.
			html mdlFooterLinkList: [ 
				html listItem: [ html anchor: ''Questions'' ].
				html listItem: [ html anchor: ''Answers'' ].
				html listItem: [ html anchor: ''Contact us'' ] ] ] ].
	html mdlFooterBottomSection: [ 
		html mdlLogo: ''Title''.
		html mdlFooterLinkList: [ 
			html listItem: [ html anchor: ''Help'' ].
			html listItem: [ html anchor: ''Privacy & Terms'' ] ] ] ]'