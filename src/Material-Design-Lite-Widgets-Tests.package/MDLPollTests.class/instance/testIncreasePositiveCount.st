tests
testIncreasePositiveCount
	poll positiveCount: 10.
	poll increasePositiveCount.
	self assert: poll positiveCount equals: 11