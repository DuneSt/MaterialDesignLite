javascript
jsGoToMonth: aMonth on: html
	^ html jQuery ajax
		callback: [ self goToMonth: aMonth ];
		onComplete: (self jsOnCompleteScriptOn: html)