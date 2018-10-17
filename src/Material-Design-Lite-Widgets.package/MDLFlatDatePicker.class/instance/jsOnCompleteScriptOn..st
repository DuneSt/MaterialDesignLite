javascript
jsOnCompleteScriptOn: html
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ];
		onComplete: self jsOnCompleteScript