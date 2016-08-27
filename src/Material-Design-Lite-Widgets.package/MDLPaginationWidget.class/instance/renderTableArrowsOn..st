rendering
renderTableArrowsOn: html
	self
		renderButtonWithIcon: 'keyboard_arrow_left'
		callbackMethod: #goToPreviousPage
		disabled: currentPage = 1
		on: html.
	html
		text:
			(String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: currentPage greaseString;
						nextPutAll: ' / ';
						nextPutAll: groups size greaseString ]).
	self
		renderButtonWithIcon: 'keyboard_arrow_right'
		callbackMethod: #goToNextPage
		disabled: currentPage = groups size
		on: html