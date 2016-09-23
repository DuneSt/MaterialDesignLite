accessing
rowsPerPagePossibilities: aCollection
	rowsPerPagePossibilities := aCollection.
	aCollection ifNotEmpty: [ self elementsToShow: aCollection first ]