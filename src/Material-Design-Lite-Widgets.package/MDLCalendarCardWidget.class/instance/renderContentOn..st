rendering
renderContentOn: html
	self ensureId: html.
	html div
		id: self id;
		with: [ self renderCalendarOn: html ]