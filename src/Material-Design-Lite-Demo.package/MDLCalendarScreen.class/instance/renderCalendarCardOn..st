demos
renderCalendarCardOn: html
	html
		render:
			(MDLCalendarCardWidget new
				callback: [ :day | selectedDay := day ];
				currentDate: selectedDay;
				onCompleteScript: ((html jQuery id: 'selectedDay2') load html: [ :r | r text: 'Selected day: ' , selectedDay asString ]);
				yourself).
	html break.
	html div
		id: 'selectedDay2';
		mdlTypographyFontBold;
		mdlTextColorPrimary;
		with: 'Selected day: ' , selectedDay asString