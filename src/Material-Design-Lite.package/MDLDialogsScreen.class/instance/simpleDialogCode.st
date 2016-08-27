code
simpleDialogCode 
	^ '| idButtonOpen |
idButtonOpen := ''mdl_demo_second_dialog_open''.

html mdlButton
	id: idButtonOpen;
	raised;
	rippleEffect;
	with: ''Show second dialog''.
	
html mdlDialog
	openButtonId: idButtonOpen;
	with: [ html mdlDialogTitle: ''Good job !''.
		html mdlDialogContent: [ html paragraph with: ''You managed to open the dialog'' ] ]'