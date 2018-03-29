rendering
renderCalendarOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				addProperties: properties;
				primaryColorTitle: self calendarCurrentDateString;
				addTextContainer: [ self renderCalendarContentOn: html ];
				yourself)