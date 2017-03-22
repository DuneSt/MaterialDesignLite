accessing
simpleTooltips
	^ OrderedDictionary new
		add: 'Simple' -> #renderSimpleTooltipOn:;
		add: 'Large' -> #renderLargeTooltipOn:;
		yourself