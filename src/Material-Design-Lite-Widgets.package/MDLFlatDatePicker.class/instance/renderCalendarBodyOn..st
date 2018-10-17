rendering
renderCalendarBodyOn: html
	html table
		class: 'mdl-textfield--full-width';
		with: [ self renderDaysOn: html.
			self renderWeeksOn: html ]