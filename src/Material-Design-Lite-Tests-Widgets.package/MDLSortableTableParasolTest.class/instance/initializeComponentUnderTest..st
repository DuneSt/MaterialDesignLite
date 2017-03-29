hook
initializeComponentUnderTest: aComponent
	aComponent
		header: {'Number' . 'Number As String' . 'Number * 2'};
		rows: [ (1 to: 100)
				collect: [ :each | 
					{each.
					each asString.
					(each * 2)} ] ];
		rowsPerPagePossibilities: #(10 50 100 200)