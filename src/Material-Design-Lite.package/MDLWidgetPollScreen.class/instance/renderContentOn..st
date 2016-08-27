rendering
renderContentOn: html
	html
		render:
			(MDLCardWidget new
				class: 'mdl-card-poll-demo';
				title: 'Poll widget';
				shadow: 2;
				addTextContainer: [ html render: MDLPollWidget new ];
				yourself)