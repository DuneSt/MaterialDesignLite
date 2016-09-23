rendering
renderContentOn: html
	html render: self report.
	html mdlCardActions
		with: [ html anchor
				callback: [ self close ];
				with: [ html mdlButton raised with: 'Close' ] ]