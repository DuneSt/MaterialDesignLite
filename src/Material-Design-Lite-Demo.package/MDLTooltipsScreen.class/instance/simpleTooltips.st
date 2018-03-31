sections
simpleTooltips
	^ OrderedDictionary new
		add: 'Simple' -> #renderSimpleTooltipOn:;
		add: 'Large' -> #renderLargeTooltipOn:;
		yourself