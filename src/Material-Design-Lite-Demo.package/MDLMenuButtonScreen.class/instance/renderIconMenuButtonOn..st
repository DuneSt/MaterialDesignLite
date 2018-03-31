demos
renderIconMenuButtonOn: html
	html
		render:
			(MDLMenuButtonWidget new
				objectsPossibilities: #('Guillaume' 'Kévin' 'Anne' 'Cyril' 'Olivier' 'Yann');
				buttonContent: [ :r | r mdlIcon: 'person' ];
				yourself)