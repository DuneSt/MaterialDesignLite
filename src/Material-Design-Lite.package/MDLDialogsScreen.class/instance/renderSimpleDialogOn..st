rendering
renderSimpleDialogOn: html
	| idButtonOpen2 |
	idButtonOpen2 := 'mdl_demo_second_dialog_open'.
	html div
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlButton
						id: idButtonOpen2;
						raised;
						rippleEffect;
						with: 'Show second dialog'.
					html paragraph: 'Simple dialog' ].
	html mdlDialog
		openButtonId: idButtonOpen2;
		with: [ 
					html mdlDialogTitle: 'Good job !'.
					html mdlDialogContent: [ html paragraph with: 'You managed to open the dialog' ] ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'| idButtonOpen |
idButtonOpen := ''mdl_demo_second_dialog_open''.

html mdlButton
	id: idButtonOpen;
	raised;
	rippleEffect;
	with: ''Show second dialog''.
	
html mdlDialog
	openButtonId: idButtonOpen;
	with: [ html mdlDialogTitle: ''Good job !''.
		html mdlDialogContent: [ html paragraph with: ''You managed to open the dialog'' ] ]' ]