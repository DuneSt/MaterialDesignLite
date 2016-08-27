rendering
renderContentOn: html
	html div
		id: (calendarId := html nextId);
		class: 'mdl-calendar';
		with: [ self renderCalendarOn: html ].
	callback ifNotNil: [ html hiddenInput callback: [ callback value: calendar currentDate ] ]