rendering
renderScreenContentOn: html
	self
		render: self simpleCardWidget on: html;
		render: self titleColorCardWidget on: html