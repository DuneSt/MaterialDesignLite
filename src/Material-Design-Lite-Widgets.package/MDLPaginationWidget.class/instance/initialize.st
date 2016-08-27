initialization
initialize
	super initialize.
	pageSize := 10.
	currentPage := 1.
	headings := OrderedCollection new