rendering
renderContentOn: html
	html div
		class: 'mdl-pagination-widget';
		with: [ self renderTableOn: html ]