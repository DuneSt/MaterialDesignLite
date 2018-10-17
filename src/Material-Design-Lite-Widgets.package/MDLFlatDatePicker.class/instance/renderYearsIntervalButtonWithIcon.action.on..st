private-rendering
renderYearsIntervalButtonWithIcon: anIcon action: aSymbol on: html
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick: (((html jQuery id: self id) find: '.mdl-card__supporting-text') load html: [ :ajaxHtml | self perform: aSymbol. self renderYearsOn: ajaxHtml ]);
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				icon: anIcon ]