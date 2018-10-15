rendering
renderNextButtonsOn: html
	self
		renderButtonWithIconNamed: #keyboard_arrow_right
		callback: [ self nextPage ]
		disabledIf: self currentPage = self numberOfPages
		on: html.
	self
		renderButtonWithIconNamed: #last_page
		callback: [ self lastPage ]
		disabledIf: self currentPage = self numberOfPages
		on: html