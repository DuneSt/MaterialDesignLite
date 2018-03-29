rendering
renderChipExampleOn: html
	html
		preformatted: [ html code
				class: 'smalltalk';
				with:
					'html mdlChip
	onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
	with: [ html mdlChipContact
			hexColor: ''009587'';
			with: ''C''.
		html mdlChipText: ''Click me'' ]' ].
	html mdlChip
		onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
		with: [ html mdlChipContact
				hexColor: '009587';
				with: 'C'.
			html mdlChipText: 'Click me' ]