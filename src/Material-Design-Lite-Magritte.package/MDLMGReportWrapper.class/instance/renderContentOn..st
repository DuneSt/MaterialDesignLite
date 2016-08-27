rendering
renderContentOn: html

	html render: self report.
	
	html mdlCardActions 
		with: [
			html anchor with: [ 
				html mdlButton raised
					callback: [ self close ] ;
					with: 'Close' ] ]