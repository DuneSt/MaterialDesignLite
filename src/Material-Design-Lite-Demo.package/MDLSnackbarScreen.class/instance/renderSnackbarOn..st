demos
renderSnackbarOn: html
	| snackbar |
	snackbar := (html mdlSnackbarWithId: html nextId)
		message: 'Color of the button changed';
		actionText: 'undo';
		action: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''''';
		timeout: 2000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		id: html lastId;
		onClick: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''#'' + Math.floor(Math.random() * 0xFFFFFF).toString(16)' js;
		with: 'Show snackbar'