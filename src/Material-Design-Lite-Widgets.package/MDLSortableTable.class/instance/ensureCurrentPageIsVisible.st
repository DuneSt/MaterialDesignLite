rendering
ensureCurrentPageIsVisible
	"In some case the elements to show can change. If we currently are in a page that does not exist anymore since the number of elements decreased, we should reset the position."

	self position > rowsCache size
		ifTrue: [ self position: 1 ]