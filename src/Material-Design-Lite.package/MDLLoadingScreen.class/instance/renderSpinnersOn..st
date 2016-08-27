rendering
renderSpinnersOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html div
								class: 'centered-content';
								with: [ html mdlSpinner active ].
							html paragraph: 'Spinner' ]
						size: 2.
					html
						mdlCell: [ 
							html div
								class: 'centered-content';
								with: [ html mdlSpinner active singleColor ].
							html paragraph: 'Spinner single Colored' ]
						size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self spinner1Code ].
						html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						self spinner2Code ].