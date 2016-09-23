code
renderSimpleDialogOn: html
	| idButtonOpen2 |
	html mdlButton
		id: (idButtonOpen2 := 'mdl_demo_second_dialog_open');
		raised;
		rippleEffect;
		with: 'Show second dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen2;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]