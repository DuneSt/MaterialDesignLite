rendering
renderCheckboxOn: html
	html heading
		level5;
		class: 'section-title';
		with: 'CHECKBOX'.
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlCheckboxContainer
								rippleEffect;
								for: 'checkbox-1';
								with: [ 
											html mdlCheckbox
												value: true;
												id: 'checkbox-1'.
											html mdlCheckboxLabel: 'Checkbox' ] ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlCheckboxContainer
								rippleEffect;
								for: 'checkbox-2';
								with: [ 
											html mdlCheckbox
												value: false;
												id: 'checkbox-2'.
											html mdlCheckboxLabel: 'Checkbox' ] ]
						size: 1.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Check on' size: 1.
			html mdlLayoutSpacer.
			html mdlCell: 'Check off' size: 1.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self checkbox1Code ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self checkbox2Code ]