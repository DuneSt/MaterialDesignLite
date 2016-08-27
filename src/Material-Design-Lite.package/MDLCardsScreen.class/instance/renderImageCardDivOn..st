rendering
renderImageCardDivOn: html
	html mdlGrid
		class: 'examples';
		with: [ 
					html mdlLayoutSpacer.
					html mdlCell size: 3;
						with: [ self renderImageCardOn: html ].
					html mdlCell size: 3;
						with: [ self renderDateCardOn: html ].
					html mdlLayoutSpacer ].
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCell: [ html text: 'Image' ] size: 3.
		html mdlCell: [ html text: 'Event' ] size: 3.
		html mdlLayoutSpacer ].
	html preformatted with: [ html code class: 'smalltalk'; with: self imageCardCode ] .
	html preformatted with: [ html code class: 'smalltalk'; with: self eventCardCode ]