rendering
renderContentOn: html
	self ensureId: html.
	html div
		id: self id;
		class: 'mdl-pagination';
		with: [ self renderPaginationComponentOn: html ]