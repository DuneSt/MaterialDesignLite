as yet unclassified
renderColoredFabButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								colored;
								with: '+' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								colored;
								rippleEffect;
								with: '+' ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Colored FAB' size: 2.
					html mdlCell: 'With ripple' size: 2.
					html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton
	fab;
	colored;
	with: ''+''.

html mdlButton
	fab;
	colored;
	rippleEffect;
	with: ''+''' ]