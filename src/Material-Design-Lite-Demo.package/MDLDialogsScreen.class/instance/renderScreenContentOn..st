rendering
renderScreenContentOn: html
	self
		render: self simpleDialog on: html;
		render: self complexDialog on: html