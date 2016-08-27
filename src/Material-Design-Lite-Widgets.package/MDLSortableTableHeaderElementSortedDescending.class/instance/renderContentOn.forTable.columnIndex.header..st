rendering
renderContentOn: html forTable: table columnIndex: i header: header
	(header headingCellOn: html)
		sortedDescending;
		onClick:
				(html jQuery ajax
						callback: [ 
									table unsort.
									header goToNextState ];
						onSuccess: (table ajaxUpdateScriptFrom: html));
		with: header element