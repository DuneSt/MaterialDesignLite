subElements
renderSnackbarOn: html
	| snackbar |
	html break.
	snackbar := html mdlSnackbarWithId: 'mdl-demo-snackbar'
		message: 'Color of the button changed'
		actionText: 'undo'
		action: 'document.querySelector(''#snackbar-button'').style.backgroundColor = '''''
		timeout: 2000.

	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		id: 'snackbar-button';
		onClick: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''#'' + Math.floor(Math.random() * 0xFFFFFF).toString(16)';
		with: 'Show snackbar'.
		
	html break.
	html break.
		
	snackbar := html mdlSnackbarWithId: 'mdl-demo-snackbarSimple'
		message: 'I am an information'.

	(html mdlSnackbarButtonFor: snackbar)
		raised;
		rippleEffect;
		with: 'Show simple snackbar'