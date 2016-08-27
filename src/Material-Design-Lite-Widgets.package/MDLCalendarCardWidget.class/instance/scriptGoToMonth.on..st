private-rendering
scriptGoToMonth: aMonth on: html
	^ html jQuery ajax
		callback: [ self goToMonth: aMonth ];
		onComplete: (self onCompleteScriptOn: html)