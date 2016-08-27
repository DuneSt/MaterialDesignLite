code
complexDialogCode 
	^ '| idButtonOpen idButtonClose  |
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
				with: ''Disagree'' ] ]'