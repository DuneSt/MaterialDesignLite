rendering
renderFooterPaginationOn: aRenderer
	aRenderer mdlCardTextContainer 
		with: [ 
			aRenderer mdlGrid: [ 
				aRenderer mdlLayoutSpacer. 
				aRenderer div: [
					aRenderer text: 'Rows per page: '.
					aRenderer
						render:
							(MDLMenuButtonWidget
								possibilities: #(10 50 100 1000)
								label: #asString
								action: [ :o | self elementsToShow: o ]
								choosingText: self elementsToShow ).
								
					aRenderer text: '	'.
					aRenderer text: position asString, ' - ', (position + elementsToShow - 1) asString, '  of ', self rows size asString.
					aRenderer text: '	'.
						
					aRenderer anchor callback: [ self previousPosition ]; with: [aRenderer mdlButton colored;icon ; with: [ aRenderer mdlIcon: 'keyboard_arrow_left' ] ].
					aRenderer anchor callback: [ self nextPosition ]; with: [aRenderer mdlButton colored;icon ; with: [ aRenderer mdlIcon: 'keyboard_arrow_right' ] ] ] ] ]