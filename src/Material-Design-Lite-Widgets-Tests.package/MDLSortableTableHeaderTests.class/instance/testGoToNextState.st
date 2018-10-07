tests
testGoToNextState
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted defaultNextState defaultNextState.
	header goToNextState.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted
	