javascript
jsUpdateDate: aDate on: html
	^ html jQuery ajax
		callback: [ callback value: aDate.
			self updateCalendarDayWith: aDate ];
		onComplete: (self jsOnCompleteScriptOn: html)