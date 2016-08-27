sorting
sortAscendingAtRow: aRowIndex
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsort ] ].
	rows :=  self rows sorted: [ :cell :anotherCell | (cell at: aRowIndex) > (anotherCell at: aRowIndex) ]