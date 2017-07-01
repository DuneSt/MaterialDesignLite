code
renderRightTooltipOn: html
	html mdlIcon
		id: html nextId;
		with: 'print'.
	html mdlTooltip
		right;
		for: html lastId;
		with: 'Print'