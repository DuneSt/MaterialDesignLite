rendering
renderButtonWithIcon: aString callbackMethod: aSymbol on: html
	html mdlButton
		icon;
		rippleEffect;
		class:
			(currentPage = groups size
				ifTrue: [ 'disable' ]);
		onClick:
			(html jQuery ajax
				callback: [ self perform: aSymbol ];
				onComplete: ((html jQuery id: widgetId) load html: [ :ajaxHtml | self renderTableOn: html ]));
		with: [ html mdlIcon: aString ]