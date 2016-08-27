rendering
renderContentOn: aRenderer forTable: table columnIndex: i header: header
	(header headingCellOn: aRenderer)
		with: [ 
			aRenderer anchor 
				style: 'color: rgba(0,0,0,.54); text-decoration: none; font-weight: 700;';
				callback: [ table sortAscendingAtRow: i. header goToNextState ];
				with: header element ]