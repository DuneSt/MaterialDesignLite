tests
testPrimaryColorSecondaryColor
	app primaryColor: MDLColor pink secondaryColor: MDLColor orange.
	self assert: app colors equals: 'pink-orange'