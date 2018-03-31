javascript
jsOnCompleteScriptOn: html
	^ (html jQuery id: calendarId) load
		html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ];
		onComplete: (self onCompleteScript ifNil: [ '' ])