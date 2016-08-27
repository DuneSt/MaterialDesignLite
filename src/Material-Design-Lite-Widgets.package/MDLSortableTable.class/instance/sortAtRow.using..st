sorting
sortAtRow: aRowIndex using: aSelector
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsort ] ].
	rows := self rows
		sorted: [ :cell :anotherCell | (cell at: aRowIndex) perform: aSelector with: (anotherCell at: aRowIndex) ]