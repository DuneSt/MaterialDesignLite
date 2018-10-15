tests
testLastPageInExtremCase
	component := self actualClass numberOfPages: 0.
	component lastPage.
	self assert: component currentPage equals: 0