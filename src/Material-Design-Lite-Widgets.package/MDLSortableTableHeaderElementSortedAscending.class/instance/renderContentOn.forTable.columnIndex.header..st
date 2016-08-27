rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	(header headingCellOn: aRenderer)
		sortedAscending;
		with: [ 
			aRenderer anchor 
				callback: [ table sortDescendingAtRow: i. header goToNextState ];
				with: header element ]