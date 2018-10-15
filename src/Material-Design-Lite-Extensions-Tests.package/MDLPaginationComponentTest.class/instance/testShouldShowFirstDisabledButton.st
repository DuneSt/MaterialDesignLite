tests
testShouldShowFirstDisabledButton
	component firstPage.
	self deny: component shouldShowFirstDisabledButton.
	component
		adjacentsPagesToShow: 3;
		currentPage: 4.
	self deny: component shouldShowFirstDisabledButton.
	component currentPage: 5.
	self assert: component shouldShowFirstDisabledButton.
	component adjacentsPagesToShow: 4.
	self deny: component shouldShowFirstDisabledButton