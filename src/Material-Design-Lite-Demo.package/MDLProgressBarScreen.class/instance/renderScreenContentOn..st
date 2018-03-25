rendering
renderScreenContentOn: html
	self
		render: self synchronizedProgressBar on: html;
		render: self hiddenProgressBar on: html