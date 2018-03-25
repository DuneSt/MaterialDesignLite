demos
renderBorderedActionsCardOn: html
	html
		render:
			(MDLCardWidget new
				shadow: 2;
				title: 'Card widget example' level: 2;
				addTextContainer: (String loremIpsum: 100);
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)