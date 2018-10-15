tests
testShouldShowLastDisabledButton
	component lastPage.
	self deny: component shouldShowLastDisabledButton.
	component
		adjacentsPagesToShow: 3;
		currentPage: self defaultNumberOfPages - 3.
	self deny: component shouldShowLastDisabledButton.
	component currentPage: self defaultNumberOfPages - 4.
	self assert: component shouldShowLastDisabledButton.
	component adjacentsPagesToShow: 4.
	self deny: component shouldShowLastDisabledButton