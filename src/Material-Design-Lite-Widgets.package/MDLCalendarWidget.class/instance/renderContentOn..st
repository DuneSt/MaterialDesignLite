rendering
renderContentOn: html
	self ensureId: html.
	html div
		id: self id;
		class: self containerClass;
		with: [ self renderCalendarOn: html ]