rendering
renderFlatButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: [ html mdlButton: 'Button' ] size: 2.
					html
						mdlCell: [ 
							html mdlButton
								rippleEffect;
								with: 'Button' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								disabled;
								with: 'Button' ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Flat button' size: 2.
					html mdlCell: 'With ripple' size: 2.
					html mdlCell: 'Disabled' size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton: ''Button''.

html mdlButton
	rippleEffect;
	with: ''Button''.
	
html mdlButton
	disabled;
	with: ''Button''' ]