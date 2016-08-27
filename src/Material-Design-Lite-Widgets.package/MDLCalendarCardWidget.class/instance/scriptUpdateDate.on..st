private-rendering
scriptUpdateDate: aDate on: html
	^ html jQuery ajax
		callback: [ self updateCalendarDayWith: aDate ];
		onComplete: (self onCompleteScriptOn: html)