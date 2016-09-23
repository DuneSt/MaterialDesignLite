accessing
simpleChips
	^ OrderedDictionary new
		add: 'Simple Chip' -> #renderSimpleChipOn:;
		add: 'Deletable Chip' -> #renderRemovableChipOn:;
		add: 'Deletable Ajax Chip' -> #renderAjaxRemovableChipOn:;
		yourself