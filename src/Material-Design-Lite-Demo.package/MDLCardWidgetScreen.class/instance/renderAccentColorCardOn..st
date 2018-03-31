demos
renderAccentColorCardOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				accentColorTitle: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)