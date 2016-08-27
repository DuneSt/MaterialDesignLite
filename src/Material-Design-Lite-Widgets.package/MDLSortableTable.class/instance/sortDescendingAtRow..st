sorting
sortDescendingAtRow: aRowIndex
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsorted ] ].
	rows := rows sorted: [ :cell :anotherCell | (cell at: aRowIndex) > (anotherCell at: aRowIndex) ]