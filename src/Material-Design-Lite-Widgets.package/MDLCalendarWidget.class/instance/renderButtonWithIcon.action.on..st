private-rendering
renderButtonWithIcon: anIcon action: aSymbol on: html
	html
		mdlCellDesktop: 2
		tablet: 1
		phone: 1
		with: [ html mdlButton
				onClick:
					(html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete:
							((html jQuery id: self id) load
								html: [ :ajaxHtml | self renderCalendarOn: ajaxHtml ]));
				rippleEffect;
				style: 'color: rgba(0,0,0,0.7)';
				icon: anIcon ]