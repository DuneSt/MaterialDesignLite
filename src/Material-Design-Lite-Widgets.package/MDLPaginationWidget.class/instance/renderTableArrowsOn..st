rendering
renderTableArrowsOn: html
	self
		renderButtonWithIcon: 'keyboard_arrow_left'
		callbackMethod: #goToPreviousPage
		disabled: currentPage = 1
		on: html.
	self
		renderButtonWithIcon: 'keyboard_arrow_right'
		callbackMethod: #goToNextPage
		disabled: currentPage = groups size
		on: html