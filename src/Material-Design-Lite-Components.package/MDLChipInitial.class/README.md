I am a simple tag to display an initial on a mdl chip.

Examples:

	"A Chip with an initial and an hard coded color"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipInitial
						hexColor: '009587';
						with: 'C'.
					html text: 'Example Chip' ].
		
	"A Chip with an initial and a color"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipInitial
						color: (MDLColor tint: #red code: '200');
						with: 'CF'.
					html text: 'Example Chip' ]
 