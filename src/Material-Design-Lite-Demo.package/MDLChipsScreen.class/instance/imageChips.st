sections
imageChips
	^ OrderedDictionary new
		add: 'Iconned Chip' -> #renderMdlIconChipOn:;
		add: 'Image Chip' -> #renderImageChipOn:;
		add: 'Contact Chip' -> #renderContactChipOn:;
		add: 'Contact with Color Chip' -> #renderContactColorChipOn:;
		yourself