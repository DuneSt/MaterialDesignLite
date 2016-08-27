as yet unclassified
renderMiniFabButtonsOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ html mdlLayoutSpacer.
			html
				mdlCell: [ html mdlButton
						fab;
						miniFab;
						with: '+' ]
				size: 2.
			html
				mdlCell: [ html mdlButton
						fab;
						miniFab;
						colored;
						with: '+' ]
				size: 2.
			html mdlLayoutSpacer ].
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ html mdlLayoutSpacer.
			html mdlCell: 'Mini FAB' size: 2.
			html mdlCell: 'Colored' size: 2.
			html mdlLayoutSpacer ].
	html
		code: [ html preformatted
				with:
					'html mdlButton
	fab;
	miniFab;
	with: ''+''.

html mdlButton
	fab;
	colored;
	miniFab;
	with: ''+''' ]