rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	(header headingCellOn: aRenderer)
		sortedDescending;
		with: [ 
			aRenderer anchor 
				callback: [ table unsort. header goToNextState ];
				with: header element ]