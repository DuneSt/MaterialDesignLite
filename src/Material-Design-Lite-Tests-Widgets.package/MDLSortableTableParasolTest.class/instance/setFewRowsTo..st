initialization
setFewRowsTo: table
	^ table
		rows: [ (1 to: 8)
				collect: [ :e | 
					{e.
					e asString.
					(e * 2)} ] ]