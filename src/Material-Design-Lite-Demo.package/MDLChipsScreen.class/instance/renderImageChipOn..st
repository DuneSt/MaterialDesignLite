code
renderImageChipOn: html
	html mdlChip
		deleteCallback: [ 'Component deleted' crLog ];
		with: [ 
					html mdlChipImage
						url: (MDLDemoLibrary urlOf: 'chipImageJpg');
						altText: 'Profile image'.
					html mdlChipText: 'Example Chip' ]