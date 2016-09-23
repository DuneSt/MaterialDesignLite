rendering-table
renderTableFootOn: html
		self visibleColumns do: [ :each |
			each renderFootCellOn: html ]