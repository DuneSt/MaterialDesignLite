rendering
renderRowsOn: aRenderer
	position to: (rows size min: position + elementsToShow) do: [ :i | 
		aRenderer
			tableRow: [ | cells |
				cells := rows at: i.
				1 to: header size do: [ :j | ((header at: j) tableCellOn: aRenderer) with: (cells at: j) ] ] ]