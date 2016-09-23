rendering
renderContentOn: html
	html mdlCard
		style: 'overflow: visible; margin: auto; padding: 15px;';
		shadow: 2;
		with: [ html mdlCardTitle: [ html mdlCardTitleText: 'Material Design with Magritte' level: 2 ].
			html render: self menu ]