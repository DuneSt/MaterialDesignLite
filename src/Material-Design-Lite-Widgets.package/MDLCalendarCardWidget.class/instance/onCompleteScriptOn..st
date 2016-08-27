private
onCompleteScriptOn: html
	^ JSScript new
		add: ((html jQuery id: calendarId) load html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]);
		yourself