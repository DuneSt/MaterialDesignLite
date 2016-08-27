rendering
renderContentOn: aRenderer
	super renderContentOn: aRenderer.
	aRenderer
		mdlGrid: [ 
			aRenderer mdlCard
				shadow: 2;
				style: 'overflow: visible; width: ' , self width asString;
				with: [ 
							self title
								ifNotNil: [ 
									aRenderer mdlCardTitle
										style: 'padding-left: 24px;';
										with: [ aRenderer mdlCardTitleText: self title level: 2 ] ].
							(selectable
								ifTrue: [ aRenderer mdlTable selectable ]
								ifFalse: [ aRenderer mdlTable ])
								style: 'width: 100%; border: none';
								with: [ 
											self renderHeaderOn: aRenderer.
											self renderRowsOn: aRenderer ].
							self renderFooterPaginationOn: aRenderer ] ]