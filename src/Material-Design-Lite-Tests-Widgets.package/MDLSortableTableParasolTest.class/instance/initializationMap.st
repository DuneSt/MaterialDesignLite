hook
initializationMap
	^ Dictionary new
		at: #testTableWithOnePageHasEnoughtRows put: [ :table | self setFewRowsTo: table ];
		at: #testSortColumn put: [ :table | self setSortDatasTo: table ];
		yourself