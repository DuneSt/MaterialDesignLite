rendering
renderContentOn: html

	html render: self report.
	
	html div 
		class: 'form-actions'; 
		with: [
			html anchor
				class: 'btn' ;
				callback: [ self close ] ;
				with: 'Close' ]