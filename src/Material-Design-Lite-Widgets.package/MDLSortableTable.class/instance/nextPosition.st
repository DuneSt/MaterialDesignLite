actions
nextPosition
	position + elementsToShow < rowsCache size
		ifTrue: [ self position: position + elementsToShow ]