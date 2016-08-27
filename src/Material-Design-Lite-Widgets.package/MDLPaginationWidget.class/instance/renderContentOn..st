rendering
renderContentOn: html
	html div
		id: (widgetId := html nextId);
		class: 'mdl-pagination-widget';
		with: [ self renderTableOn: html ]