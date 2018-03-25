demos
renderToastOn: html
	| snackbar |
	snackbar := html mdlSnackbar
		message: 'Action finished.';
		timeout: 3000;
		yourself.
	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show toast'