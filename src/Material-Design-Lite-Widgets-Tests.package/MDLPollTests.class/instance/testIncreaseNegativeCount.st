tests
testIncreaseNegativeCount
	poll negativeCount: 10.
	poll increaseNegativeCount.
	self assert: poll negativeCount equals: 11