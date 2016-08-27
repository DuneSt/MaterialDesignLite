rendering
renderScreenContentOn: html
	html paragraph: 'Modal windows for dedicated user input.'.
	self renderSimpleDialogOn: html.
	html break.
	html break.
	self renderComplexDialogOn: html