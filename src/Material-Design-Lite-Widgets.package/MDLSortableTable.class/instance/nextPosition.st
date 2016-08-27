rendering
nextPosition
	position + elementsToShow < self rows size
		ifTrue: [ self position: position + elementsToShow ]