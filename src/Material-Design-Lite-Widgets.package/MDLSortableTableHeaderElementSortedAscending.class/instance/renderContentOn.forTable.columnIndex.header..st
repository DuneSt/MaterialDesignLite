rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	(header headingCellOn: aRenderer)
		sortedAscending;
		with: [ 
			aRenderer anchor 
				style: 'color: rgba(0,0,0,.54); text-decoration: none; font-weight: 700;';
				callback: [ table sortDescendingAtRow: i. header goToNextState ];
				with: header element ]