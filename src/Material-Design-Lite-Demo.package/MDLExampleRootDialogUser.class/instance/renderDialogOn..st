rendering
renderDialogOn: html
	html mdlDialogTitle: 'Good job !'.
	html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
	html
		mdlDialogActions: [ html mdlButton: 'Agree'.
			html mdlButton
				id: self rootDialogCloseId;
				with: 'Disagree' ]