rendering
renderScreenContentOn: html
	html paragraph: 'Useful informations on hover.'.
	self renderSimpleTooltipsOn: html.
	self renderComplexTooltipsOn: html