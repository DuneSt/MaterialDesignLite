rendering
renderContentOn: html
	self renderSearchbarOn: html.
	html div
		id: (paginationWidgetId := html nextId);
		with: [ super renderContentOn: html ]