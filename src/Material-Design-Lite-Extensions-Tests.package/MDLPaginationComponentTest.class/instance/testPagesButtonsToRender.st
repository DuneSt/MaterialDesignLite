tests
testPagesButtonsToRender
	component currentPage: 10.
	component adjacentsPagesToShow: 2.
	self assert: component pagesButtonsToRender equals: (8 to: 12).
	component adjacentsPagesToShow: 4.
	self assert: component pagesButtonsToRender equals: (6 to: 14)