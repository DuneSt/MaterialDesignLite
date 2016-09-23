rendering
renderRowContentFor: cells on: html
	header
		doWithIndex: [ :headerCell :columnIndex | 
			| cell |
			(headerCell tableCellOn: html)
				with:
					((cell := cells at: columnIndex) isBlock
						ifTrue: [ [ cell cull: html ] ]
						ifFalse: [ cell ]) ]