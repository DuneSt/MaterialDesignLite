tests
testAddPositiveVote
	self assert: pollWidget model positiveCount equals: 0.
	pollWidget addPositiveVote.
	self assert: pollWidget model positiveCount equals: 1.