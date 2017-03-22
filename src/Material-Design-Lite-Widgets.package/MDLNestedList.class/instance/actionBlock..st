accessing
actionBlock: aBlock
	self
		assert: aBlock argumentCount = 1
		description:
			'This block must take one argument; it will be the clicked entity in the list'.
	actionBlock := aBlock