rendering
renderContentOn: html
	| closeButtonId |
	self ensureId: html.
	(html brush: self buttonBrush)
		id: self id;
		bePush;
		raised;
		rippleEffect;
		with: self buttonName.
	(html brush: self dialogBrush)
		id: html nextId;
		openButtonId: self id;
		closeButtonId: (closeButtonId := html nextId);
		with: [ self title ifNotNil: [ :t | html mdlDialogTitle: t ].
			html mdlDialogContent: self content.
			html
				mdlDialogActions: [ self actions ifNotNil: [ :acts | html render: acts ].
					html mdlButton
						id: closeButtonId;
						bePush;
						with: self closeButtonName ] ]