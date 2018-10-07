tests
testDecreasePositiveCount
	poll positiveCount: 10.
	poll decreasePositiveCount.
	self assert: poll positiveCount equals: 9