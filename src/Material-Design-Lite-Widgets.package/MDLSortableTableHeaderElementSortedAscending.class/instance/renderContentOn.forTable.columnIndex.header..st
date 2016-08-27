rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	aRenderer
		mdlTableHeading: [ 
			aRenderer anchor 
				callback: [ table sortDescendingAtRow: i. header goToNextState ];
				with: [
					aRenderer mdlButton
								icon;
								with: [ aRenderer mdlIcon: 'keyboard_arrow_down' ].
					aRenderer text: header element ] ]