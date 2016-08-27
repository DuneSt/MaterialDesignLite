as yet unclassified
renderSquareCardDivOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ self renderSquareCardOn: html ].
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ html text: 'Square' ] ].
	html code: [ html preformatted with: self squareCardCode ]