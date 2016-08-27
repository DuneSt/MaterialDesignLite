as yet unclassified
renderSpinnersOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
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
						'html mdlIconBadge
	dataBadge: ''1'';
	overlap;
	with: ''account_box''.
html mdlIconBadge
	dataBadge: ''♥'';
	overlap;
	with: ''account_box''' ]