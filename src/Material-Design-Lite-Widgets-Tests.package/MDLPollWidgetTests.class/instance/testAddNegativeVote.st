tests
testAddNegativeVote
	self assert: pollWidget model negativeCount equals: 0.
	pollWidget addNegativeVote.
	self assert: pollWidget model negativeCount equals: 1.