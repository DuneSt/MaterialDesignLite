tests
testPositivelyVotedIncreasePositiveCount
	| object oldPositiveCount |
	object := Object new.
	oldPositiveCount := thumbsPoll positiveCount.
	thumbsPoll positivelyVotedBy: object.
	self assert: thumbsPoll positiveCount equals: oldPositiveCount + 1