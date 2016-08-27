rendering
renderContentOn: html
	html
		mdlGrid: [ 
			html mdlCard
				shadow: 2;
				style: 'overflow: visible; width: 100%;';
				with: [ 
							self title
								ifNotNil: [ 
									html mdlCardTitle
										style: 'padding-left: 24px;';
										with: [ html mdlCardTitleText: self title level: 2 ] ].
							(selectable
								ifTrue: [ html mdlTable selectable ]
								ifFalse: [ html mdlTable ])
								style: 'width: 100%; border: none';
								with: [ 
											self renderHeaderOn: html.
											self renderRowsOn: html ].
							self renderFooterPaginationOn: html ] ]