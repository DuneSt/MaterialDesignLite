demos
renderBottomTooltipOn: html
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		bottom;
		for: html lastId;
		with: 'Print'