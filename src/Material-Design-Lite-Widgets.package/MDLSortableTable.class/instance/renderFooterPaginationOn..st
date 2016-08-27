rendering
renderFooterPaginationOn: aRenderer
	aRenderer mdlCardTextContainer 
		with: [ 
			aRenderer div
				mdlTypographyTextRight;
				with: [ 
						aRenderer text: 'Rows per page: '.
						aRenderer
							render:
								((MDLMenuButtonWidget
									possibilities: rowsPerPagePossibilities
									label: #asString
									action: [ :o | self elementsToShow: o ]
									choosingText: self elementsToShow )
										sortBlock: [ :a :b | a key asInteger <= b key asInteger ])
										yourself.
									
						aRenderer text: '	'.
						aRenderer text: position asString, ' - ', (position + elementsToShow - 1) asString, '  of ', self rows size asString.
						aRenderer text: '	'.
						
						aRenderer anchor callback: [ self previousPosition ]; with: [aRenderer mdlButton colored;icon ; with: [ aRenderer mdlIcon: 'keyboard_arrow_left' ] ].
						aRenderer anchor callback: [ self nextPosition ]; with: [aRenderer mdlButton colored;icon ; with: [ aRenderer mdlIcon: 'keyboard_arrow_right' ] ] ] ]