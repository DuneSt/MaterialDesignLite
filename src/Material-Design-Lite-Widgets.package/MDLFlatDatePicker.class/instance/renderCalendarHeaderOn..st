rendering
renderCalendarHeaderOn: html
	self renderButtonWithIcon: 'navigate_before' action: #goToPreviousMonth on: html.
	self renderCurrentMonthOn: html.
	self renderButtonWithIcon: 'navigate_next' action: #goToNextMonth on: html