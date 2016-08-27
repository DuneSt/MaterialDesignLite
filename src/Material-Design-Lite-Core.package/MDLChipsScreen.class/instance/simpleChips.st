accessing
simpleChips
	^ OrderedDictionary new
		add: self simpleChip;
		add: self removableChip;
		add: self ajaxRemovableChip;
		yourself