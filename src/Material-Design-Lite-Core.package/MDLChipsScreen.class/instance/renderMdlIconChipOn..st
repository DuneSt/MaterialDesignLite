code
renderMdlIconChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlIcon
						chipIcon;
						with: #accessibility.
					html text: 'Example Chip' ]