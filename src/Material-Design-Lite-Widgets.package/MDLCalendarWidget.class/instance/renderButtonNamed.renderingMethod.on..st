private-rendering
renderButtonNamed: aString renderingMethod: aSymbol on: html
	html mdlButton
		rippleEffect;
		onClick:
			(((html jQuery id: calendarId) find: '.mdl-card__supporting-text') load
				html: [ :ajaxHtml | self perform: aSymbol with: ajaxHtml ]);
		with: aString