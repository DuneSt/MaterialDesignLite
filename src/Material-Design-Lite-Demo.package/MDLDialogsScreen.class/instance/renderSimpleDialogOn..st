demos
renderSimpleDialogOn: html
	html mdlButton
		id: html nextId;
		bePush;
		raised;
		rippleEffect;
		with: 'Show second dialog'.
		
	html mdlDialog
		openButtonId: html lastId;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]