as yet unclassified
renderIconButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								icon;
								with: [ html mdlIcon: 'mood' ] ]
						size: 2.
					html
						mdlCell: [ 
							html mdlButton
								icon;
								primaryColor;
								with: [ html mdlIcon: 'mood' ] ]
						size: 2.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Icon button' size: 2.
					html mdlCell: 'Colored' size: 2.
					html mdlLayoutSpacer ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'html mdlButton
	icon;
	with: [ html mdlIcon: ''mood'' ].
	
html mdlButton
	icon;
	primaryColor
	with: [ html mdlIcon: ''mood'' ]' ]