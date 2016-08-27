rendering
renderContentOn: html
	| openButtonId closeButtonId |
	closeButtonId := html nextId.
	(html brush: buttonBrush)
		id: (openButtonId := html nextId);
		raised;
		rippleEffect;
		with: buttonName.
	(html brush: dialogBrush)
		id: html nextId;
		openButtonId: openButtonId;
		closeButtonId: closeButtonId;
		with: [ 
					title ifNotNil: [ html mdlDialogTitle: title ].
					html mdlDialogContent: content.
					html
						mdlDialogActions: [ 
							actions ifNotNil: [ html render: actions ].
							html mdlButton
								id: closeButtonId;
								with: closeButtonName ] ]