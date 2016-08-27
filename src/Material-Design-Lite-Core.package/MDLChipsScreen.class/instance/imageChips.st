accessing
imageChips
	^ OrderedDictionary new
		add: self mdlIconChip;
		add: self imageChip;
		add: self initialChip;
		add: self initialColorChip;
		yourself