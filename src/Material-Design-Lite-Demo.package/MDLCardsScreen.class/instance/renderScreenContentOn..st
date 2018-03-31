rendering
renderScreenContentOn: html
	self
		render: self wideCards on: html;
		render: self squareCards on: html;
		render: self imageCards on: html