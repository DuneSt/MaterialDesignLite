rendering
renderContentOn: html
	fullDateId := html nextId.
	calendarContentId := html nextId.
	html div
		id: (calendarId := html nextId);
		with: [ self renderCalendarCardOn: html ]