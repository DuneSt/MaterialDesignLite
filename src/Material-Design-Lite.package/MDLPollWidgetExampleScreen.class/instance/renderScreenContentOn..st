rendering
renderScreenContentOn: html
	html
		render:
			(MDLCardWidget new
				class: 'mdl-card-poll-demo';
				addTitle: self widgetClass name level: 2;
				shadow: 2;
				addTextContainer: [ html render: self widgetClass new ];
				yourself)