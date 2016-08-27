as yet unclassified
renderColoredButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								primaryColor;
								raised;
								with: 'Button' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								accentColor;
								with: 'Button' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								accentColor;
								rippleEffect;
								with: 'Button' ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Colored button' size: 2.
					html mdlCell: 'Accent colored' size: 2.
					html mdlCell: 'With Ripples' size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton raised;
	primaryColor;
	with: ''Button''.

html mdlButton raised;
	accentColor;
	with: ''Button''.
	
html mdlButton raised;
	accentColor;
	rippleEffect;
	with: ''Button''' ]