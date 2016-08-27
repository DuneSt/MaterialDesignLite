rendering
renderIconButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								icon;
								with: [ html mdlIcon: 'mood' ] ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								icon;
								primaryColor;
								with: [ html mdlIcon: 'mood' ] ]
						size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Icon button' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Colored' size: 1.
					html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smalltalk'; with: self iconButtonCode ].
	html preformatted: [ html code class: 'smalltalk'; with: self iconColoredButtonCode ]			