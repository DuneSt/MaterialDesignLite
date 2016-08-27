rendering
renderRegularBadgeOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlIconBadge
								dataBadge: '1';
								overlap;
								with: 'account_box' ]
						size: 2.
					html
						mdlCell: [ 
							html mdlIconBadge
								dataBadge: '♥';
								overlap;
								with: 'account_box' ]
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