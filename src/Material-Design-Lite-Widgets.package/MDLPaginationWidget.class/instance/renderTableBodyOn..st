rendering
renderTableBodyOn: html
	(groups at: currentPage)
		do: [ :anObject | 
			html
				tableRow: [ (displayBlock ifNotNil: [ displayBlock value: anObject ] ifNil: [ anObject tableItems ])
						do: [ :aStringOrBlock | html mdlTableCell: aStringOrBlock ] ] ]