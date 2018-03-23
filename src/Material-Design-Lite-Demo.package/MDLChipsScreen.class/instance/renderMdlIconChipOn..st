demos
renderMdlIconChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
			html mdlIcon
				chipIcon;
				with: #accessibility.
			html mdlChipText: 'Example Chip' ]