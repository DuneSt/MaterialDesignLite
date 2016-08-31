code
renderComplexDialogOn: html
	| idButtonOpen idButtonClose |
	html mdlButton
		id: (idButtonOpen := 'mdl_demo_dialog_open');
		raised;
		rippleEffect;
		with: 'Show dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: (idButtonClose := 'mdl_demo_dialog_close');
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
			html mdlDialogActions: [
				html mdlButton: 'Agree'.
				html mdlButton
					id: idButtonClose;
					with: 'Disagree' ] ]