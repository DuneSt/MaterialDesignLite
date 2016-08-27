rendering
renderContentOn: html
	html div
		class: 'screen-content';
		style: 'margin: 32px';
		with: [ html
				render:
					(MDLCardWidget new
						shadow: 2;
						addTitle: 'MDL Card' level: 2;
						addTextContainer:
							'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis pharetra eros, at feugiat est efficitur sit amet. Integer vitae.';
						addTextContainer:
							'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis pharetra eros, at feugiat est efficitur sit amet. Integer vitae.';
						addAction: [ html mdlButton
								rippleEffect;
								with: 'Submit' ];
						addAction: [ html text: 'Lorem ispum' ]) ]