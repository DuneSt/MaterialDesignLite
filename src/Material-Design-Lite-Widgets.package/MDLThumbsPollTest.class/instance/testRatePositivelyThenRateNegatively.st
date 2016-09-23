tests
testRatePositivelyThenRateNegatively
	| object oldPositiveCount oldNegativeCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll positivelyVotedBy: object.
	thumbsPoll negativelyVotedBy: object.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount + 1