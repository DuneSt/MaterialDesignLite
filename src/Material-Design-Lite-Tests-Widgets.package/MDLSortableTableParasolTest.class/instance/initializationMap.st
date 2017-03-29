hook
initializationMap
	^ Dictionary new
		at: #testTableWithOnePageHasEnoughtRows
			put: [ :table | 
			table
				rows: [ (1 to: 8)
						collect: [ :e | 
							{e.
							e asString.
							(e * 2)} ] ] ];
		yourself