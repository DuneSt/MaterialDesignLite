tests
testElementsDisplayListWithLessThanListSize
	list elements: (1 to: list listMaxSize).
	self assert: list elementsDisplayList size equals: list listMaxSize