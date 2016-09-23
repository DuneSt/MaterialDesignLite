private-rendering
scriptUpdateDate: aDate on: html
	^ html jQuery ajax
		callback: [ self updateCalendarDayWith: aDate ];
		onComplete:
			((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ])