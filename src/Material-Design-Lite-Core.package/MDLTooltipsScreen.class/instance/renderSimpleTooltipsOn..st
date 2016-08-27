rendering
renderSimpleTooltipsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlIcon
								id: 'tt1';
								with: 'add'.
							html mdlTooltip
								for: 'tt1';
								with: 'Follow' ]
						size: 2.
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlIcon
								id: 'tt2';
								with: 'print'.
							html mdlTooltip
								large;
								for: 'tt2';
								with: 'Print' ]
						size: 2.
					html mdlLayoutSpacer ].
	html
		mdlGrid: [ 
			html mdlLayoutSpacer.
			html mdlCell: 'Simple' size: 2.
			html mdlLayoutSpacer.
			html mdlCell: 'Large' size: 2.
			html mdlLayoutSpacer ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self tooltip1Code ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self tooltip2Code ]