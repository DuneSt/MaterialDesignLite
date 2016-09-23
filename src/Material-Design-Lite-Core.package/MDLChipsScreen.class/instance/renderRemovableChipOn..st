code
renderRemovableChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ html mdlChipText: 'Example Chip' ]