accessing
updateBlock: aBlock
	self assert: aBlock numArgs = 2 description: 'The update block should take 2 parameters. The first one is a stream and the second a html canvas. '.

	updateBlock := aBlock