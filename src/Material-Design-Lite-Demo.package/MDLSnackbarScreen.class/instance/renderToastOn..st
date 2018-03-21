rendering
renderToastOn: html
	html div
		class: 'centered-content';
		class: 'examples';
		with: [ 
					| snackbar |
					snackbar := html mdlSnackbar
						message: 'Action finished.';
						timeout: 3000;
						yourself.
					(html mdlSnackbarButtonFor: snackbar)
						raised;
						rippleEffect;
						with: 'Show toast'.
					html paragraph: 'Toast' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: self toastCode ]