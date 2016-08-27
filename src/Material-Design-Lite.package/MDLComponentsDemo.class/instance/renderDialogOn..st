subElements
renderDialogOn: html
	| idButtonOpen idButtonClose |
	idButtonOpen := 'mdl-demo-dialog-open'.
	idButtonClose := 'mdl-demo-dialog-close'.
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
								with: 'Disagree' ] ]