rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	aRenderer
		mdlTableHeading: [ 
			aRenderer anchor 
				callback: [ table sortAscendingAtRow: i. header goToNextState ];
				with: [ aRenderer text: header element ] ]