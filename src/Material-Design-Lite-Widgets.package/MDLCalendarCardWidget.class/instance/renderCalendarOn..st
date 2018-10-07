rendering
renderCalendarOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				class: 'mdl-calendar-widget';
				addProperties: properties;
				primaryColorTitle: self calendar printDateForHeader;
				addTextContainer: [ self renderCalendarContentOn: html ];
				yourself)