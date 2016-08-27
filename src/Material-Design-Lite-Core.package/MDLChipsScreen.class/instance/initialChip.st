code
initialChip
	^ 'Initial Chip'
		-> [ :html | 
			html mdlChip
				deleteCallback: [ 'Component deleted' crLog ];
				with: [ 
							html mdlChipInitial
								hexColor: '009587';
								with: 'C'.
							html text: 'Example Chip' ] ]