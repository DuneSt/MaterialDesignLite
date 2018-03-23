demos
renderComplexDialogOn: html
	| idButtonOpen idButtonClose |
	html mdlButton
		openDialogWithId: (idButtonOpen := html nextId); "This will not generate an id on the button and allow you to have multiple buttons to open the same dialog."
		raised;
		rippleEffect;
		with: 'Show dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: (idButtonClose := html nextId);
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
			html
				mdlDialogActions: [ html mdlButton: 'Agree'.
					html mdlButton
						id: idButtonClose;
						with: 'Disagree' ] ]