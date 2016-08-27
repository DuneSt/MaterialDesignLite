initialization
initialize
	super initialize.
	position := 1.
	rows := #().
	header := #().
	unsortedRows := #().
	rowsPerPagePossibilities := #(10 50 100).
	selectable := false