initialization
initialize
	super initialize.
	elementsToShow := 10.
	position := 1.
	rows := #().
	header := #().
	unsortedRows := #().
	width := '500px'.
	rowsPerPagePossibilities := #(10 50 100).
	selectable := false