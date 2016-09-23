code
renderContactChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipContact
						hexColor: '009587';
						with: 'C'.
					html mdlChipText: 'Example Chip' ]