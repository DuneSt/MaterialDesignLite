rendering
renderButtonExampleOn: html
	html
		preformatted: [ html code
				class: 'smalltalk';
				with:
					'html mdlButton
	raised;
	accentColor;
	openDialogWithId: self rootDialogOpenId;
	onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
	with: ''Open dialog''' ].
	html mdlButton
		raised;
		accentColor;
		openDialogWithId: self rootDialogOpenId;
		onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
		with: 'Open dialog'