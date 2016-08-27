rendering
renderIndeterminateProgressBarOn: html
	html div
		class: 'examples';
		with: [ 
					html mdlProgressBar
						style: 'margin: auto;';
						indeterminate.
					html paragraph: 'Indeterminate progress bar' ].
	html
		preformatted: [ 
			html code
				class: 'smalltalk';
				with: 'html mdlProgressBar indeterminate' ]