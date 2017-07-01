rendering
renderScreenContentOn: html
	self render: self synchronizedProgressBar withCardSizeOf: 3 on: html.
	self render: self hiddenProgressBar withCardSizeOf: 4 on: html.