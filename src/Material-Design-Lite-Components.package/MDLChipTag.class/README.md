I am a component to create a MDL chip.

Description
-------------------

A MDL chip represent complex entities in small blocks, such as a contact.

I only implement the closed part and not the open one. This will be implemented later. (If I have time or someone else do it ;) ) .

I can render some text. 
I can be deletable if you give me a block to do delete myself.
I can have a little icon (a MDL icon or an image or an initial).

Public API and Key Messages
-----------------

- #deleteCallback: aBlock							Make the chip deletable.
- #ajaxDeleteCallback: aBlock 						Execute a callback and delete the chip in the page with refresh.
- #ajaxDeleteCallback: aBlock successHook: aString 	Same as before but you can add js on the success of the ajax request.

Examples
------------------

	"A simple Chip"
	html mdlChip: 'Example Chip'.
	
	"A Chip with a deleteIcon"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: 'Example Chip'.
	
	"A Chip with a ajax deleteIcon"
	html mdlChip
		ajaxDeleteCallback: [ self deleteSelectedComponent ];
		with: 'Example Chip'.
	
	"A Chip with a MDLIcon"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlIcon
						chipIcon;
						with: #accessibility.
					html text: 'Example Chip' ].
		
	"A Chip with an image"
	html mdlChip
		deleteCallback: [ self deleteSelectedComponent ];
		with: [ 
					html mdlChipImage
						url: 'https://lh4.googleusercontent.com/-ToY4At__mZ4/AAAAAAAAAAI/AAAAAAAAAF0/Ah1JqF_XDcc/photo.jpg?sz=128';
						altText: 'Profile image'.
					html text: 'Example Chip' ].
		
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
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	removeUrl:		<aWAUrl>	The URL of the callback to remove the chip
