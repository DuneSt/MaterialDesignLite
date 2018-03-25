demos
renderCardOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				title: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				yourself)