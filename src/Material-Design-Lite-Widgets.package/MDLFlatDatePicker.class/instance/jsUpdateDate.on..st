javascript
jsUpdateDate: aDate on: html
	^ html jQuery ajax
		callback: [ callback value: aDate.
			self currentDate: aDate ];
		onComplete: (self jsOnCompleteScriptOn: html)