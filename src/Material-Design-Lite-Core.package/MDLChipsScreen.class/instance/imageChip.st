code
imageChip
	^ 'Image Chip'
		-> [ :html | 
			html mdlChip
				deleteCallback: [ 'Component deleted' crLog ];
				with: [ 
							html mdlChipImage
								url: (MDLDemoLibrary urlOf: 'chipImageJpg');
								altText: 'Profile image'.
							html text: 'Example Chip' ] ]