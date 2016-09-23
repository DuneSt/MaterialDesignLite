tests
testRateNegativelyByObjectThenRatePositively
	| object oldPositiveCount oldNegativeCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll negativelyVotedBy: object.
	thumbsPoll positivelyVotedBy: object.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount + 1