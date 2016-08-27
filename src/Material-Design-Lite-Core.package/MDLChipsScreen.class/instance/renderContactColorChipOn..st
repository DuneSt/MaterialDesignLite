code
renderContactColorChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						color: (MDLColor tint: #red code: '200');
						with: 'CF'.
					html text: 'Example Chip' ]