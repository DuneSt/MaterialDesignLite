as yet unclassified
renderImageCardDivOn: html
	html mdlGrid
		class: 'mdl-typography--text-center';
		with: [ 
					html mdlCellDesktop: 3 tablet: 2 phone: 2.
					html
						mdlCellDesktop: 3
						tablet: 2
						phone: 2
						with: [ self renderImageCardOn: html ].
					html
						mdlCellDesktop: 3
						tablet: 2
						phone: 2
						with: [ self renderDateCardOn: html ].
					html mdlCellDesktop: 3 tablet: 2 phone: 2.
					html mdlCellDesktop: 3 tablet: 2 phone: 2.
					html
						mdlCellDesktop: 3
						tablet: 2
						phone: 2
						with: [ html text: 'Image' ].
					html
						mdlCellDesktop: 3
						tablet: 2
						phone: 2
						with: [ html text: 'Event' ] ].
	html preformatted with: [ html code class: 'smalltalk'; with: self imageCardCode ] .
	html preformatted with: [ html code class: 'smalltalk'; with: self eventCardCode ]