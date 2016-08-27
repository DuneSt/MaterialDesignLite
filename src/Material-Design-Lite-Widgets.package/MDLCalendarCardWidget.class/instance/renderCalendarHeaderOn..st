private-rendering
renderCalendarHeaderOn: html
	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.
	self renderDateOn: html.
	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html