tests
testElementsDisplayListWithLastElementSelected
	list elements: (1 to: list listMaxSize * 2 ).
	list selectedEntity: list listMaxSize * 2.
	self assert: list elementsDisplayList size equals: list listMaxSize