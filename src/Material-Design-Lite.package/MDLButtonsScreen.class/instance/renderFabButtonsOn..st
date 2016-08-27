as yet unclassified
renderFabButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								with: '+' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								rippleEffect;
								with: '+' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								disabled;
								with: '+' ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Plain FAB' size: 2.
					html mdlCell: 'With ripple' size: 2.
					html mdlCell: 'Disabled' size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton
	fab;
	with: ''+''.

html mdlButton
	fab;
	rippleEffect;
	with: ''+''.
	
html mdlButton
	fab;
	disabled;
	with: ''+''' ]