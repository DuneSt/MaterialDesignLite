code
removableChip
	^ 'Deletable Chip'
		-> [ :html | 
			html mdlChip
				deleteCallback: [ 'Component deleted' crLog ];
				with: 'Example Chip' ]