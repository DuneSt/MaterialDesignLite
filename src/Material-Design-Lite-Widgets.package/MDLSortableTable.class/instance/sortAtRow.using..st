sorting
sortAtRow: aRowIndex using: aSelector
	header
		do: [ :each | 
			(header at: aRowIndex) = each
				ifFalse: [ each unsort ] ].
	rows := self rows
		sorted: [ :cell :anotherCell | 
			[ (cell at: aRowIndex) perform: aSelector with: (anotherCell at: aRowIndex) ]
				on: MessageNotUnderstood "If the element does not implements the comparators then I should not sort them."
				do: [ true ]	 ]