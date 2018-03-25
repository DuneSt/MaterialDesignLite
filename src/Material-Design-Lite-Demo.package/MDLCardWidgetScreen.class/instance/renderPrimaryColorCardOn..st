demos
renderPrimaryColorCardOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				primaryColorTitle: 'Card widget example';
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)