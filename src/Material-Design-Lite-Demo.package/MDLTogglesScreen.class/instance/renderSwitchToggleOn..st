rendering
renderSwitchToggleOn: html
	html heading
		level5;
		class: 'section-title';
		with: 'Switch toggle'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlSwitchContainer
								rippleEffect;
								for: 'switch-toggle-1';
								with: [ 
											html mdlSwitch
												value: true;
												id: 'switch-toggle-1'.
											html mdlSwitchLabel: 'On / Off' ] ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlSwitchContainer
								rippleEffect;
								for: 'switch-toggle-2';
								with: [ 
											html mdlSwitch id: 'switch-toggle-2'.
											html mdlSwitchLabel: 'On / Off' ] ]
						size: 1.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Switch on' size: 1.
			html mdlLayoutSpacer.
			html mdlCell: 'Switch off' size: 1.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self iconToggle1Code ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self iconToggle2Code ]