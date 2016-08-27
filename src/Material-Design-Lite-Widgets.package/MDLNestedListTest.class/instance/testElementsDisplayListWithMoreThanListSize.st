tests
testElementsDisplayListWithMoreThanListSize
	list elements: (1 to: list listMaxSize * 2 ).
	self assert: list elementsDisplayList size equals: list listMaxSize