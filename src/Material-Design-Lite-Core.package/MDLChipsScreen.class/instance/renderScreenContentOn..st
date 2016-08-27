rendering
renderScreenContentOn: html
	self render: self simpleChips withCardSizeOf: 2 on: html.
	self render: self imageChips withCardSizeOf: 2 on: html