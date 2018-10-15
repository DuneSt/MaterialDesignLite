tests
testFirstPageInExtremCase
	component := self actualClass numberOfPages: 0.
	component firstPage.
	self assert: component currentPage equals: 0