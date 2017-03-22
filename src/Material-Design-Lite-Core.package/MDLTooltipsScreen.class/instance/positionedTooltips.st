accessing
positionedTooltips
	^ OrderedDictionary new
		add: 'Top' -> #renderTopTooltipOn:;
		add: 'Right' -> #renderRightTooltipOn:;
		add: 'Bottom' -> #renderBottomTooltipOn:;
		add: 'Left' -> #renderLeftTooltipOn:;
		yourself