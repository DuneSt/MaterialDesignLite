rendering
initialize
	super initialize.
	self initializeTable.
	date := Date today.
	self selectedEntity: Boolean