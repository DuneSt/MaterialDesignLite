rendering
renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html
	html mdlButton
		icon;
		rippleEffect;
		class:
			(aBoolean
				ifTrue: [ 'disable' ]);
		onClick:
			(aBoolean
				ifFalse: [ html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete: ((html jQuery id: widgetId) load html: [ :ajaxHtml | self renderTableOn: html ]) ]);
		with: [ html mdlIcon: aString ]