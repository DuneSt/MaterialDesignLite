I am a tag to display an image on a mdl chip.

Example:

	"A Chip with an image"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipImage
						url: 'https://lh4.googleusercontent.com/-ToY4At__mZ4/AAAAAAAAAAI/AAAAAAAAAF0/Ah1JqF_XDcc/photo.jpg?sz=128';
						altText: 'Profile image'.
					html text: 'Example Chip' ].