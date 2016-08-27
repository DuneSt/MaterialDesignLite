rendering
renderContentOn: html
	|openButtonId closeButtonId| 
	openButtonId := html nextId.
	closeButtonId := html nextId.
	html mdlButton
		id: openButtonId;
		raised;
		rippleEffect;
		with: buttonName.
	html mdlDialog
		openButtonId: openButtonId;
		closeButtonId: closeButtonId;
		with: [ 
					title ifNotNil: [ html mdlDialogTitle: title ].
					html mdlDialogContent: content.
					html mdlDialogActions: [ 
							actions ifNotNil: [ html render: actions ].
							html mdlButton
								id: closeButtonId;
								with: closeButtonName ] ]