tests
testDecreaseNegativeCount
	poll negativeCount: 10.
	poll decreaseNegativeCount.
	self assert: poll negativeCount equals: 9