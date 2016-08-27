rendering
renderComplexDialogOn: html
	| idButtonOpen idButtonClose |
	idButtonOpen := 'mdl_demo_dialog_open'.
	idButtonClose := 'mdl_demo_dialog_close'.
	html div
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlButton
						id: idButtonOpen;
						raised;
						rippleEffect;
						with: 'Show dialog'.
					html paragraph: 'Dialog with buttons' ].
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: idButtonClose;
		with: [ 
					html mdlDialogTitle: 'Good job !'.
					html mdlDialogContent: [ html paragraph with: 'You have not managed to click the button' ].
					html
						mdlDialogActions: [ 
							html mdlButton: 'Agree'.
							html mdlButton
								id: idButtonClose;
								with: 'Disagree' ] ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with:
						'| idButtonOpen idButtonClose  |
idButtonOpen := ''mdl_demo_dialog_open''.
idButtonClose := ''mdl_demo_dialog_close''.

html mdlButton
	id: idButtonOpen;
	raised;
	rippleEffect;
	with: ''Show dialog''.
	
html mdlDialog
	openButtonId: idButtonOpen;
	closeButtonId: idButtonClose;
	with: [ 
		html mdlDialogTitle: ''Good job !''.
		html mdlDialogContent: [ html paragraph with: ''You have not managed to click the button'' ].
		html mdlDialogActions: [ 
			html mdlButton: ''Agree''.
			html mdlButton
				id: idButtonClose;
				with: ''Disagree'' ] ]' ]