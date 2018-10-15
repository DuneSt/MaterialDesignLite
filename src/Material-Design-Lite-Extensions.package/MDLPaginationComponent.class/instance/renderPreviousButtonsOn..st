rendering
renderPreviousButtonsOn: html
	self
		renderButtonWithIconNamed: #first_page
		callback: [ self firstPage ]
		disabledIf: self currentPage = 1
		on: html.
	self
		renderButtonWithIconNamed: #keyboard_arrow_left
		callback: [ self previousPage ]
		disabledIf: self currentPage = 1
		on: html