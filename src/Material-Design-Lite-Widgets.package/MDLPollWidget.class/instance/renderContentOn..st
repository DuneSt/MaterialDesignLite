rendering
renderContentOn: html
	html div
		id: (pollWidgetId := html nextId);
		with:
				[ self renderPollButtonsOn: html ]