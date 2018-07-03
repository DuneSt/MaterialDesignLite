tests
testUnsort
	header goToNextState.
	self deny: header currentState class equals: MDLSortableTableHeaderElementUnsorted.
	header unsort.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted