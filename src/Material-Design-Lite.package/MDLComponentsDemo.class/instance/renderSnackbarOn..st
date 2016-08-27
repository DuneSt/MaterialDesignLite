subElements
renderSnackbarOn: html
	| snackbar |
	snackbar := html mdlSnackbar
		id: 'mdl-demo-snackbar';
		message: 'Hello friend, i am a snackbar';
		actionText: 'Undo';
		timeout: 2000;
		yourself.

	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show snackbar'