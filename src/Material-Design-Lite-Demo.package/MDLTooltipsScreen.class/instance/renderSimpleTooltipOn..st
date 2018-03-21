code
renderSimpleTooltipOn: html
	html mdlIcon
		id: html nextId;
		with: 'add'.
	html mdlTooltip
		for: html lastId;
		with: 'Follow'