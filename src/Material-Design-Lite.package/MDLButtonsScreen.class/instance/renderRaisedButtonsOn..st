as yet unclassified
renderRaisedButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								with: 'Button' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								rippleEffect;
								with: 'Button' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								raised;
								disabled;
								with: 'Button' ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Plain raised' size: 2.
					html mdlCell: 'With ripple' size: 2.
					html mdlCell: 'Disabled' size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton
	raised;
	with: ''Button''.

html mdlButton
	raised;
	rippleEffect;
	with: ''Button''.
	
html mdlButton
	raised;
	disabled;
	with: ''Button''' ]