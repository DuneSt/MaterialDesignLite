rendering
renderContentOn: html
	self ensureId: html.
	html div
		id: self id;
		class: 'mdl-calendar';
		with: [ self renderCalendarOn: html ].
	callback ifNotNil: [ html hiddenInput callback: [ callback value: self currentDate ] ]