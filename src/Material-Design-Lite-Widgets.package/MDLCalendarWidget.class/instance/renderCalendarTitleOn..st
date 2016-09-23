rendering
renderCalendarTitleOn: html
	html div
		class: 'mdl-calendar__title mdl-color--primary mdl-color-text--primary-contrast';
		with: [ html heading
				level3;
				with: self calendarCurrentDateString ]