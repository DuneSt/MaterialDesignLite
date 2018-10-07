tests
testUnsort
	header goToNextState.
	self flag: #clean. "#deny:equals: was introduced in P6. When P5 support will be dorpped, uses #deny:equals:."
	self deny: header currentState class == MDLSortableTableHeaderElementUnsorted.
	header unsort.
	self assert: header currentState class equals: MDLSortableTableHeaderElementUnsorted