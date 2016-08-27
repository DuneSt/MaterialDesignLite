rendering
renderScreenContentOn: html
	html
		render:
			(MDLCardWidget new
				class: 'mdl-widget-demo-card';
				shadow: 2;
				addTitle: self title level: 2;
				addTextContainer:
					'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis pellentesque lacus eleifend lacinia...';
				addAction: [ html mdlButton
						colored;
						rippleEffect;
						with: 'Get started' ];
				actionsBordered;
				yourself)