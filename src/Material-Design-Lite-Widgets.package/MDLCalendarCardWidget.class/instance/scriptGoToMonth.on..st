private-rendering
scriptGoToMonth: aMonth on: html
	^ html jQuery ajax
		callback: [ self goToMonth: aMonth ];
		onComplete: ((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ])