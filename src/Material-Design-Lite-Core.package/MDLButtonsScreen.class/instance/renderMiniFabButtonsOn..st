rendering
renderMiniFabButtonsOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								miniFab;
								with: '+' ]
						size: 1.
						html mdlLayoutSpacer.
					html
						mdlCell: [ 
							html mdlButton
								fab;
								miniFab;
								colored;
								with: '+' ]
						size: 1.
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
					html mdlLayoutSpacer.
					html mdlCell: 'Mini FAB' size: 1.
					html mdlLayoutSpacer.
					html mdlCell: 'Colored' size: 1.
					html mdlLayoutSpacer ].
	html preformatted: [ html code class: 'smmaltalk'; with: self miniFabButtonCode ].
	html preformatted: [ html code class: 'smmaltalk'; with: self miniFabColoredButtonCode ]