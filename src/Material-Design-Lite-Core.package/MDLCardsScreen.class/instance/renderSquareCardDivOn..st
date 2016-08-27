rendering
renderSquareCardDivOn: html
	html div
		class: 'examples';
		with: [ 
			self renderSquareCardOn: html .
			html text: 'Square' ].
	html preformatted with: [ html code class: 'smalltalk'; with: self squareCardCode ]