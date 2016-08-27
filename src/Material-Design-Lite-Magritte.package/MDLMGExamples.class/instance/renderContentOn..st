rendering
renderContentOn: html
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCellDesktop: 4 tablet: 12 phone: 12 with: [ 
			html mdlCard 
			shadow: 2;
			with: [ 
				html mdlCardTitle: [ html mdlCardTitleText: 'Material Design with Magritte' level: 2 ].
				html mdlCardActions 
					border; 
					with: self menu 
				]
		 ].
		html mdlLayoutSpacer 
	]