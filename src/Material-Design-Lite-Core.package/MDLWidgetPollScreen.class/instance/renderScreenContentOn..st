rendering
renderScreenContentOn: html
	self render: (OrderedDictionary with: 'Poll Widget' -> #renderPollOn:) withCardSizeOf: 4 on: html