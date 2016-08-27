as yet unclassified
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ 
					html heading level5 with: 'Cards'.
					html paragraph: 'Self-contained pieces of paper with data'.
					self renderWideCardDivOn: html.
					self renderSquareCardDivOn: html.
					self renderImageCardDivOn: html ]