rendering
renderFooterPaginationOn: html
	html mdlCardTextContainer 
		with: [ 
			html div
				mdlTypographyTextRight;
				with: [ 
						html text: 'Rows per page: '.
						html
							render:
								((MDLMenuButtonWidget
									possibilities: rowsPerPagePossibilities
									label: #asString
									action: [ :o | self elementsToShow: o ]
									choosingText: self elementsToShow )
										sortBlock: [ :a :b | a key asInteger <= b key asInteger ])
										yourself.
									
						html text: '	'.
						html text: position asString, ' - ', (position + elementsToShow - 1) asString, '  of ', self rows size asString.
						html text: '	'.
						
						html anchor callback: [ self previousPosition ]; with: [html mdlButton colored;icon ; with: [ html mdlIcon: 'keyboard_arrow_left' ] ].
						html anchor callback: [ self nextPosition ]; with: [html mdlButton colored;icon ; with: [ html mdlIcon: 'keyboard_arrow_right' ] ] ] ]