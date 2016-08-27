as yet unclassified
renderIndeterminateProgressBarOn: html
	html div
		class: 'mdl-typography--text-center';
		with: [ html mdlProgressBar style: 'margin: auto;'; indeterminate.
			html paragraph: 'Indeterminate progress bar' ].
	html
		code: [ html preformatted
				with:
					'html mdlProgressBar indeterminate' ]