as yet unclassified
renderWideCardDivOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ self renderWideCardOn: html ].
					html
						mdlCellDesktop: 12
						tablet: 8
						phone: 4
						with: [ html text: 'Wide' ] ].
	html preformatted
		with: [ 
			html code
				class: 'smalltalk';
				with: self wideCardCode ]