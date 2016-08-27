subElements
renderDialogOn: html
	| idButtonOpen idButtonClose idButtonOpen2  |
	idButtonOpen := 'mdl_demo_dialog_open'.
	idButtonClose := 'mdl_demo_dialog_close'.
	html mdlButton
		id: idButtonOpen;
		raised;
		rippleEffect;
		with: 'Show dialog'.
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: idButtonClose;
		with: [ 
					html mdlDialogTitle with: 'Good job !'.
					html mdlDialogContent with: [ html paragraph with: 'You managed to click the button' ].
					html mdlDialogActions
						with: [ 
							html mdlButton: 'Agree'.
							html mdlButton
								id: idButtonClose;
								with: 'Disagree' ] ].
	html break.
	html break.
	idButtonOpen2 := 'mdl_demo_second_dialog_open'.
	html mdlButton
		id: idButtonOpen2;
		raised;
		rippleEffect;
		with: 'Show second dialog'.
	html mdlDialog
		openButtonId: idButtonOpen2;
		with: [ 
					html mdlDialogTitle with: 'Good job !'.
					html mdlDialogContent with: [ html paragraph with: 'You managed to open the second dialog' ] ]