rendering
renderScreenContentOn: html
	html paragraph: 'Self-contained pieces of paper with data'.
	self renderWideCardDivOn: html.
	self renderSquareCardDivOn: html.
	self renderImageCardDivOn: html