code
initialColorChip
	^ 'Initial with Color Chip'
		-> [ :html | 
			html mdlChip
				deleteCallback: [ 'Component deleted' crLog ];
				with: [ 
							html mdlChipInitial
								color: (MDLColor tint: #red code: '200');
								with: 'CF'.
							html text: 'Example Chip' ] ]