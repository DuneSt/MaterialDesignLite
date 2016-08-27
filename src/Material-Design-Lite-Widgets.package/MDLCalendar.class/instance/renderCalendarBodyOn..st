as yet unclassified
renderCalendarBodyOn: html
	html
		table: [ 
			self renderDaysOn: html.
			self renderNumbersOn: html ]