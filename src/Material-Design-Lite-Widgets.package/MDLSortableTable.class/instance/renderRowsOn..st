rendering
renderRowsOn: html
	((position to: (self rows size min: position + elementsToShow)) collect: [ :rowIndex | self rows at: rowIndex ])
		do: [ :cells | html tableRow: [ self renderRowContentFor: cells on: html ] ]