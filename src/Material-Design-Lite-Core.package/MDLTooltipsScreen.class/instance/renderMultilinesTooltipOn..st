code
renderMultilinesTooltipOn: html
	html mdlIcon
		id: html nextId;
		with: 'share'.
	html mdlTooltip
		for: html lastId;
		with: [ html text: 'Share your content'.
			html break.
			html text: 'via social media' ]