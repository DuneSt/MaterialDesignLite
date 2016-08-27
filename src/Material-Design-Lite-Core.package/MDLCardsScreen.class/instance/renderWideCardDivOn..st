rendering
renderWideCardDivOn: html
	html div
		class: 'examples';
		with: [ 
			self renderWideCardOn: html.
			html text: 'Wide' ].
	html preformatted with: [ html code class: 'smalltalk'; with: self wideCardCode ]