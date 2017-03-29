rendering
renderContentOn: html forTable: table columnIndex: i header: header
	(header headingCellOn: html)
		sortedAscending;
		onClick:
			(self
				onClickScriptForTable: table
				columnIndex: i
				header: header
				from: html);
		with: header element