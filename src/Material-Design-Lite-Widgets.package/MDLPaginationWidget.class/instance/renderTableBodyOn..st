rendering
renderTableBodyOn: html
	(groups at: currentPage)
		do: [ :anObject | 
			html
				tableRow: [ anObject tableItems do: [ :aStringOrBlock | html mdlTableCell: aStringOrBlock ] ] ]