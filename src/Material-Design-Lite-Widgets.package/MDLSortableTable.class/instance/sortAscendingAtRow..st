sorting
sortAscendingAtRow: aRowIndex
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsort ] ].
	rows := rows sorted: [ :cell :anotherCell | (cell at: aRowIndex) > (anotherCell at: aRowIndex) ]