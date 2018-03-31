sections
complexeTooltips
	^ OrderedDictionary new
		add: 'Rich' -> #renderRichTooltipOn:;
		add: 'Multiple Lines' -> #renderMultilinesTooltipOn:;
		yourself