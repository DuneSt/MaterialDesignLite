code
mdlIconChip
	^ 'Iconned Chip'
		-> [ :html | 
			html mdlChip
				deleteCallback: [ 'Component deleted' crLog ];
				with: [ 
							html mdlIcon
								chipIcon;
								with: #accessibility.
							html text: 'Example Chip' ] ]