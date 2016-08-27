private-rendering
renderYersIntervalButtonWithIcon: anIcon action: aSymbol on: html
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							(((html jQuery id: calendarId) find: '.mdl-supporting__text') load
								html: [ :ajaxHtml | self renderYearsOn: ajaxHtml ]));
				icon;
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				with: [ html mdlIcon: anIcon ] ]