code
renderRemovableChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: 'Example Chip'