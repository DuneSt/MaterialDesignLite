demos
renderSnackbarOn: html
	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Color of the button changed';
		actionText: 'Undo';
		action: 'document.querySelector("#snackbar-button").style.backgroundColor = ""';
		timeout: 2000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		id: 'snackbar-button';
		onClick: 'document.querySelector("#snackbar-button").style.backgroundColor = "#" + Math.floor(Math.random() * 0xFFFFFF).toString(16)' js;
		with: 'Show snackbar'