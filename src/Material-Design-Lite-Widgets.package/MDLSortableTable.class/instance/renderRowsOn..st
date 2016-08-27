rendering
renderRowsOn: html
	position to: (self rows size min: position + elementsToShow) do: [ :i | 
		html
			tableRow: [ 
				| cells |
				cells := self rows at: i.
				1 to: header size do: [ :j | 
					((header at: j) tableCellOn: html)
						with:
							((cells at: j) isBlock
								ifTrue: [ [ (cells at: j) cull: html ] ]
								ifFalse: [ cells at: j ]) ] ] ]