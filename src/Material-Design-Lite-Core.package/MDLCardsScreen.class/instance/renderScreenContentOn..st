rendering
renderScreenContentOn: html
	self render: self wideCards withCardSizeOf: 5 on: html.
	self render: self squareCards withCardSizeOf: 3 on: html.
	self render: self imageCards withCardSizeOf: 3 on: html