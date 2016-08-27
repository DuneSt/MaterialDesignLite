subElements
renderSnackbarOn: html
	html div
		class: 'centered-content';
		class: 'mdl-typography--text-center';
		with:
			[ | snackbar |
			snackbar := (html mdlSnackbarWithId: 'mdl-demo-snackbar')
				message: 'Color of the button changed';
				actionText: 'undo';
				action: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''''';
				timeout: 2000;
				yourself.
			(html mdlSnackbarButtonFor: snackbar)
				raised;
				rippleEffect;
				id: 'snackbar-button';
				onClick: 'document.querySelector(''#snackbar-button'').style.backgroundColor = ''#'' + Math.floor(Math.random() * 0xFFFFFF).toString(16)';
				with: 'Show snackbar'.
			html paragraph: 'Snackbar' ].
	html
		preformatted:
			[ html code
				class: 'smalltalk';
				with:
					'| snackbar |
snackbar := (html mdlSnackbarWithId: ''mdl-demo-snackbar'')
	message: ''Color of the button changed'';
	actionText: ''undo'';
	action: ''document.querySelector(''''#snackbar-button'''').style.backgroundColor = '''''''''';
	timeout: 2000;
	yourself.
	
(html mdlSnackbarButtonFor: snackbar)
	raised;
	rippleEffect;
	id: ''snackbar-button'';
	onClick: ''document.querySelector(''''#snackbar-button'''').style.backgroundColor = ''''#'''' + Math.floor(Math.random() * 0xFFFFFF).toString(16)'';
	with: ''Show snackbar''' ]